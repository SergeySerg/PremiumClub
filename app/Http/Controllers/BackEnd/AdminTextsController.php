<?php namespace App\Http\Controllers\Backend;

use App\Http\Requests;
use App\Http\Controllers\Controller;
use App\Http\Controllers\BackEnd;
//use Illuminate\Contracts\Routing\ResponseFactory;
use Illuminate\Http\Request;
//use Illuminate\Routing\Controller;
use Illuminate\Support\Facades\URL;
use App\Models\Article;
use App\Models\Category;
use App\Models\Lang;
use App\Models\Translate;
use App\Models\Text;
use App;
use Illuminate\Support\Facades\Response;
use Illuminate\Support\MessageBag;
use Storage;


class AdminTextsController extends Controller {

	/**
	 * Display a listing of the resource.
	 *
	 * @return Response
	 */
	public function index()
	{
		App::setLocale('ua');
		$admin_texts = Text::all();
		return view('backend.texts.list',[
			'admin_texts' => $admin_texts
			]);
	}

	/**
	 * Show the form for creating a new resource.
	 *
	 * @return Response
	 */
	public function create()
	{
		//
	}

	/**
	 * Store a newly created resource in storage.
	 *
	 * @return Response
	 */
	public function store()
	{
		//
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
	public function edit($id)
	{
		$langs = Lang::all();
		$admin_text = Text::where("id","=","$id")->first();
		return view('backend.texts.edit',[
			'admin_text'=>$admin_text,
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
	public function update(Request $request, $id)
	{
		$langs = Lang::all();
		/*foreach($langs as $lang){
			$this->validate($request, [
				'title_'.$lang['lang'] => 'required|max:255',

			]);
		}*/
		$admin_text = Text::where('id', '=', $id)->first();
		//dd($admin_text);
		$all = $request->all();
		$all = $this->prepareTextData($all);
		//dd($all);
		$admin_text->update($all);
		//$admin_text->description = $all('description');
		//$admin_text->attributes["description"] = $all('description');
		$admin_text->save();
		return response()->json([
			"status" => 'success',
			"message" => '������ ���������',
			"redirect" => URL::to('/admin30x5/texts')
		]);
	}

	private function prepareTextData($all){
		$langs = Lang::all();
		//$all['title'] = '';
		$all['description'] = '';
		//�������� �������� � ������ � � ����� ������� ����
		foreach($all as $key => $value){
			$all[$key] = trim($value);
		}
		//������������ ������� ���� (ua|ru|en)
		foreach($langs as $lang){
			//$all['title'] .= $all["title_{$lang['lang']}"] .'|';
			$all['description'] .= (isset($all["description_{$lang['lang']}"]) ? $all["description_{$lang['lang']}"] : '') .'|';

			//�������� ���������� ���� title_ua,title_ru,title_en � �. �.
			//unset($all["title_{$lang['lang']}"]);
			unset($all["description_{$lang['lang']}"]);

		}

		return $all;
	}
	/**
	 * Remove the specified resource from storage.
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function destroy($id)
	{
		//
	}

}
