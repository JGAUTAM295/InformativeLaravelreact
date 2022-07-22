import React, { Component } from 'react';
import Footer from './footer/Footer';

class OurWorks extends Component {

    constructor(props) {
        super(props);
    }

    render()
    {
        return (
        <><div className="ourwork">
                <div className="container">
                    <div className="row">
                        <div className="col-md-12">
                            <div className="titlepage">
                                <h2>Our Work</h2>
                            </div>
                        </div>
                    </div>
                    <div className="row">
                        <div className="col-md-4">
                            <div className="our_box">
                                <figure><img src="./images/our.jpg" alt="#" /></figure>
                            </div>
                        </div>
                        <div className="col-md-4">
                            <div className="our_box">
                                <figure><img src="./images/our1.jpg" alt="#" /></figure>
                            </div>
                        </div>
                        <div className="col-md-4">
                            <div className="our_box">
                                <figure><img src="./images/our.jpg" alt="#" /></figure>
                            </div>
                        </div>
                        <div className="col-md-4">
                            <div className="our_box">
                                <figure><img src="./images/our1.jpg" alt="#" /></figure>
                            </div>
                        </div>
                        <div className="col-md-4">
                            <div className="our_box">
                                <figure><img src="./images/our.jpg" alt="#" /></figure>
                            </div>
                        </div>
                        <div className="col-md-4">
                            <div className="our_box">
                                <figure><img src="./images/our1.jpg" alt="#" /></figure>
                            </div>
                        </div>
                    </div>
                </div>
            </div><Footer /></>
          
        );

    }
} 

export default OurWorks;