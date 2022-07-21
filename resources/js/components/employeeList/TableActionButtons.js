import axios from 'axios';
import React, { Component } from 'react';
import ViewModal from './Modals/ViewModal';
import UpdateModal from './Modals/UpdateModal';
import DeleteModal from './Modals/DeleteModal';

class TableActionButtons extends Component {

    constructor(props) {
        super(props);

        this.state = {
            currentCustomerName: null,
            currentCustomerSalary: null,
        }
    }

    // Getting Individual employee data.

    getCustomerDetails = (id) => {
        axios.post('/get/individual/customer/details', {
            customerId: id
        }).then((response) => {
            this.setState({
                currentCustomerName: response.data.customer_name,
                currentCustomerSalary: response.data.salary
            })
            console.log(response.data);
        })
    }

    render() {
        return (
            <div className="btn-group" role="group">
               
                <button type="button"
                    className="btn btn-primary"
                    data-bs-toggle="modal"
                    data-bs-target={'#viewModal'+this.props.eachRowId}
                    onClick={ () => { this.getCustomerDetails(this.props.eachRowId) }}
                >
                    View
                </button>
                <ViewModal modalId={this.props.eachRowId} customerData={ this.state }/>
                
                <button type="button"
                    className="btn btn-info"
                    data-bs-toggle="modal"
                    data-bs-target={'#updateModal' + this.props.eachRowId}
                    onClick={() => { this.getCustomerDetails(this.props.eachRowId) }}
                >
                    Update
                </button>
                <UpdateModal modalId={this.props.eachRowId} customerData={ this.state }/>
                <button type="button"
                    className="btn btn-danger"
                    data-bs-toggle="modal"
                    data-bs-target={'#deleteModal' + this.props.eachRowId}
                    onClick={() => { this.getCustomerDetails(this.props.eachRowId) }}
                >
                    Delete
                </button>
                <DeleteModal  modalId={this.props.eachRowId} customerData={ this.state }/>
            </div>
        )
    }
}

export default TableActionButtons;