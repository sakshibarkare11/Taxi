<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://checkout.razorpay.com/v1/checkout.js"></script>
<script>
function razorpayPayment() {
	  var options = {
	      "key": "rzp_test_QtSj82T0oZWKkI",
	      "amount": "10000", // 2000 paise = INR 20
	      "currency": "INR",
	      "name": "Prathmesh Gonjare",
	      "description": "Purchase Description",
	      "image": "",
	      "handler": function (response) {
	          // Handle the payment response
	          alert(response.razorpay_payment_id);
	      },
	      "prefill": {
	          "name": "Prathmesh Gonjare",
	          "email": "prathmesh.gon@gmail.com"
	      },
	      "notes": {
	          "address": "Razorpay Corporate Office"
	      },
	      "theme": {
	          "color": "#F37254"
	      }
	  };

	  var rzp1 = new Razorpay(options);
	  rzp1.open();
	}
</script>
</head>
<body>
<button onclick="razorpayPayment()">Pay now</button>
</body>
</html>