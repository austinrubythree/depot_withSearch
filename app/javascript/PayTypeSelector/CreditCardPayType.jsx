import React from 'react'
import StripeCheckout from 'react-stripe-checkout'


class CreditCardPayType extends React.Component{
    stripeScript() {
        const script = document.createElement("script");

        script.setAttribute("class", "stripe-button");
        script.setAttribute( "src", "https://checkout.stripe.com/checkout.js");
        script.setAttribute("data-key", "pk_test_yThA2RySATebEbPZlLYTT4Km");
        script.setAttribute("data-description", "The Pragmatic Bookshelf");
        script.setAttribute("data-locale", "auto");
        

        document.getElementById("stripe-button").appendChild(script);
    }

    componentDidMount(){
        this.stripeScript();
    }
    
    render() {
        return(
            <div>
                <div id ="stripe-button"></div>
                
            </div>

        );
    }
}

export default CreditCardPayType