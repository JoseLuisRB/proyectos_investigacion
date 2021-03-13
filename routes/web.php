<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});


Route::group(['prefix' => 'admin'], function () {
    Voyager::routes();
});


Route::resources([
    'admin/proyectos' => 'ProyectosController'
]);
Route::post('admin/personas/crear', 'ProyectosController@agregar_persona')->name('agregar_persona');


// =============Gráficos=============
Route::get('admin/reportes/graficos/pie', 'ReportesController@pie_index')->name('pie_index');
Route::post('admin/reportes/graficos/pie/generate', 'ReportesController@pie_generate')->name('pie_generate');
// ===================================