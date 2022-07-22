import axios from 'axios';
import React, { Component } from 'react';
import { Button, Form, FormGroup, Input } from "reactstrap";

class HomeContact extends React.Component{
    contactfrmData;
    constructor(props) {
        super(props);
        
        this.state = {
            contactData: {
                name: "",
                phone: "",
                email: "",
                message: "",
                isLoading: "",
            },
            msg: "",
        };
    }

    onChangehandler = (e, key) => {
        const { contactData } = this.state;
        contactData[e.target.name] = e.target.value;
        this.setState({ contactData });
    };

     // Register User
     onSubmitHandler = (e) => {
        e.preventDefault();
        this.setState({ isLoading: true });
        axios
          .post("http://localhost:8000/api/contact/sent", this.state.contactData)
          .then((response) => {
            this.setState({ isLoading: false });
            if (response.data.status == 'true') {
              this.setState({
                msg: response.data.message,
                contactData: {
                  name: "",
                  phone: "",
                  email: "",
                  message: "",
                },
              });

              setTimeout(() => {
                this.setState({ msg: "" });
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
            <div id="contact" className="contact">
                <div className="container">
                    <div className="row">
                        <div className="col-md-12">
                            <div className="titlepage">
                                <h2>Request A call back</h2>
                            </div>
                        </div>
                        <div className="col-md-6 offset-md-3">
                            <Form id="request" className="main_form">
                                <div className="row">
                                    <div className="col-md-12 ">
                                    <FormGroup>
                                        <Input type="name" className="contactus" name="name" placeholder="Full name" value={this.state.contactData.name} onChange={this.onChangehandler} />
                                    </FormGroup>
                                    </div>
                                    <div className="col-md-12">
                                        <FormGroup>
                                            <Input type="phone" className="contactus" name="phone" placeholder="Phone Number" value={this.state.contactData.phone} onChange={this.onChangehandler} />
                                        </FormGroup> 
                                    </div>
                                    <div className="col-md-12">
                                        <FormGroup>
                                            <Input type="email" className="contactus" name="email" placeholder="Email" value={this.state.contactData.email} onChange={this.onChangehandler} />
                                        </FormGroup>
                                    </div>
                                    <div className="col-md-12">
                                        <FormGroup>
                                        <Input type="textarea" className="contactus" name="message" placeholder="Message" onChange={this.onChangehandler} rows="5" />
                                        </FormGroup>
                                    </div>
                                    <p className="text-white">{this.state.msg}</p>

                                    <div className="col-sm-12">
                                        <Button className="send_btn" color="success" onClick={this.onSubmitHandler} >
                                            Send
                                            { this.state.isLoading ? (
                                            <span className="spinner-border spinner-border-sm ml-5" role="status" aria-hidden="true" ></span>
                                            ) : (
                                            <span></span>
                                            )}
                                        </Button>
                                    </div>
                                </div>
                            </Form>
                        </div>
                    </div>
                </div>
            </div>
        )  
    }
}
export default HomeContact;