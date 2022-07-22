import React, { Component } from 'react';
import Homeclients from './home/Homeclients';
import Footer from './footer/Footer';

class Clients extends Component {

    constructor(props) {
        super(props);
    }

    render()
    {
        return (
            <><Homeclients /><div class="margin_to90"><Footer /></div></>
        );

    }
} 

export default Clients;