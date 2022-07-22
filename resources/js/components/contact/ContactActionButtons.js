import axios from 'axios';
import React, { Component } from 'react';
import ViewModal from './ContactModals/ViewModal';
import DeleteModal from './ContactModals/DeleteModal';

class ContactActionButtons extends Component {

    constructor(props) {
        super(props);

        this.state = {
            currentName: null,
            currentEmail: null,
            currentPhone: null,
            currentMessage: null,
        }
    }

    // Getting Individual employee data.

    getContactDetails = (id) => {
        axios.post('/get/individual/contact/details', {
            contactId: id
        }).then((response) => {
            this.setState({
                currentName: response.data.name,
                currentEmail: response.data.email,
                currentPhone: response.data.phone,
                currentMessage: response.data.message
            })
        })
    }

    render() {
        return (
            <div className="btn-group" role="group">
               
                <button type="button"
                    className="btn btn-primary"
                    data-bs-toggle="modal"
                    data-bs-target={'#viewModal'+this.props.eachRowId}
                    onClick={ () => { this.getContactDetails(this.props.eachRowId) }}
                >
                    View
                </button>
                {/* <ViewModal modalId={this.props.eachRowId} contactData={ this.state }/> */}
                
                <button type="button"
                    className="btn btn-danger"
                    data-bs-toggle="modal"
                    data-bs-target={'#deleteModal' + this.props.eachRowId}
                    onClick={() => { this.getContactDetails(this.props.eachRowId) }}
                >
                    Delete
                </button>
                <DeleteModal  modalId={this.props.eachRowId} contactData={ this.state }/>
            </div>
        )
    }
}

export default ContactActionButtons;