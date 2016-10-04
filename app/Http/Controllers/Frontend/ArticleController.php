<?php namespace App\Http\Controllers\Frontend;

use App\Http\Requests;
use App\Http\Controllers\Controller;
use App\Http\Controllers\Frontend;
//use Illuminate\Contracts\Routing\ResponseFactory;
use Illuminate\Http\Request;
//use Illuminate\Routing\Controller;

use App\Models\Article;
use App\Models\Category;
use App\Models\Lang;
use App;
use Illuminate\Support\Facades\Response;

class ArticleController extends Controller {

	/**
	 * Display a listing of the resource.
	 *
	 * @return Response
	 */
	public function index($lang, $type = 'hotel')//$lang, $type)
	{
		$currentLang = Lang::where('lang',"=", $lang)->first();
		//dd($currentLang);
		if (!$currentLang){
			abort('404');//страница 404 в файлі .ENV ставим false и робим шаблон 404 стор
		}

		App::setLocale($lang);

		$category_hotel = Category::where('link','=', 'hotel')
			->first();
		$hotel = $category_hotel->articles->first();

		$rooms = null;
		$services = null;
		$events = null;
		$contacts = null;

		switch($type){
            case 'hotel':
                $services = Category::where('link','=', 'services')
                    ->first()
                    ->articles;
                break;
			case 'rooms':
				$rooms = Category::where('link','=', 'rooms')
					->first()
                    ->articles;
				break;
			case 'services':
                $services = Category::where('link','=', 'services')
                    ->first()
                    ->articles;
				break;
			case 'events':
                $events = Category::where('link','=', 'events')
                    ->first()
                    ->articles;
				break;
			case 'contacts':
                $contacts = Category::where('link','=', 'contacts')
                    ->first()
                    ->articles;
				break;
		}

		return view('frontend.'.$type, [
			'hotel' => $hotel,
			'services' => $services,
			'events' => $events,
			'rooms' => $rooms,
			'contacts' => $contacts,
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
