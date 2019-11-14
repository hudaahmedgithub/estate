<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Category extends Model
{
	protected $table = 'categories';
 
	protected $guarded=['id'];
	protected $fillable=['name'];
	
    public function bus()
	{
		return $this->hasMany('App\Bu');
	}
	
	 public function musers()
	{
		return $this->hasMany('App\Muser');
	}
}
