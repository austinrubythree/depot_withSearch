import React from 'react'
import StripeCheckout from 'react-stripe-checkout'


class CreditCardPayType extends React.Component{
    // componentDidMount(){
    //     onToken = (token) => {
    //         console.log('creditCardPayType')
    //         fetch('/charges', {
    //             method: 'POST',
    //             body: JSON.stringify(token),
    //         }).then(response => {
    //             response.json().then(data => {
    //                 alert(`we are in business, ${data.email}`);
    //             })
    //         })
    //     }
    // }
    
    render() {
        return(
            <div>
                
                <StripeCheckout
                    // name = "The Pragmatic Bookshelf"
                    // stripeKey = "pk_test_yThA2RySATebEbPZlLYTT4Km"
                    // token = {this.onToken}
                    // amount = "500"
                    // currency = "USD"
                    // description = "check out" 
                    // email = "info@therubythree.com"

                    />
            </div>
        );
    }
}

export default CreditCardPayType