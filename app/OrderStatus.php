<?php
namespace App;
use Illuminate\Database\Eloquent\Model;

Class OrderStatus extends Model {

  protected $table = 'orderstatus';
  protected $dates = ['deleted_at'];

  protected $fillable = array('name');

  public function orders()
  {
      return $this->belongsToMany('App\Order');
  }
}