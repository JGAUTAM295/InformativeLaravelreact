import React, { Component, useEffect, useState } from 'react';
import { HashLink } from 'react-router-hash-link';

class BannerRow extends Component {

    constructor(props) {
        super(props);
    }

    render() {
        return (
            <div className="carousel-item active" id={ this.props.data.id }>
            <img className="first-slide" src={ this.props.data.image } alt="bannerimage"/>
            <div className="container">
                <div className="carousel-caption relative">
                   <h1> { this.props.data.content }</h1>
                   <HashLink to={ this.props.data.url }>Get A Quote</HashLink>
                </div>
            </div>
        </div>
        )
    }
}

export default BannerRow;