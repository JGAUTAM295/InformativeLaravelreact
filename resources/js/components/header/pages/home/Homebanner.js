import React from 'react'
import { Carousel } from 'react-responsive-carousel';
import { HashLink } from 'react-router-hash-link';
import styles from "react-responsive-carousel/lib/styles/carousel.min.css";
import Parser from 'html-react-parser';

class Homebanner extends React.Component{

    constructor(props) {
        super(props);

        this.state = {
            banners: [],
            activePage: 1,
            bannersList: 1,
            pageRangeShow: 8,
        } 
    }

    // LIFE CYCLE METHOD.
    componentDidMount() {
        this.getBannersList();
    }

    //GET CUSTOMER LIST
    getBannersList = () => {
        let self = this;
        const url = `/api/banners?page=${this.state.activePage}`;
        axios.get(url).then(function (response) {
            self.setState({
                banners: response.data.banners.data,
                pageRangeShow: response.data.total,
                bannersList: response.data.banners.total,
            });
        }); 
    }

    handlePageChange = pageNumber => {
        //console.log(`active page is ${pageNumber}`);
        axios
          .get(
            `/api/banners?page=${pageNumber}`
          )
          .then(res => {
            this.setState({
                banners: res.data.banners.data,
                pageRangeShow: res.data.total,
                bannersList: res.data.banners.total
            });
          });
        this.setState({ 
            activePage: pageNumber,
             });
             
      };

      onChange = (event) => {
        console.log(event);
      };

    render(){
        return(
        <div id="myCarousel" className="carousel slide banner_main" data-ride="carousel">
            <div className="carousel-inner">
            <Carousel showArrows="false" showIndicators="false" autoPlay={true} interval={1000} showThumbs={false} infiniteLoop={true} showStatus={false}
              onChange={()=>this.setState({changed:!this.state.changed})} dynamicHeight={true} >
                {this.state.banners.map(function (x, i) {
                    return (
                    <div className="carousel-item active" id={ x.id }>
                    <img className="first-slide" src={ x.image } alt="bannerimage"/>
                    <div className="container">
                        <div className="carousel-caption relative">
                           <h1>{Parser(x.content)}</h1>
                           <HashLink to={ x.url }>Get A Quote</HashLink>
                        </div>
                    </div>
                </div>)
                    
                })}
            </Carousel>
            </div>
        </div>
        )  
    }
}
export default Homebanner;
            
            
