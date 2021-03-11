
<!DOCTYPE html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta http-equiv="X-UA-Compatible" content="IE-edge">
    <style type="text/css">
        
        /* Google Fonts */
        @import url('https://fonts.googleapis.com/css?family=Montserrat:100,200,300,400,500,600,700,800,900|Poppins:100,200,300,400,500,600,700,800,900&display=swap');
        /* Global CSS */
        html{
            scroll-behavior: smooth;
        }
        body{
            background: white;
            font-family: 'Poppins', sans-serif;
            font-size: 16px;
            color: #333333; 
        }
        h1, h2, h3, h4, h5, h6{
            font-family: 'Montserrat', sans-serif;
        }
        p{
            font-family: 'Poppins', sans-serif;
            color: #333333;     
        }
        .img-fluid{
            max-width: 100%;
            height: auto;
        }
        a{
            color: #158f38;
            text-decoration: none;
        }

        .section-one{
            background: #fff;
            width: 700px;
            display: block;
            margin: 0 auto;
            margin-top: 60px;
            padding: 50px;
        }
        .one{
            padding: 10px 35px 0px 35px;
        }
        .section-one p{
            color: #676666;
            font-size: 13px;
            margin-top: -15px;
        }
        .section-one h2{
            font-size: 36px;
            text-transform: uppercase;
            font-weight: 700;
            color: #fff;
    		text-align: left;
    		padding: 15px 10px;
    		margin: 0;
        }

        .section-one .two h1{
            color: #283592;
            font-size: 40px;
            font-weight: 800;
            margin-bottom: 0;
            padding-left: 0;
            margin-top: 0px;
        }
        .section-one .two p{
            color: #ec3485;
            font-weight: 700;
            font-size: 14px;
            margin: 0px;
        }
        .section-one .two .service{
            color: #434343;
            font-weight: 700;
        }
        .section-one .three p{
            color: #434343;
		    font-size: 13px;
		    margin-top: -10px;
		    font-weight: 500;
		    text-transform: uppercase;
        }
        .section-one .pad h4{
            margin-top: 0px;
        }
        .section-two{
            background: #fff;
            width: 800px;
            display: block;
            margin: 0 auto;
            padding: 0px 50px 30px 50px;
        }
        .two{
            padding: 0px 35px;
        }
        .section-two h2{
            color: #283592;
            font-size: 40px;
            font-weight: 800;
            margin-bottom: 0;
        }
        .section-two p{
            color: #ec3485;
            font-weight: 700;
            font-size: 14px;
        }
        .section-two .serv{
            margin-bottom: 0;
        }
        .section-two .service{
            color: #434343;
            font-weight: 700;
        }

        .table .thead-dark th {
            font-size: 14px;
            background: #158f38;
            color: #fff;
            padding: 8px 0px;
        }
        .table-bordered th {
            font-size: 14px;
            padding: 10px 0px;
			color: #158f38;
        }
        .table-bordered td {
            font-size: 14px;
            color: #158f38;
        }
        .table-bordered th {
            border: 1px solid #158f38;
            text-align: center;
        }
        .table-bordered td {
            border: 1px solid #158f38;
            text-align: center;
        }
        .table .thead-dark th {
            font-size: 14px;
        }
        .table-bordered th {
            font-size: 14px;
            font-weight: 500;
        }
        .table-bordered td {
            font-size: 14px;
            font-weight: 500;
        }


        .section-one .four p{
            color: #676666;
            font-size: 13px;
            margin-top: -15px;
        }
        .section-one .four h5{
            margin-top: -15px;
        }

        @media (max-width: 767.98px){
            .section-one{
                padding: 30px 10px 0px 10px;
                width: 100%;
                margin-top: 0px;
            }
            .section-one .col-md-2{
                width: 0%;
            }
            
            .one {
                
                padding: 20px 0px 0px 0px;
            }
            .section-one img {
                width: 200px;
                padding-bottom: 15px;
            }
            .section-one h2 {
                font-size: 19px;
            }

            .two {
                padding: 0px 0px;
            }


            .table .thead-dark th {
                font-size: 12px;
            }
            .table-bordered th {
                font-size: 12px;
            }
            .table-bordered {
                margin-left: -5px;
            }


        }

    </style>
  </head>
  <body>
    <section class="section-one">
        <div class="container">
            <div class="row one">
                <table width="100%" style="
							    background: #158f38;
							">
                        <tr>
                            <td align="left" style="width: 85%;vertical-align: middle;">
                                <h2>Invoice</h2>
                            </td>
                            <td align="left" style="width: 15%;vertical-align: middle;">
                                <img src="{{ asset('images/logo.jpeg') }}" class="img-fluid" style="
											    background: #fff;
                                                padding: 5px 20px;
                                                margin: 7px 0px 0px;
                                                border-radius: 15px;
                                                margin-left: -45px;
											">
                            </td>
                        </tr>
                </table>

                <table width="100%">
                        <tr class="three">
                            <td align="left" style="width: 50%;vertical-align: top;">
                                <h5>Order # {{ $orderDetails->id }}</h5>
                                <h5>Billed To: {{ $orderDetails->order_number }}</h5>
                                <h5 style="margin-top: -15px;">
                                    <address>
                                        <strong>Payment Method:</strong>
                                        {{ str_replace('_', ' ', $orderDetails->payment_method) }}
                                    </address>
                                </h5>
                            </td>
                            <td align="right" style="width: 50%;vertical-align: top;">
                                <h5>
                                    <address>
                                        <strong>Order Date:</strong><br>
                                        {{ date('d-M-Y', strtotime($orderDetails->created_at)) }}<br><br>
                                    </address>
                                </h5>
                            </td>
                        </tr>
                </table>
                <h3 style="text-align: center;">Order summary</h3>
                <table class="table table-bordered" width="100%">
                    <thead>
                    <tr>
                            <td style="width:18%"><strong>Product Name</strong></td>
                            <td style="width:18%" class="text-center"><strong>Size</strong></td>
                            <td style="width:18%" class="text-center"><strong>Price</strong></td>
                            <td style="width:18%" class="text-center"><strong>Qty</strong></td>
                            <td style="width:18%" class="text-right"><strong>Totals</strong></td>
                        </tr>
                    </thead>
                    <tbody>
                        @foreach($order_Items as $od)
                        <tr>
                            <td class="text-left">{{ $od->name }}</td>
                            <td class="text-center">{{ $od->size }}</td>
                            <td class="text-center">{{ $od->price }} Tk.</td>
                            <td class="text-center">{{ $od->quantity }}</td>
                            <td class="text-right">{{ $od->price * $od->quantity }} Tk.</td>
                        </tr>
                        @endforeach
                    </tbody>
                </table>
            </div>  
        </div>
    </section>
  </body>
</html>