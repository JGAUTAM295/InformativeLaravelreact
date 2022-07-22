import React from 'react'
import { BrowserRouter as Router, Routes, Route, useRoutes, Link } from "react-router-dom";

class HomeContect extends React.Component{

    render(){
        return(
    <div>
        <div id="about" className="about">
            <div className="container">
                <div className="row d_flex">
                    <div className="col-md-7">
                        <div className="titlepage">
                            <h2>Web Development</h2>
                            <span></span>
                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo </p>
                            <Link className="read_more" to="/about">Read More <i className="fa fa-arrow-right" aria-hidden="true"></i></Link>
                        </div>
                    </div>
                    <div className="col-md-5">
                        <div className="about_img">
                            <figure><img src="./images/about_img.png" alt="about" /></figure>
                        </div>
                    </div>
                </div>
            </div>
        </div>
         
        <div id="mobile" className="mobile">
            <div className="container">
                <div className="row d_flex">
                    <div className="col-md-5">
                        <div className="mobile_img">
                            <figure><img src="images/mobile.png" alt="#" /></figure>
                        </div>
                    </div>
                    <div className="col-md-7">
                        <div className="titlepage">
                            <h2>Mobile App Development</h2>
                            <span></span>
                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo </p>
                            <Link className="read_more" to="/about">Read More <i className="fa fa-arrow-right" aria-hidden="true"></i></Link>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>   
            
        )  
    }
}
export default HomeContect;