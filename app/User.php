<?php

namespace App;

use Illuminate\Notifications\Notifiable;
use Illuminate\Foundation\Auth\User as Authenticatable;

class User extends Authenticatable
{
    use Notifiable;

    protected $fillable = [
        'name', 'email', 'password','admin'
    ];

    protected $hidden = [
        'password', 'remember_token',
    ];
	
	public function getNameAttribute($value)
	{
		return ucfirst($value);
	}
	
	public function messages()
	{
		return $this->hasMany('App\Message');
	}
	
	public function isAdmin()
	{
		return $this->admin;
	}
	
	public function bus()
	{
		return $this->hasMany('App\Bu');
	}
	public function orders()
	{
	return $this->hasMany('App\Order','user_id','id');
	}
	public function musers()
	{
		return $this->hasMany('App\Muser');
	}
}
