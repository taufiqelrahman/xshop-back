<?php
namespace App\Api\V1\Controllers;

use Illuminate\Http\Request;
use Illuminate\Html\FormFacade;
use Illuminate\Html\HtmlFacade;
use App\Http\Requests;
use App\Http\Controllers\Controller;
use Dingo\Api\Routing\Helpers;

use JWTAuth;
use Session;
use Input;
use Log;
use error;
use Redirect;
use paginate;
use File;
use Auth;

use App\Product;

class productsController extends Controller
{
    use Helpers;
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */

    // public function index(Request $request,$type,$jenis = null)
    public function index()
    {
        // // dd($request->all());
        // $order=  Input::has('order') ? Input::get('order') : 'updated_at';
        // $min_price = Input::has('min_price') ? Input::get('min_price') : null;
        // $max_price = Input::has('max_price') ? Input::get('max_price') : null;

        // //orderby
        // if (starts_with($order, '-') == true) {
        //     $ord = ltrim($order, '-');
        //     $get = product::where('type',$type)
        //                 ->orderBy($ord,'asc');
        // } else {
        //     $get = product::where('type',$type)
        //                 ->orderBy($order,'desc');
        // }

        // //rangeprice
        // if (isset($min_price)&&isset($max_price)) {
        //     if ($min_price <= $max_price) {
        //         $get = $get->where('price', '>=', $min_price)
        //                 ->where('price', '<=', $max_price);
        //     } else {
        //         Session::flash('flash_message', 'Min price has to be smaller than max price. Thanks.');
        //         return redirect()->back();
        //     }
        // }

        // //jenis
        // if (isset($jenis)) {
        //     $get = $get->where('jenis', $jenis);
        // }

        // //listjenis
        // $listjenis = product::where('type',$type)->groupBy('jenis')->get();

        // //count
        // $count = $get->count();

        // //paginate
        // $products = $get->paginate(12);

        // return view('products.index')
        //     ->withproducts($products)
        //     ->with('type',$type)
        //     ->with('min_price',$min_price)
        //     ->with('max_price',$max_price)
        //     ->with('jenis',$jenis)
        //     ->with('listjenis',$listjenis)
        //     ->with('sort',$order)
        //     ->with('count',$count);

        $products = product::paginate(10);
        return $products;

    }

    public function filter($request){

    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
        if (Auth::check())
        {
        return view('products.create');
        }
        else
        {
            return redirect()->back();
        }
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
        $this->validate($request, [
            'type' => 'required',
            'name' => 'required',
            'description' => 'required|min:10'
        ]);
        // dd($request->all());

        $input = Input::all();
        $title = $input['name'];

        $file = array('image' => Input::file('image'));
        if (Input::hasFile('image')) {
            $destinationPath = 'images'; // upload path
            $extension = Input::file('image')->getClientOriginalExtension(); // getting image extension
            //$random = rand(11111,99999);
            $date = date('ymdhi');
            $fileName = $date.$title.'.'.$extension; // renameing image
            $file = Input::file('image');
            $file = $file->move($destinationPath, $fileName); // uploading file to given path
            // sending back with message
            // Session::flash('success', 'Upload successfully'); 
            // return Redirect::to('upload');
            //array_push($input, ['path' => 'wek']);
            // $input['path'] = $file->getRealPath();
            // $input['path'] = '/public/'.$destinationPath.'/'.$fileName;
            $input['path'] = '/'.$destinationPath.'/'.$fileName;
            // $id = 1;
            product::create($input);
            // $producter = new product($input);
            // $producter->save();
            
            // $asd = product::find($id);
            // $asd -> path = $destinationPath.$fileName;
            // $asd-> save();
            Session::flash('flash_message', 'product successfully added!');
            
        }   
        else {
          // sending back with error message.
          Session::flash('flash_message', 'uploaded image is not valid');
          //return Redirect::to('upload');
        }
        return redirect()->back();

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
        $product = product::findOrFail($id);
        $type = $product['type'];
        $price = $product['price'];
        $min_price = $price - 100000;
        $max_price = $price + 100000;
        $related = product::whereNotIn('id', [$id])
                        ->where('type',$type)
                        ->where('price', '>=', $min_price)
                        ->where('price', '<=', $max_price)
                        ->orderBy('updated_at','desc')
                        ->take(4)->get();

        return view('products.show')->withproduct($product)->withRelated($related);
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
        $product = product::findOrFail($id);
        return view('products.edit')->withproduct($product);
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
        $product = product::findOrFail($id);

        $this->validate($request, [
            'type' => 'required',
            'name' => 'required',
            'description' => 'required|min:10'
        ]);

        $input = $request->all();
        $title = $input['name'];
        if (Input::hasFile('image')) {
            $file = Input::file('image');
            $temp['path'] = str_replace('/', '\\', $product['path']);
            File::delete(public_path($temp['path']));

            $destinationPath = 'images'; // upload path
            $extension = $file->getClientOriginalExtension(); // getting image extension
            $date = date('ymdhi');
            $fileName = $date.$title.'.'.$extension; // renameing image
            $file = $file->move($destinationPath, $fileName); // uploading file to given path
            $input['path'] = '/'.$destinationPath.'/'.$fileName;
        }
        $product->fill($input)->save();

        Session::flash('flash_message', 'product successfully edited!');

        return redirect()->route('products.show', $id);
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
        $product = product::findOrFail($id);
        $type = $product->type;

        $product->delete();

        Session::flash('flash_message', 'product successfully deleted!');

        // return redirect()->route('products.index',['type' => $type]);
        // return redirect()->back()->back();
        return Redirect::to('/');
    }
}
