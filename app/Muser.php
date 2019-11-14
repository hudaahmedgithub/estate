<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Muser extends Model
{
	protected $table='musers';
   protected $guarded=['id'];
   protected $fillable=['price','operation_id', 'category_id','small_dis','large_dis', 'status','user_id','bu_place','phone','email','bu_name','image','country_id']; 
	
   	protected $appends = ['image_path'];


    public function getImagePathAttribute()
    {
        return asset('uploads/bu_images/' . $this->image);

    }
		
	public function user()
	{
		return $this->belongsTo('App\User');
	}
	
public function category()
	{
		return $this->belongsTo('App\Category');
	}
	public function operation()
	{
		return $this->belongsTo('App\Operation');
	}
	
	public function country()
	{
		return $this->belongsTo('App\Country');
	}
}
