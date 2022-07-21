import React from 'react'
import { BrowserRouter as Router, Routes, Route, useRoutes, Link } from "react-router-dom";
import { Navbar,Nav,NavLink,NavDropdown,Form,FormControl,Button } from 'react-bootstrap';
import Home from './pages/Home';
import AboutUs from './pages/AboutUs';
import ContactUs from './pages/ContactUs';
import Login from './pages/Login';
import Register from './pages/Register';
import NotFound from './pages/NotFound';

const AppRoutes = () => {
    let routes = useRoutes([
      { path: "/", element: <Home /> },
      { path: "about", element: <AboutUs /> },
      { path: "contact", element: <ContactUs /> },
      { path: "signin", element: <Login /> },
      { path: "signup", element: <Register /> },
      { path: "", element: <NotFound /> },
    ]);
    return routes;
  };

class BootstrapNavbar extends React.Component{

    render(){
        return(
            <>
        
        <Router>
        <div>
            <div className="row">
                <div className="col-md-12">
                   
                        <nav className="navbar navbar-expand-lg navbar-dark bg-primary px-5" style={{backgroundColor: "#e3f2fd"}}>
                            <Link to="/" className="navbar-brand">CustomerManagement</Link>
                            <button className="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarText" aria-controls="navbarText" aria-expanded="false" aria-label="Toggle navigation">
                                <span className="navbar-toggler-icon"></span>
                            </button>
                            <div className="collapse navbar-collapse" id="navbarText">
                                <ul className="navbar-nav mr-auto mt-2 mt-lg-0">
                                    <li className="nav-item active">
                                        <Link to="/" className="nav-link">Home</Link>
                                    </li>
                                    <li className="nav-item">
                                        <Link className="nav-link" to="/about">About</Link>
                                    </li>
                                    <li className="nav-item">
                                        <Link className="nav-link" to="/contact">Contact</Link>
                                    </li>
                                    <li className="nav-item">
                                        <Link className="nav-link" to="/signin">SignIn</Link>
                                    </li>
                                    <li className="nav-item">
                                        <Link className="nav-link" to="/signup">SignUp</Link>
                                    </li>
                                </ul>
                                
                            </div>
                        </nav>    
                        <br />
                    </div>
                </div>
            </div>
            <AppRoutes />
        </Router>
        </>
        )  
    }
}
export default BootstrapNavbar;
            
            
