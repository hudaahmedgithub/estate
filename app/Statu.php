<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Statu extends Model
{
    public function bus()
	{
		return $this->hasMany('App\Bu');
	}
}
