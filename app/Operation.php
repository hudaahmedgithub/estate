<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Operation extends Model
{
	 protected $table='operations';
	 protected $guarded=[];
   protected $fillable=['type'];
	
	public function bus()
	{
		return $this->hasMany('App\Bu');
	}
	
	public function musers()
	{
		return $this->hasMany('App\Muser');
	}
}
