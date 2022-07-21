import React from 'react';
import ReactDOM from 'react-dom';
// import App from './components/App';
import BootstrapNavbar from './components/header/BootstrapNavbar';

if (document.getElementById('bootstrapNavbar')) {
    ReactDOM.render(<BootstrapNavbar />, document.getElementById('bootstrapNavbar'));
}

// if (document.getElementById('customerapp')) {
//     ReactDOM.render(<App />, document.getElementById('customerapp'));
// }
