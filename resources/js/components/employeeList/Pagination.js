import React, { Component, useEffect, useState } from 'react';


class Pagination extends Component {

    constructor(props) {
        super(props);
    }

    render() {
        return (
            <li className="page-item"><button type="button" className="page-link" href={ this.props.data.url }>{ this.props.data.label }</button></li>
        )
    }
}

export default Pagination;