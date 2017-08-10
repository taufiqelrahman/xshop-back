<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Product extends Model
{
	use SoftDeletes;
	
    protected $table = 'products';
    protected $dates = ['deleted_at'];

    protected $fillable = [
        'name',
        'price',
        'description',
        'type',
        'path',
        'jenis'
    ];

    public function cart(){
		return $this->hasMany('App\Cart');
	}
}
