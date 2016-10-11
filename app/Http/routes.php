<?php

/*
|--------------------------------------------------------------------------
| Application Routes
|--------------------------------------------------------------------------
|
| Here is where you can register all of the routes for an application.
| It's a breeze. Simply tell Laravel the URIs it should respond to
| and give it the controller to call when that URI is requested.
|
*/



Route::get('home', 'HomeController@index');//Для відображення результата після логування

Route::controllers([
	'auth' => 'Auth\AuthController',
	'password' => 'Auth\PasswordController',
]);

Route::get('/', 'Frontend\HomeController@index');

Route::group(['prefix'=>'admin30x5', 'middleware' => 'auth'], function(){
	Route::get('/','Backend\AdminDashboardController@index');

	Route::get('/articles/{type}','Backend\AdminArticlesController@index');//Вывод списка элементов
	Route::get('/articles/{type}/create','Backend\AdminArticlesController@create');//Вывод формы создания элемента
	Route::post('/articles/{type}/create','Backend\AdminArticlesController@store');//Сохранение элемента
	Route::get('/articles/{type}/{id}','Backend\AdminArticlesController@edit');//Вывод формы редакторирование элемента
	Route::put('/articles/{type}/{id}','Backend\AdminArticlesController@update');//Сохранение элемента после редактирования
	Route::delete('/articles/{type}/{id}','Backend\AdminArticlesController@destroy');//Удаление элемента

	Route::get('/texts','Backend\AdminTextsController@index');//Вывод списка
	Route::get('/texts/create','Backend\AdminTextsController@create');//Вывод формы создания элемента
	Route::post('/texts/create','Backend\AdminTextsController@store');//Сохранение элемента
	Route::delete('/texts/{id}','Backend\AdminTextsController@destroy');//Удаление элемента
	Route::get('/texts/{id}','Backend\AdminTextsController@edit');//Вывод формы редакторирование
	Route::put('/texts/{id}','Backend\AdminTextsController@update');//Сохранение после редактирования

});

Route::group(['middleware' => 'frontend.init'], function(){
	Route::get('/{lang}/booking', 'Frontend\BookingController@index');
	Route::get('/{lang}/{type?}', 'Frontend\ArticleController@index');
});
/*Route::post('/contact', function(){
	if (Request::ajax()){
		$user = array(
			'email' => Input::get('email')
		);
		$data = array(
			'name' => Input::get('name'),
			'email' => Input::get('email'),
			'message_body' => Input::get('message')
		);
		$rules = array(
			'name'  => 'required|max:50',
			'email' => 'required|email',
			'message_body' => 'required|min:6',
		);
		$validation = Validator::make($data, $rules);

		if ($validation->fails())
		{
			return Redirect::to('/')->withErrors($validation)->withInput();
		}


		Mail::send('emails.password', $data, function($message) use ($user) {
			$message->to('webtestingstudio@gmail.com', 'RS Staff')->subject('Новое сообщение ');
		});
		return Response::json(array('msg' => 'ok'));
	}
});*/
//Route::post('/contact','Frontend\ArticleController@sendEmailReminder');
Route::post('/contact', function(){
	if (Request::ajax()){
		$user = array(
			'email' => Input::get('email')
		);
		$data = array(
			'name' => Input::get('name'),
			'email' => Input::get('email'),
			'message_body' => Input::get('message')
		);
		dd($data);
		$rules = array(
			'name'  => 'required|max:50',
			'email' => 'required|email',
			'message_body' => 'required|min:6',
		);
		$validation = Validator::make($data, $rules);

		if ($validation->fails())
		{
			return Redirect::to('/')->withErrors($validation)->withInput();
		}


		Mail::send('emails.letter', $data, function($message) use ($user) {
			$message->to('webtestingstudio@gmail.com', 'RS Staff')->subject('Новое сообщение ');
		});
		return Response::json(array('msg' => 'ok'));
	}
});


