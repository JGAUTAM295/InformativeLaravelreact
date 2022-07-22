<?php

namespace App\Http\Controllers;

use App\Models\Message;
use App\Models\Subscribe;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use Log, Exception, DB;

class MessageController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $contacts = Message::orderBy('id', 'ASC')->paginate(10);
           
        return response()->json(['total'=> $contacts->count(), 'contacts' => $contacts], 200);
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
            'name' => 'required',
            'phone' => 'required',
            'email' => 'required',
            'message' => 'required',
        ]);

        if($validator->fails()){
            return response()->json(['status' => 'false', 'message' => $validator->errors()->first() ], 401);
        }
        else
        {
            $message = New Message();
            $user = User::where('email', $request->email)->first();

            if(!empty($user)) 
            {
                $message->user_id = $request->user_id;
            }
           
            $message->name = $request->name;
            $message->phone = $request->phone;
            $message->email = $request->email;
            $message->message = $request->message;
            $message->created_by = $request->user_id;
            
            if($message->save())
            {
                return response()->json([ 'status' => 'true', 'message' => 'Message sent successfully!' ], 200);
                
            }
            else
            {
                return response()->json([ 'status' => 'false', 'message' => 'Message not sent successfully!' ], 401);
            }
        }
    }

    public function subscribe(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'email' => 'required',
        ]);

        if($validator->fails()){
            return response()->json(['status' => 'false', 'message' => $validator->errors()->first() ], 401);
        }
        else
        {
            $subscribe = New Subscribe();

            $user = User::where('email', $request->email)->first();

            if(!empty($user)) 
            {
                $subscribe->user_id = $request->user_id;
            }
           
            $subscribe->email = $request->email;
            $subscribe->created_by = $request->user_id;
            
            if($subscribe->save())
            {
                return response()->json(['status' => 'true', 'message' => 'You have successfully subscribed!'], 200);
                
            }
            else
            {
                return response()->json(['status' => 'false', 'message' => 'You have not successfully subscribed!'], 401);
            }
        }
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Message  $message
     * @return \Illuminate\Http\Response
     */
    public function show(Message $message)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Message  $message
     * @return \Illuminate\Http\Response
     */
    public function edit(Message $message)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Message  $message
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Message $message)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Message  $message
     * @return \Illuminate\Http\Response
     */
    public function destroy(Message $message)
    {
        $message->delete();
    }
}
