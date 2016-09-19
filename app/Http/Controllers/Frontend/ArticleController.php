<?php namespace App\Http\Controllers\Frontend;

use App\Http\Requests;
use App\Http\Controllers\Controller;
use App\Http\Controllers\Frontend;

use Illuminate\Http\Request;
//use Illuminate\Routing\Controller;

use App\Models\Article;
use App\Models\Category;
use App;
use App\Models\Lang;

class ArticleController extends Controller {

	/**
	 * Display a listing of the resource.
	 *
	 * @return Response
	 */
	public function index($lang, $type = 'hotel')//$lang, $type)
	{
		$currentLang = Lang::where('lang', $lang)->first();
        //dd($currentLang);
        if (!$currentLang){
            abort(404);
        }
        App::setLocale($lang);
        //App::langId = $currentLang->id;

        $category = Category::where('link', $type)
            ->first();
        //dd($category->getTranslate('name'));
		$articles = $category->articles;


      // dd( $articles->first()->getTranslate('title'));

		return view('frontend.'.$type, ['articles' => $articles, 'category' => $category]);
        
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
		//
	}

	/**
	 * Update the specified resource in storage.
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function update($id)
	{
		//
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
