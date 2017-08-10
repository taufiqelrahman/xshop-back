<?php
namespace App;
use Illuminate\Database\Eloquent\Model;

Class Order extends Model {

	protected $table = 'orders';
    protected $dates = ['deleted_at'];

	protected $fillable = array('member_id','orderstatus_id');

	public function orderItems()
    {
        return $this->belongsToMany('App\Product')->withPivot('amount');
    }

    public function orderUsers()
    {
    	return $this->belongsTo('App\User','member_id');
    }

    public function orderStatus()
    {
    	return $this->belongsTo('App\OrderStatus','orderstatus_id');
    }
}