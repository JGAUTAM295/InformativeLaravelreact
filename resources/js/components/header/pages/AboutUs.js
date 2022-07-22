import React, { Component } from 'react';
import { Link } from "react-router-dom";
import Footer from './footer/Footer';

class AboutUs extends Component {

    constructor(props) {
        super(props);
    }

    render()
    {
        return (
        <><div id="about" className="about">
                <div className="container">
                    <div className="row d_flex">
                        <div className="col-md-7">
                            <div className="titlepage">
                                <h2>About Us</h2>
                                <span></span>
                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo </p>
                                <Link className="read_more" to="#">Read More <i className="fa fa-arrow-right" aria-hidden="true"></i></Link>
                            </div>
                        </div>
                        <div className="col-md-5">
                            <div className="about_img">
                                <figure><img src="./images/about_img.png" alt="#" /></figure>
                            </div>
                        </div>
                    </div>
                </div>
            </div><Footer /></>
        );

    }
} 

export default AboutUs;