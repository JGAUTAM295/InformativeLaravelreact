import React from 'react'
import TestimonialRow from './Testimonials/TestimonialRow';

class Homeclients extends React.Component{
    
    constructor(props) {
        super(props);

        this.state = {
            testimonials: [],
            activePage: 1,
            testimonialsList: 1,
            pageRangeShow: 8,
        } 
    }

    // LIFE CYCLE METHOD.
    componentDidMount() {
        this.getTestimonialsList();
    }

    //GET CUSTOMER LIST
    getTestimonialsList = () => {
        let self = this;
        const url = `/api/testimonials?page=${this.state.activePage}`;
        axios.get(url).then(function (response) 
        { 
            self.setState({
                testimonials: response.data.testimonials.data,
                pageRangeShow: response.data.total,
                testimonialsList: response.data.testimonials.total,
            });
        }); 
    }

    handlePageChange = pageNumber => {
        //console.log(`active page is ${pageNumber}`);
        axios
          .get(
            `/api/testimonials?page=${pageNumber}`
          )
          .then(res => {
            console.log(res.data.total);
            this.setState({
                testimonials: res.data.testimonials.data,
                pageRangeShow: res.data.total,
                testimonialsList: res.data.testimonials.total
            });
          });
        this.setState({ 
            activePage: pageNumber,
             });
             
      };


    render(){
        return(
        <div className="clients">
            <div className="container">
                <div className="row">
                    <div className="col-md-6 offset-md-3">
                        <div className="titlepage">
                            <h2>What is Say clients</h2>
                            <span></span>
                        </div>
                    </div>
                </div>
                <div className="row">
                {this.state.testimonials.map(function (x, i) {
                    return <TestimonialRow key={i} data={x} />
                    
                })}
                </div>
            </div>
        </div>   
        )  
    }
}
export default Homeclients;