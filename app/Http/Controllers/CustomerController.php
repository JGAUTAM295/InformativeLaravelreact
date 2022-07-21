<?php

namespace App\Http\Controllers;

use App\Models\customer;
use Illuminate\Http\Request;
use Log, Exception;

class CustomerController extends Controller
{
    // Get Employee List from database.

    public function getCustomerList()
    {
        try
        {
            $customer = customer::orderBy('id', 'DESC')->paginate(10);
           
            return response()->json(['total'=> $customer->count(), 'customer' => $customer]);
        }
        catch(Exception $e)
        {
            Log::error($e);
        }
    }

     /**
     * Get individual Customer details.
     */
    public function getCustomerDetails(Request $request)
    {
        try
        {
            $customerData = customer::findOrFail($request->get('customerId'));
            return response()->json($customerData);
        }
        catch(Exception $e)
        {
            Log::error($e);
        }
    }


    /**
     * Updating Customer data.
     */
    public function updateCustomerData(Request $request)
    {
        try
        {
            $customerId     = $request->get('customerId');
            $customerName   = $request->get('customerName');
            $customerSalary = $request->get('customerSalary');

            customer::where('id', $customerId)->update([
                'customer_name'   =>  $customerName,
                'salary' =>  $customerSalary
            ]);

            return response()->json([
                'customer_name'   =>  $customerName,
                'salary' =>  $customerSalary
            ]);
        
        }
        catch(Exception $e)
        {
            Log::error($e);
        }
    }


    // Deleting Customer.

    public function destroy(customer $customer)
    {
        try
        {
            $customer->delete(); 
        }
        catch(Exception $e)
        {
            Log::error($e);
        }
    }


    // Storing new employee.

    public function store(Request $request)
    {
        try
        {
            $customerName = $request->get('customerName');
            $customerSalary = $request->get('customerSalary');

            customer::create([
                'customer_name'   =>  $customerName,
                'salary'          =>  $customerSalary
            ]);

            return response()->json([
                'customer_name'   =>  $customerName,
                'salary' =>  $customerSalary
            ]);
        }
        catch(Exception $e)
        {
            Log::error($e);
        }
    }
}
