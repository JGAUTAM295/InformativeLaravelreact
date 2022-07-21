import React, { Component, useEffect, useState } from 'react';
import TableActionButtons from './TableActionButtons';


class TableRow extends Component {

    constructor(props) {
        super(props);
    }

    render() {
        return (
            <tr>
                <th className="px-5">{ this.props.data.id }</th>
                <td className="px-5">{ this.props.data.customer_name }</td>
                <td className="px-5">{ this.props.data.salary }</td>
                <td className="px-5">
                    <TableActionButtons eachRowId={ this.props.data.id }/>
                </td>
            </tr>
        )
    }
}

export default TableRow;