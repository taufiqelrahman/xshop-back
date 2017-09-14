<?php

namespace App\Api\V1\Controllers;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use JWTAuth;
use App\User;
use Dingo\Api\Routing\Helpers;

class UserController extends Controller
{
	use Helpers;
	public function getCurrentUser()
	{
			$currentUser = JWTAuth::parseToken()->authenticate();
	    $id=$currentUser->id;
	    $name=$currentUser->name;
	    $email=$currentUser->email;
	    $address=$currentUser->address;
	    $phone=$currentUser->phone;
	    
			return response()->json([
    		"id" => $id,
    		"name" => $name,
    		"email" => $email,
				"address" => $address,
				"phone" => $phone
    	]);
	}
}