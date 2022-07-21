import React from 'react';
// import Table from './employeeList/Table';
import {
    BrowserRouter as Router,
    Routes,
    Route,
    useRoutes,
  } from "react-router-dom";
import Home from './header/pages/Home';
import AboutUs from './header/pages/AboutUs';
import ContactUs from './header/pages/ContactUs';
import Navbar from "./Navbar";

const AppRoutes = () => {
    let routes = useRoutes([
      { path: "/", element: <Home /> },
      { path: "about", element: <AboutUs /> },
      { path: "contact", element: <ContactUs /> },
    ]);
    return routes;
  };

function App() {
    return (
        <>
        
        <Router>
        <Navbar />
            <AppRoutes />
        </Router>
        </>

        // <div className="container">  
        //     <div className="row justify-content-center">
        //         {/* components goes here */}
        //         <Table itemsPerPage={4}/>
        //     </div>
        // </div>
    );
}

export default App;