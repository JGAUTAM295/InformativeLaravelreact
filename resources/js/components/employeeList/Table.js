import React, { Component } from 'react';
import TableRow from './TableRow';
import { ToastContainer, toast } from 'react-toastify';
import 'react-toastify/dist/ReactToastify.css';
import CreateModal from "./Modals/CreateModal";
import Pagination from "react-js-pagination";
import PreviousMap from 'postcss/lib/previous-map';
import Footer from '../header/pages/footer/Footer';


class Table extends Component {

    constructor(props) {
        super(props);

        this.state = {
            customers: [],
            activePage: 1,
            customersList: 1,
            pageRangeShow: 8,
        } 
    }

    // LIFE CYCLE METHOD.
    componentDidMount() {
        this.getCustomerList();
    }


    //GET CUSTOMER LIST
     getCustomerList = () => {
        let self = this;
        const url = `/get/customer/list?page=${this.state.activePage}`;
        axios.get(url).then(function (response) {
            
            self.setState({
                customers: response.data.customer.data,
                pageRangeShow: response.data.total,
                customersList: response.data.customer.total,
            });
        }); 
    }

    handlePageChange = pageNumber => {
        //console.log(`active page is ${pageNumber}`);
        axios
          .get(
            `/get/customer/list?page=${pageNumber}`
          )
          .then(res => {
            console.log(res.data.total);
            this.setState({
                customers: res.data.customer.data,
                pageRangeShow: res.data.total,
                customersList: res.data.customer.total
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
                    <CreateModal/>
                    <div className="card">
                    <div className="table-responsive mb-3">
                        <table className="table table-hover" id="dtBasicExample" cellSpacing="0" width="100%">
                            <thead>
                                <tr>
                                <th className="px-5" scope="col" width="100px">#</th>
                                <th className="px-5" scope="col" width="100px">Name</th>
                                <th className="px-5" scope="col" width="100px">Salary</th>
                                <th className="px-5" scope="col" width="100px">Actions</th>
                                </tr>
                            </thead>
                                <tbody>
                                    {this.state.customers.map(function (x, i) {
                                        return <TableRow key={i} data={x} />
                                    })}
                            </tbody>
                        </table>
                    </div>
                    <div class="text-center">
                        <Pagination
                        totalItemsCount={this.state.customersList}
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

export default Table;