<?php

namespace App\Api\V1\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use JWTAuth;
use App\Order;

class OrderController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $currentUser = JWTAuth::parseToken()->authenticate();
        $id=$currentUser->id;

        $items = Order::with('orderItems')->with('orderStatus')->where('member_id', $id)->get();
        return response()->json([
    		"acknowledge" => 1,
    		"items" => $items
    	]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        // learn how to throw error
        // fix create API
        $this->validate($request, [
            'orderstatus_id' => 'required',
            'name' => 'required',
            'phone' => 'required',
            'address' => 'required',
            'payment' => 'required',
            'expedition' => 'required',
            'total' => 'required'
        ]);

        $currentUser = JWTAuth::parseToken()->authenticate();
        $id=$currentUser->id;
        
        $input['member_id'] = $id;
        $input['orderstatus_id'] = $request->orderstatus_id;
        $input['name'] = $request->name;
        $input['phone'] = $request->phone;
        $input['address'] = $request->address;
        $input['payment'] = $request->payment;
        $input['expedition'] = $request->expedition;
        $input['total'] = $request->total;
        order::create($input);
        
        return response()->json([
    		"acknowledge" => 1,
    		"message" => 'This order has been successfully processed'
    	]);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
