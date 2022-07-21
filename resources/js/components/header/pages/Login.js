import axios from 'axios';
import React, { Component } from 'react';
import { Button, Form, FormGroup, Label, Input } from "reactstrap";
import { Link } from "react-router-dom";

class Login extends Component {

    constructor(props) {
        super(props);

        this.state = {
            email: null,
            password: null,
            msg: "",
            isLoading: false,
            redirect: false,
            errMsgEmail: "",
            errMsgPwd: "",
            errMsg: "",
        }
    }

    // Creating customer name state.

    inputEmail = (event) => {
        this.setState({
            email: event.target.value,
        });
    }

    // Creating customer salary state.

    inputPassword = (event) => {
        this.setState({
            password: event.target.value,
        });
    }

    onChangehandler = (e) => {
        let name = e.target.name;
        let value = e.target.value;
        let data = {};
        data[name] = value;
        this.setState(data);
      };

    // Signin User
    onSignInHandler = () => {
        this.setState({ isLoading: true });
        axios
          .post("http://localhost:8000/api/login", {
            email: this.state.email,
            password: this.state.password,
          })
          .then((response) => {
            this.setState({ isLoading: false });
            if (response.data.status === 200) {
                localStorage.setItem("isLoggedIn", true);
                localStorage.setItem("userData", JSON.stringify(response.data.data));
              this.setState({
                msg: response.data.message,
                redirect: true,
              });      
            }
            if (
              response.data.status === "failed" &&
              response.data.success === undefined
            ) {
              this.setState({
                errMsgEmail: response.data.validation_error.email,
                errMsgPwd: response.data.validation_error.password,
              });
              setTimeout(() => {
                this.setState({ errMsgEmail: "", errMsgPwd: "" });
              }, 2000);
            } else if (
              response.data.status === "failed" &&
              response.data.success === false
            ) {
              this.setState({
                errMsg: response.data.message,
              });
              setTimeout(() => {
                this.setState({ errMsg: "" });
              }, 2000);
            }
          })
          .catch((error) => {
            console.log(error);
          });
      };

    render()
    {
        return (
            <div className="container">
                <div className="row justify-content-center">
                    <div className="col-md-8">
                        <div className="card shadow">
                            <div className="card-header">Login</div>
                            <div className="card-body">
                                <Form className="containers">
                                    <FormGroup>
                                        <Label for="email">Email id</Label>
                                        <Input type="email" name="email" placeholder="Enter email" value={this.state.email} onChange={this.onChangehandler} />
                                        <span className="text-danger">{this.state.msg}</span>
                                        <span className="text-danger">{this.state.errMsgEmail}</span>
                                    </FormGroup>

                                    <FormGroup>
                                        <Label for="password">Password</Label>
                                        <Input type="password" name="password" placeholder="Enter password" value={this.state.password} onChange={this.onChangehandler} />
                                        <span className="text-danger">{this.state.errMsgPwd}</span>
                                    </FormGroup>
                                    
                                    <p className="text-danger">{this.state.errMsg}</p>
                                    
                                    <Button className="text-center mb-4" color="success" onClick={this.onSignInHandler}>
                                        Sign In {this.state.isLoading ? (
                                        <span className="spinner-border spinner-border-sm ml-5" role="status" aria-hidden="true" ></span>
                                        ) : (
                                        <span></span>
                                        )}
                                    </Button>

                                    <Link to="/signup" className="text-white ml-5">New Here? Then Create Your Account</Link>
                                </Form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        );

    }
} 

export default Login;