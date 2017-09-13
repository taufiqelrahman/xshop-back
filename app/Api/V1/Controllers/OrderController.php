<?php

namespace App\Api\V1\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use JWTAuth;
use App\Order;
use App\Product;
use DB;

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
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $this->validate($request, [
            'orderstatus_id' => 'required',
            'name' => 'required',
            'phone' => 'required',
            'address' => 'required',
            'payment' => 'required',
            'expedition' => 'required',
            'total' => 'required',
            'items' => 'required'
        ]);

        $currentUser = JWTAuth::parseToken()->authenticate();
        $id=$currentUser->id;

        $order = new order();
        $order['member_id'] = $id;
        $order['orderstatus_id'] = $request->orderstatus_id;
        $order['name'] = $request->name;
        $order['phone'] = $request->phone;
        $order['address'] = $request->address;
        $order['payment'] = $request->payment;
        $order['expedition'] = $request->expedition;
        $total = $request->total + rand(1,99);
        $order['total'] = $total;
        $order->save();

        foreach ($request->items as $item) {
            $order->orderItems()->attach($item['id'], 
                [
                    'amount' => $item['amount'],
                    'created_at' => DB::raw('now()')
                ]
            );
        }

        return response()->json([
            "acknowledge" => 1,
            "message" => 'This order has been successfully processed'
        ]);
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
