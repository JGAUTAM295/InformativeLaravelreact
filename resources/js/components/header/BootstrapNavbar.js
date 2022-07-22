import React from 'react'
import { BrowserRouter as Router, Routes, Route, useRoutes, Link } from "react-router-dom";
import Home from './pages/Home';
import AboutUs from './pages/AboutUs';
import ContactUs from './pages/ContactUs';
import Login from './pages/Login';
import Register from './pages/Register';
import Clients from './pages/Clients';
import OurWorks from './pages/OurWorks';
import Customers from '../employeeList/Table';
import Contact from '../contact/Contact';

const AppRoutes = () => {
    let routes = useRoutes([
      { path: "/", element: <Home /> },
      { path: "about", element: <AboutUs /> },
      { path: "contact", element: <ContactUs /> },
      { path: "signin", element: <Login /> },
      { path: "signup", element: <Register /> },
      { path: "clients", element: <Clients /> },
      { path: "ourwork", element: <OurWorks />},
      { path: "customers", element: <Customers />},
      { path: "/auth-contact", element: <Contact />},
    ]);
    return routes;
  };

class BootstrapNavbar extends React.Component{

    render(){
        return(
            <>
        
        <Router>
            <header>
                <div className="header">
                    <div className="container-fluid">
                        <div className="row">
                            <div className="col-xl-3 col-lg-3 col-md-3 col-sm-3 col logo_section">
                                <div className="full">
                                    <div className="center-desk">
                                        <div className="logo">
                                        <Link to="/"><img src="./images/logo.png" alt="#" /></Link>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            
                            <div className="col-xl-9 col-lg-9 col-md-9 col-sm-9">
                                <div className="header_information">
                                    <nav className="navigation navbar navbar-expand-md navbar-dark ">
                                        <button className="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarsExample04" aria-controls="navbarsExample04" aria-expanded="false" aria-label="Toggle navigation">
                                            <span className="navbar-toggler-icon"></span>
                                        </button>
                                        <div className="collapse navbar-collapse" id="navbarsExample04">
                                            <ul className="navbar-nav mr-auto">
                                                <li className="nav-item">
                                                <Link className="nav-link" to="/about">About Us  </Link>
                                                </li> 
                                                <li className="nav-item">
                                                <Link className="nav-link" to="/clients">Our Clients</Link>
                                                </li>
                                                <li className="nav-item">
                                                <Link className="nav-link" to="/ourwork">Our Work</Link>
                                                </li>
                                                <li className="nav-item">
                                                <Link className="nav-link" to="/contact">Contact Us</Link>
                                                </li>
                                            </ul>
                                            <div className="sign_btn"><Link className="nav-link" to="/contact">Get A Quote</Link></div>
                                        </div>
                                    </nav>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </header>
            <AppRoutes />
        </Router>
        </>
        )  
    }
}
export default BootstrapNavbar;
            
            
