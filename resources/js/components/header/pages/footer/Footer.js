import axios from 'axios';
import React, { Component } from 'react';
import { Button, Form, Input } from "reactstrap";

class Footer extends React.Component{
    contactfrmData;
    constructor(props) {
        super(props);
        
        this.state = {
            subscribeData: {
                email: "",
                isLoading: "",
            },
            msg: "",
        };
    }

    onChangehandler = (e, key) => {
        const { subscribeData } = this.state;
        subscribeData[e.target.name] = e.target.value;
        this.setState({ subscribeData });
    };

     // Register User
     onSubmitHandler = (e) => {
        e.preventDefault();
        this.setState({ isLoading: true });
        axios
          .post("http://localhost:8000/api/subscribe", this.state.subscribeData)
          .then((response) => {
            this.setState({ isLoading: false });
            if (response.data.status == 'true') {
              this.setState({
                msg: response.data.message,
                subscribeData: {
                  email: ""
                },
              });
              setTimeout(() => {
                this.setState({ 
                  subscribeData: { email: "" },
                  msg: "" });
              }, 2000);
            }
    
            if (response.data.status === "failed") {
              this.setState({ msg: response.data.message });
              setTimeout(() => {
                this.setState({ msg: "" });
              }, 2000);
            }
          });
    };


    render(){
        return(
        <footer>
              <div className="footer">
                 <div className="container">
                    <div className="row border-top">
                       <div className="col-md-6 padding_bottom1  ">
                          <h3>Subscribe Now</h3>
                          <Form className="footer_form">
                          <Input type="email" className="enter" name="email" placeholder="Enter your email" value={this.state.subscribeData.email} onChange={this.onChangehandler} />
                            <Button className="submit" color="success" onClick={this.onSubmitHandler} >
                                Submit
                                { this.state.isLoading ? (
                                <span className="spinner-border spinner-border-sm ml-5" role="status" aria-hidden="true" ></span>
                                ) : ( <span></span>
                                )}
                            </Button>
                        </Form>
                        <p className="text-white">{this.state.msg}</p>
                       </div>
                       <div className="col-md-6">
                          <div className="row">
                             <div className="col-md-5 offset-md-1 padding_bottom1">
                                <h3>Links</h3>
                                <ul className="cont">
                                   <li>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do </li>
                                </ul>
                             </div>
                             <div className="col-md-5 offset-md-1">
                                <h3>Contact us</h3>
                                <ul className="cont">
                                   <li>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do </li>
                                </ul>
                             </div>
                          </div>
                       </div>
                    </div>
                 </div>
                 <div className="copyright">
                    <div className="container">
                       <div className="row">
                          <div className="col-md-12">
                             <p>© 2022 All Rights Reserved.</p>
                          </div>
                       </div>
                    </div>
                 </div>
              </div>
           </footer>
        )  
    }
}
export default Footer;