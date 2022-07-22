import React, { Component, useEffect, useState } from 'react';
import { BrowserRouter as Router, Routes, Route, useRoutes, Link } from "react-router-dom";

class TestimonialRow extends Component {

    constructor(props) {
        super(props);
    }

    render() {
        return (
   
            <div className="col-md-12" id="{ this.props.data.id }">
                <div className="clients_box">
                    <p>{ this.props.data.description }</p>
                    </div>
                    
                    <div className="jonu">
                        <img src={ this.props.data.image } alt={ this.props.data.name }/>
                        <h3>{ this.props.data.name }</h3>
                        <strong>({ this.props.data.subtitle })</strong>
                        <Link className="read_more" to="/contact">Get A Quote</Link>
                    </div>
                </div>
        )
    }
}

export default TestimonialRow;