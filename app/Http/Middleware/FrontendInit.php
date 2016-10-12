<?php namespace App\Http\Middleware;

use Closure;
use App;

use App\Models\Article;
use App\Models\Category;
use App\Models\Text;
use App\Models\Lang;
use League\Flysystem\Config;

class FrontendInit {

	/**
	 * Handle an incoming request.
	 *
	 * @param  \Illuminate\Http\Request  $request
	 * @param  \Closure  $next
	 * @return mixed
	 */
	public function handle($request, Closure $next)
	{
		// Get current lang object from db
		$currentLang = Lang::where('lang',"=", $request->lang)
			->first();

		if (!$currentLang){
			abort('404');//страница 404 в файлі .ENV ставим false и робим шаблон 404 стор
		}

		// Locale setting
		App::setLocale($request->lang);

		$hotel = Category::where('link','=', 'hotel')
			->first()
			->articles
			->first();
		$rooms = Category::where('link','=', 'rooms')
			->first()
			->articles;
		$services = Category::where('link','=', 'services')
			->first()
			->articles;

		$textsArray = Text::all();
		$texts = [];

		foreach($textsArray as $text){
			$texts[$text->id] = $text->getTranslate('description');
		}

		$version = config('app.version');

		// Share to views global template variables
		view()->share('langs', Lang::all());
		view()->share('hotel', $hotel);
		view()->share('rooms', $rooms);
		view()->share('services', $services);
		view()->share('texts', $texts);
		view()->share('version', $version);

		return $next($request);
	}

}
