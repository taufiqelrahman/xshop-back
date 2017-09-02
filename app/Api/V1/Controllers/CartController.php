<?php
namespace App\Api\V1\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\DB;
use Illuminate\Http\Request;
use JWTAuth;

use App\Cart;

class CartController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {   
        // if ($request->header('Authorization') != null) {
        $currentUser = JWTAuth::parseToken()->authenticate();
        $id=$currentUser->id;
        // $cart = Cart::get();
        // $items = Cart::where('member_id', $id)->get();

        $items = Cart::with('product')->where('member_id', $id)->get();
            // $carts = Cart::where('member_id', $id)->get();
        // }
        // else {
        //     $carts = Cart::GetProducts(0);
        //     // $carts = cart::where('member_id', 0)->get();
        // }
        // return $carts;
        return response()->json([
    		"acknowledge" => 1,
    		"items" => $items
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
        // $cart = new Cart();
        // cart::asd();
        $this->validate($request, [
            'product_id' => 'required',
            'amount' => 'required',
            // 'price' => 'required'
        ]);
        // dd($request->all());
        // print($request->body);
        // $header = $request->header('Authorization');
        // if ($header != null) {
        $currentUser = JWTAuth::parseToken()->authenticate();
        $id=$currentUser->id;
        // }
        // else {
        //     $id = 0;
        // }

        $item = cart::where('product_id',$request->product_id)->where('member_id',$id)->first();
        //print($item);
        if ($item != null) {
            $item['amount'] = $item['amount'] + $request->amount;
            $item->save();
        }
        else {
            $input['member_id'] = $id;
            $input['product_id'] = $request->product_id;
            $input['amount'] = $request->amount;
            // $total = $request->amount * $request->price;
            $input['total'] = 0; //not going to be used :)
            cart::create($input);
        }
        
        return response()->json([
    		"acknowledge" => 1,
    		"message" => 'This item has been successfully added to cart'
    	]);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $cart = cart::findOrFail($id);
        $cart->delete();

        return response()->json([
    		"acknowledge" => 1,
    		"message" => 'This item has been successfully removed from cart'
    	]);
        // return redirect()->route('products.index',['type' => $type]);
        // return redirect()->back()->back();
        // return Redirect::to('/');
    }

    // move cart items to corresponding user
    public function moveItems(Request $request) {        
        $currentUser = JWTAuth::parseToken()->authenticate();
        $id=$currentUser->id;
        $items = json_decode($request->items);
        foreach($items as $item) {

            $existingItem = cart::where('product_id',$item->product_id)->where('member_id',$id)->first();
            if ($existingItem) {
                $existingItem['amount'] = $existingItem['amount'] + $item->amount;
                $existingItem->save();
            }
            else {
                $input['member_id'] = $id;
                $input['product_id'] = $item->product_id;
                $input['amount'] = $item->amount;
                // $total = $request->amount * $request->price;
                $input['total'] = 0; //not going to be used :)
                cart::create($input);
            }
        }
        // $item = cart::where('product_id',$request->product_id)->where('member_id',$items->product_id)->first();
        // json_encode($items);
        // print($items);
        return response()->json([
    		"acknowledge" => 1,
    		"message" => 'These items has been converted successfully to ' . $id . '\'s'
    	]);
    }

    // bulk: update items in cart
    public function updateItems(Request $request) {           
        $currentUser = JWTAuth::parseToken()->authenticate();
        $id=$currentUser->id;
        $items = json_decode($request->items);
        foreach($items as $item) {
            DB::table('carts')
                ->where('id', $item->product_id)
                ->update(['amount' => $item->amount]);
        }

        return response()->json([
    		"acknowledge" => 1,
    		"message" => 'These items has been updated and ready to checkout'
    	]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    // public function create()
    // {
    //     //
    // }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    // public function show($id)
    // {
    //     //
    // }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    // public function edit($id)
    // {
    //     //
    // }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    // public function update(Request $request, $id)
    // {
    //     //
    // }
}
