<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class DemoController extends Controller
{



public function index(){

    // echo "helo";
return view('admin.demo');

}


public function add_image(Request $request){

    $images=array();
    if($files=$request->file('images')){
        foreach($files as $file){
            $name=$file->getClientOriginalName();
            $file->move('images',$name);
            $images[]=$name;
        }
    }


}




}
