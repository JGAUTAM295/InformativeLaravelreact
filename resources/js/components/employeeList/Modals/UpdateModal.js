import axios from 'axios';
import React, { Component } from 'react';
import {toast } from 'react-toastify';
import 'react-toastify/dist/ReactToastify.css';

class UpdateModal extends Component {

    constructor(props) {
        super(props);

        this.state = {
            customerName: null,
            customerSalary: null,
        }
    }

    // Updating customer name state.

    inputCustomerName = (event) => {
        this.setState({
            customerName: event.target.value,
        });
    }

    // Update customer salary state.

    inputCustomerSalary = (event) => {
        this.setState({
            customerSalary: event.target.value,
        });
    }


    static getDerivedStateFromProps(props, current_state) {
        let customerUpdate = {
            customerName: null,
            customerSalary: null,
        }



        // Updating data from input.

        if (current_state.customerName && (current_state.customerName !== props.customerData.currentCustomerName)) {
            return null;
        }

        if (current_state.customerSalary && (current_state.customerSalary !== props.customerData.currentCustomerSalary)) {
            return null;
        }

        // Updating data from props Below.

        if (current_state.customerName !== props.customerData.currentCustomerName ||
            current_state.customerName === props.customerData.currentCustomerName) {
            customerUpdate.customerName = props.customerData.currentCustomerName;
        }

        if (current_state.customerSalary !== props.customerData.currentCustomerSalary ||
            current_state.customerSalary === props.customerData.currentCustomerSalary) {
            customerUpdate.customerSalary = props.customerData.currentCustomerSalary;
        }

        return customerUpdate;

    }

    // Updating Customer data.
    updateCustomerData = () => {
        axios.post('/update/customer/data', {
            customerId: this.props.modalId,
            customerName: this.state.customerName,
            customerSalary: this.state.customerSalary,
        }).then(() => {
            toast.success("Customer Updated Successully");
            setTimeout(() => {
                location.reload();
            },2500)
        })
    }

    render() {
        return (
            <div className="modal fade" id={"updateModal"+this.props.modalId } tabIndex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
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
                                        value={this.state.customerName ?? ""}
                                        onChange={this.inputCustomerName}
                                    />
                                </div>  

                                <div className="form-group">
                                    <input type="text"
                                        id="customerSalary"
                                        className='form-control mb-3'
                                        value={this.state.customerSalary ?? ""}
                                        onChange={this.inputCustomerSalary}
                                    />
                                </div>  
                            </form> 
                    </div>
                        <div className="modal-footer">
                            <input type="submit"
                                className="btn btn-info"
                                value="Update"
                                onClick={this.updateCustomerData}
                            />
                        <button type="button" className="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                    </div>
                    </div>
                </div>
            </div>
        )
    }
}

export default UpdateModal;