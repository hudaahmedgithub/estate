<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Type extends Model
{
     public function bus()
	{
		return $this->hasMany('App\Bu');
	}
}
