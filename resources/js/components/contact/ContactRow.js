import React, { Component, useEffect, useState } from 'react';
import ContactActionButtons from './ContactActionButtons'


class ContactRow extends Component {

    constructor(props) {
        super(props);
    }

    render() {
        return (
            <tr>
                <th className="px-5">{ this.props.data.id }</th>
                <td className="px-5">{ this.props.data.name }</td>
                <td className="px-5">{ this.props.data.email }</td>
                <td className="px-5">{ this.props.data.phone }</td>
                <td className="px-5">{ this.props.data.message }</td>
                <td className="px-5">
                    <ContactActionButtons eachRowId={ this.props.data.id }/>
                </td>
            </tr>
        )
    }
}

export default ContactRow;