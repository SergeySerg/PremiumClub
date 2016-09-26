<?php namespace App\Http\Controllers\BackEnd;

use App\Http\Requests;
use App\Http\Controllers\Controller;
use App\Http\Controllers\BackEnd;
//use Illuminate\Contracts\Routing\ResponseFactory;
use Illuminate\Http\Request;
//use Illuminate\Routing\Controller;

use App\Models\Article;
use App\Models\Category;
use App\Models\Lang;
use App\Models\Translate;
use App;
use Illuminate\Support\Facades\Response;


class AdminArticlesController extends Controller {

	/**
	 * Display a listing of the resource.
	 *
	 * @return Response
	 */
	//Action Вывода списка сущностей
	public function index($type = "hotel")
	{
		App::setLocale('ua');
		$admin_categories = Category::where("link","=","$type")->first();
		$admin_articles = $admin_categories->articles;
		return view('backend.articles.list', [
			'admin_categories'=>$admin_categories,
			'admin_articles'=>$admin_articles,
			'type'=>$type
		]);
	}

	/**
	 * Show the form for creating a new resource.
	 *
	 * @return Response
	 */
	//Action - форма создание элемента сущности
	public function create()
	{
		$langs = Lang::all();

		return view('backend.articles.edit',[
			'langs'=>$langs,
			'action_method' => 'post'
		]);
	}

	/**
	 * Store a newly created resource in storage.
	 *
	 * @return Response
	 */
	public function store(Request $request, $type)
	{
		$cat = Category::where('link','=',$type)->first();
		dd($cat);
		Category::create($request->all());
		return back()->with('message','Категория добавлена');
	}

	/**
	 * Display the specified resource.
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function show($id)
	{
		//
	}

	/**
	 * Show the form for editing the specified resource.
	 *
	 * @param  int  $id
	 * @return Response
	 */
	//Action - редактирование элемента сущности
	public function edit($type, $id)
	{
		$langs = Lang::all();
		$admin_article = Article::where("id","=","$id")->first();
		return view('backend.articles.edit',[
			'admin_article'=>$admin_article,
			'langs'=>$langs,
			'action_method' => 'put'
		]);
	}

	/**
	 * Update the specified resource in storage.
	 *
	 * @param  int  $id
	 * @return Response
	 */
	//Action - сохранения после редактирования элемента сущности
	public function update(Request $request, $type, $id)
	{
		$article = Article::where('id', '=', $id)->first();
		$all = $request->all();
		$langs = Lang::all();
		$all['title'] = '';
		$all['description'] = '';
		$all['meta_title'] = '';
		$all['meta_description'] = '';
		$all['meta_keywords'] ='';
		//Формирование массива типа (ua|ru|en)
		foreach($langs as $lang){
			$all['title'] .= $all["title_{$lang['lang']}"].'|';
			$all['description'] .= $all["description_{$lang['lang']}"].'|';
			$all['meta_title'] .= $all["meta_title_{$lang['lang']}"].'|';
			$all['meta_description'] .= $all["meta_description_{$lang['lang']}"].'|';
			$all['meta_keywords'] .= $all["meta_keywords_{$lang['lang']}"].'|';
			//Удаление переменных типа title_ua,title_ru,title_en и т. д.
			unset($all["title_{$lang['lang']}"]);
			unset($all["description_{$lang['lang']}"]);
			unset($all["meta_title_{$lang['lang']}"]);
			unset($all["meta_description_{$lang['lang']}"]);
			unset($all["meta_keywords_{$lang['lang']}"]);
		}
		//dd($article);
		$article->update($all);
		$article->save();
		return back()->with('message', 'Успішно змінено');
	}

	private function myValue($type){
	//
	}
	/**
	 * Remove the specified resource from storage.
	 *
	 * @param  int  $id
	 * @return Response
	 */
	//Action - удаления элемента сущности
	public function destroy($type, $id)
	{
		$article = Article::where('id', '=', $id)->first();
		if($article AND $article->delete()){
			return response()->json([
				"status" => 'success',
				"message" => 'Успешно удален'
			]);
		}
		else{
			return response()->json([
				"status" => 'error',
				"message" => 'Произошла ошибка при удалении'
			]);
		}
		//return $article->title;
		//return back()->with('message','Успішно видалено');
		//echo '{"message": "Успешно удален"}';

	}

}
