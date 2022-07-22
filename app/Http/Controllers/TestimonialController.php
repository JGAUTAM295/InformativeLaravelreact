<?php

namespace App\Http\Controllers;

use App\Models\testimonial;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Str;
use Log, Exception, DB, File;

class TestimonialController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $testimonials = testimonial::where('status', 'enable')->orderBy('id', 'DESC')->paginate(10);
           
        return response()->json(['total'=> $testimonials->count(), 'testimonials' => $testimonials]);
       
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
            'name'   => 'required',
            'description' => 'required',
            'subtitle' => 'required',
            'status' => 'required',
        ]);

        if($validator->fails()){
            return response()->json([ 'status' => 'false', 'message' => $validator->errors()->first() ], 401);
        }
        else
        {
            $testimonial = New testimonial();

            $user = User::where('id', $request->user_id)->first();

            if(!empty($user)) 
            {
                $testimonial->user_id = $request->user_id;
            }
           
            $testimonial->name = $request->name;
            $testimonial->description = $request->description;

            if($request->hasFile('image'))
            {
                $request->validate([
                    'image' => 'required|image|mimes:jpeg,png,jpg|max:2048',
                ]);
                
                $foldername  = '/uploads/'.date("Y");
                $foldername2 = "/uploads/".date("Y")."/".date("m");
                $foldername3 = "/uploads/".date("Y")."/".date("m")."/".date("d");

                $file= $request->file('image');
                $imagename = $file->getClientOriginalName();
                $imagename = explode('.', $imagename)[0];
                $filename = $imagename.'_'.time() . '.' . $file->getClientOriginalExtension();
                $file->move(public_path($foldername3), $filename);
                $newimage = stripslashes($foldername3.'/'.$filename);
                $testimonial->image = $newimage;  
            }

            $testimonial->subtitle = $request->subtitle;
            $testimonial->status = $request->status;
            $testimonial->created_by = $request->user_id;
            
            if($testimonial->save())
            {
                return response()->json([ 'status' => 'true', 'message' => 'Testimonial added successfully!' ], 200);
                
            }
            else
            {
                return response()->json([ 'status' => 'false', 'message' => 'Testimonial not added successfully!' ], 401);
            }
        }
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\testimonial  $testimonial
     * @return \Illuminate\Http\Response
     */
    public function show(testimonial $testimonial)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\testimonial  $testimonial
     * @return \Illuminate\Http\Response
     */
    public function edit(testimonial $testimonial)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\testimonial  $testimonial
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, testimonial $testimonial)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\testimonial  $testimonial
     * @return \Illuminate\Http\Response
     */
    public function destroy(testimonial $testimonial)
    {
        //
    }
}
