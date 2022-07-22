import React, { Component } from 'react';
import HomeContact from './home/HomeContact';
import Footer from './footer/Footer';

class ContactUs extends Component {

    constructor(props) {
        super(props);
    }

    render()
    {
        return (
           
            <><HomeContact /><Footer /></>
        );

    }
} 

export default ContactUs;