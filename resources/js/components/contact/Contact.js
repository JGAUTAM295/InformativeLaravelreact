import React, { Component } from 'react';
import ContactRow from './ContactRow';
import { ToastContainer, toast } from 'react-toastify';
import 'react-toastify/dist/ReactToastify.css';
import Pagination from "react-js-pagination";
import Footer from '../header/pages/footer/Footer';

class Contact extends Component {

    constructor(props) {
        super(props);

        this.state = {
            contacts: [],
            activePage: 1,
            contactsList: 1,
            pageRangeShow: 8,
        } 
    }

    // LIFE CYCLE METHOD.
    componentDidMount() {
        this.getContactList();
    }

    //GET CONTACT LIST
    getContactList = () => {
        let self = this;
        const url = `/api/get/contact/list?page=${this.state.activePage}`;
        axios.get(url).then(function (response) {
            console.log(response);
            self.setState({
                contacts: response.data.contacts.data,
                pageRangeShow: response.data.total,
                contactsList: response.data.contacts.total,
            });
        }); 
    }

    handlePageChange = pageNumber => {
        //console.log(`active page is ${pageNumber}`);
        axios
          .get(
            `/api/get/contact/list?page=${pageNumber}`
          )
          .then(res => {
            this.setState({
                contacts: res.data.contacts.data,
                pageRangeShow: res.data.total,
                contactsList: res.data.contacts.total
            });
          });
        this.setState({ 
            activePage: pageNumber,
        });
             
      };

    render()
    {
        return (
            <><div className="ourwork">
            <div className="container">
                <ToastContainer />
                
                <div className="row justify-content-center">
                    <div className="col-md-12">
                    <div className="card">
                    <div className="table-responsive mb-3">
                        <table className="table table-hover" id="dtBasicExample" cellSpacing="0" width="100%">
                            <thead>
                                <tr>
                                <th className="px-5" scope="col" width="100px">#</th>
                                <th className="px-5" scope="col" width="100px">Name</th>
                                <th className="px-5" scope="col" width="100px">Email</th>
                                <th className="px-5" scope="col" width="100px">Phone</th>
                                <th className="px-5" scope="col" width="100px">Message</th>
                                <th className="px-5" scope="col" width="100px">Actions</th>
                                </tr>
                            </thead>
                                <tbody>
                                    {this.state.contacts.map(function (x, i) {
                                        return <ContactRow key={i} data={x} />
                                    })}
                            </tbody>
                        </table>
                    </div>
                    <div class="text-center">
                        <Pagination
                        totalItemsCount={this.state.contactsList}
                        onChange={this.handlePageChange.bind(this)}
                        activePage={this.state.activePage}
                        itemsCountPerPage={this.state.pageRangeShow}
                        pageRangeDisplayed={this.state.pageRangeShow}
                        prevPageText={<div><i className="fa fa-arrow-left" aria-hidden="true" /> Previous</div>}
                        nextPageText={<div><i className="fa fa-arrow-right" aria-hidden="true" /> Next</div>}
                        firstPageText={<div>« First Page</div>}
                        lastPageText={<div>» Last Page</div>}
                        // hideDisabled={"false"}
                        hideFirstLastPages={"false"}
                        />
                    </div>
                        </div>
                    </div>
                </div>
            </div>
            </div><Footer /></>
        );

    }
} 

export default Contact;