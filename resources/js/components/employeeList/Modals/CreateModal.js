import axios from 'axios';
import React, { Component } from 'react';
import { toast } from 'react-toastify';


class CreateModal extends Component {

    constructor(props) {
        super(props);

        this.state = {
            customerName: null,
            customerSalary: null,
        }
    }

    // Creating customer name state.

    inputCustomerName = (event) => {
        this.setState({
            customerName: event.target.value,
        });
    }

    // Creating customer salary state.

    inputCustomerSalary = (event) => {
        this.setState({
            customerSalary: event.target.value,
        });
    }

    // Storing Customer Data.

    storeCustomerData = () => {
        axios.post('/store/customer/data', {
            customerName: this.state.customerName,
            customerSalary: this.state.customerSalary,
        }).then(() => {
            toast.success("Customer Saved Successfully");

            setTimeout(() => {
                location.reload();
            },2500)
        })
    }

    render() {
        return (
            <>
                <div className='row text-right mb-3 pb-3'>
                    <button className='btn btn-info text-right col-3 offset-md-9'
                        data-toggle="modal"
                        data-target="#modalCreate"
                    >
                        Add New Customer
                    </button>
                </div>
                <div className="modal fade" id="modalCreate"  tabIndex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                    <div className="modal-dialog">
                        <div className="modal-content">
                        <div className="modal-header">
                            <h5 className="modal-title" id="exampleModalLabel">Customer Details</h5>
                            <button type="button" className="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                        </div>
                        <div className="modal-body">
                                <form className='form'>
                                    <div className="form-group">
                                        <input type="text"
                                            id="customerName"
                                            className='form-control mb-3'
                                            placeholder="Name Here"
                                            onChange={this.inputCustomerName}
                                        />
                                    </div>  

                                    <div className="form-group">
                                        <input type="text"
                                            id="customerSalary"
                                            className='form-control mb-3'
                                            placeholder="Salary Here"
                                            onChange={this.inputCustomerSalary}
                                        />
                                    </div>  
                                </form> 
                        </div>
                            <div className="modal-footer">
                            <input type="button"
                                    value="Save"
                                    className='btn btn-info'
                                onClick={this.storeCustomerData}
                                        />
                        <button type="button" className="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                        </div>
                        </div>
                    </div>
                    </div>
                </>
        )
    }
}

export default CreateModal;