<?php

/*Route::get('/', function () {
    return view('welcome');
});*/
Route::get('/shop', 'HomeController@shop')->name('shop');

Route::get('/category/{id}','HomeController@showCates');

Route::get('/contact', function () {
    return view('front/contact');
});

Route::get('/cart', 'CartController@index');

Route::put('/cart/update/{id}', 'CartController@update');

Route::get('/cart/remove/{id}', 'CartController@destroy');

Route::get('/cart/addItem/{id}', 'CartController@addItem');

Route::get('/productDetail/{id}','HomeController@detailPro');

Route::get('/checkout', 'CheckoutController@index');

Route::post('/formvalidate','CheckoutController@address');


Route::get('/wishlist', 'HomeController@view_wishlist');

Route::post('/addWishlist','HomeController@addWishlist')->name('addWishlist');

Route::get('/removeWishList/{id}','HomeController@removeWishList');
Route::group(['middleware'=>'auth'],function(){
	Route::get('/profile', 'ProfileController@index');
	
	Route::get('/orders', 'ProfileController@orders');
	
	Route::get('/address', 'ProfileController@address');
	
	Route::post('/updateAddress', 'ProfileController@updateAddress');
	
	Route::get('/password', 'ProfileController@password');
	
	Route::put('/updatePassword', 'ProfileController@updatePassword');
});

Route::group(['prefix'=>'admin','middleware'=>['auth','admin']], function () {
    
	Route::get('/', function () {
    return view('admin/index');
});
	Route::resource('product','ProductController');
	Route::resource('category','CategoriesController');
});

Auth::routes();


Auth::routes(['register' => false]);

Route::get('/', 'HomeController@index')->name('home');

Route::resource('messages','MessageController');

Route::get('/k', 'BuController@showAll');

//Route::get('/i', 'BuController@showAll');

Route::get('/showb/{id}', 'BuController@showOne')->name('showb');

Route::get('/show/{id}', 'MuserController@showOne')->name('show');

Route::get('/own', 'BuController@own');

Route::get('/rent','BuController@rent');

Route::get('/ownm', 'MuserController@ownm');

Route::get('/rentm','MuserController@rentm');

Route::get('/addBu','BuController@userAddBu');

Route::get('/userShowBu','BuController@userShowBu');

Route::match(['GET','POST'],'/contact','ContactController@contact');

Route::resource('/buser', 'BuserController');

Route::resource('/muser', 'MuserController');

//Route::get('/muser/{id}/delete','MuserController@destroy');

Route::get('/buser/profile/{id}', 'BuserController@profile');

Route::post('/buser/updateprofile', 'BuserController@updateprofile');

Route::resource('/owner', 'OwnerController');

//Route::get('/contact','ContactController@contact');

Route::group(['middleware'=>['auth','admin']],function () {
	Route::get('/adminPanel', 'AdminController@index');
	
	Route::resource('/adminPanel/user', 'UsersController');
	
	Route::resource('/adminPanel/sitesetting', 'SiteSettingController');
	Route::get('/adminPanel/user/{id}/delete','UsersController@destroy');
	
	Route::resource('/adminPanel/bu', 'BuController');
	
   Route::get('/adminPanel/bu/{id}/delete','BuController@destroy');
	
	Route::get('/adminPanel/contact','ContactController@index');
	
    Route::get('/adminPanel/contact/{id}/show','ContactController@showContact');
		Route::get('/adminPanel/contact/{id}/delete','ContactController@destroy');
});

