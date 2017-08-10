<?php
namespace App;
use Illuminate\Database\Eloquent\Model;

class Cart extends Model {

	protected $table = 'carts';

	protected $fillable = array('member_id','product_id','amount');

	public function product(){
		return $this->belongsTo('App\Product','product_id');
	}
	
	// public static function GetProducts($member_id){
	// 	return Cart::where('member_id', $member_id)->get();
	// }

}