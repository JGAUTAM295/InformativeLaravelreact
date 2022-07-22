import React, { Component } from 'react';
import Homebanner from './home/Homebanner';
import HomeContect from './home/HomeContect';
import Homeclients from './home/Homeclients';
import HomeContact from './home/HomeContact';
import Footer from './footer/Footer';

class Home extends Component {

    constructor(props) {
        super(props);
    }

    render()
    {
        return (
            <><Homebanner /><HomeContect /><Homeclients /><HomeContact /><Footer /></>
        );

    }
} 

export default Home;