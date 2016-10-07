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


Route::controllers([
	'auth' => 'Auth\AuthController',
	'password' => 'Auth\PasswordController',
]);

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
	Route::get('/', 'Frontend\HomeController@index');
	Route::get('/{lang}/{type?}', 'Frontend\ArticleController@index');
});




