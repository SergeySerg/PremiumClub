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

Route::get('/', 'WelcomeController@index');

Route::get('home', 'HomeController@index');

Route::controllers([
	'auth' => 'Auth\AuthController',
	'password' => 'Auth\PasswordController',
]);
Route::group(['prefix'=>'admin30x5'], function()
{


	Route::get('/articles/{type}','BackEnd\AdminArticlesController@index');
	Route::get('/articles/{type}/create','BackEnd\AdminArticlesController@create');
	Route::post('/articles/{type}/create','BackEnd\AdminArticlesController@store');
	Route::get('/articles/{type}/{id}','BackEnd\AdminArticlesController@edit');
	Route::put('/articles/{type}/{id}','BackEnd\AdminArticlesController@update');
	Route::delete('/articles/{type}/{id}','BackEnd\AdminArticlesController@destroy');



});
//Route::get('/admin30x5/{type?}','WelcomeController@index');
Route::get('/{lang}/{type?}', 'Frontend\ArticleController@index');



