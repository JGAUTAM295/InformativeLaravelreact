<?php

namespace App\Http\Controllers;

use App\Models\Banner;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Str;
use Log, Exception, DB, File;

class BannerController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $banners = Banner::where('status', 'enable')->orderBy('id', 'ASC')->paginate(10);
           
        return response()->json(['total'=> $banners->count(), 'banners' => $banners], 200);
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
        $validator = Validator::make($request->all(), [
            'content' => 'required',
            'url' => 'required',
            'status' => 'required',
        ]);

        if($validator->fails()){
            return response()->json(['status' => 'false', 'message' => $validator->errors()->first() ], 401);
        }
        else
        {
            $banners = New Banner();

            $user = User::where('id', $request->user_id)->first();

            if(!empty($user)) 
            {
                $banners->user_id = $request->user_id;
            }
        
            $banners->content = $request->content;

            if($request->hasFile('image'))
            {
                $request->validate([
                    'image' => 'required|image|mimes:jpeg,png,jpg|max:2048',
                ]);
                
                $foldername  = "/uploads/banner/".date("Y");
                $foldername2 = "/uploads/banner/".date("Y")."/".date("m");
                $foldername3 = "/uploads/banner/".date("Y")."/".date("m")."/".date("d");

                $file= $request->file('image');
                $imagename = $file->getClientOriginalName();
                $imagename = explode('.', $imagename)[0];
                $filename = $imagename.'_'.time() . '.' . $file->getClientOriginalExtension();
                $file->move(public_path($foldername3), $filename);
                $newimage = stripslashes($foldername3.'/'.$filename);
                $banners->image = $newimage;  
            }

            $banners->url = $request->url;
            $banners->status = $request->status;
            $banners->created_by = $request->user_id;
            
            if($banners->save())
            {
                return response()->json([ 'status' => 'true', 'message' => 'Banner added successfully!' ], 200);
                
            }
            else
            {
                return response()->json([ 'status' => 'false', 'message' => 'Banner not added successfully!' ], 401);
            }
        }
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Banner  $banner
     * @return \Illuminate\Http\Response
     */
    public function show(Banner $banner)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Banner  $banner
     * @return \Illuminate\Http\Response
     */
    public function edit(Banner $banner)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Banner  $banner
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'id' => 'required',
            'content' => 'required',
            'url' => 'required',
            'status' => 'required',
        ]);

        if($validator->fails()){
            return response()->json(['status' => 'false', 'message' => $validator->errors()->first() ], 401);
        }
        else
        {
            $banners = Banner::find($request->id);
            
            $user = User::where('id', $request->user_id)->first();

            if(!empty($user)) 
            {
                $banners->user_id = $request->user_id;
            }

            $banners->content = $request->content;

            if($request->hasFile('image'))
            {
                $request->validate([
                    'image' => 'required|image|mimes:jpeg,png,jpg|max:2048',
                ]);
                
                $foldername  = "/uploads/banner/".date("Y");
                $foldername2 = "/uploads/banner/".date("Y")."/".date("m");
                $foldername3 = "/uploads/banner/".date("Y")."/".date("m")."/".date("d");

                $image_path = public_path($banners->image);
                if (File::exists($image_path)) 
                {
                    File::delete($image_path);
                }

                $file= $request->file('image');
                $imagename = $file->getClientOriginalName();
                $imagename = explode('.', $imagename)[0];
                $filename = $imagename.'_'.time() . '.' . $file->getClientOriginalExtension();
                $file->move(public_path($foldername3), $filename);
                $newimage = stripslashes($foldername3.'/'.$filename);
                $banners->image = $newimage;  
            }

            $banners->url = $request->url;
            $banners->status = $request->status;
            $banners->updated_by = $request->user_id;
            
            if($banners->save())
            {
                return response()->json([ 'status' => 'true', 'message' => 'Banner updated successfully!' ], 200);
                
            }
            else
            {
                return response()->json([ 'status' => 'false', 'message' => 'Banner not updated successfully!' ], 401);
            }
        }
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Banner  $banner
     * @return \Illuminate\Http\Response
     */
    public function destroy(Banner $banner)
    {
        //
    }
}
