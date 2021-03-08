@extends('layouts.app')

@section('content')
    <div class="container my-5">
        <h2 class="my-2">Welcome Back to Echem</h2>
        <div class="dash-info-cards my-4">
            <div class="card p-3 mr-3">
                <h2>Wallet Balance</h2>
                <p class="h4 text-success my-2">
                    @if ($wallet->count()>0)
                    {{ $wallet[0]->amount }}
                    @else
                        0
                    @endif
                    BDT</p>
            </div>
            <div class="card p-3 mr-3">
                <h2>Amount Spent</h2>
                <p class="h4 text-danger my-2">
                    @if ($wallet->count() > 0)
                    {{ $wallet[0]->amount_spend }}
                    @else
                        0
                    @endif
                    BDT</p>
            </div>
            <div class="card p-3 mr-3">
                <h2>Reward Points</h2>
                <p class="h4 text-success my-2">
                    @if ($reward->count()>0)
                    {{ $reward[0]->point }}
                    @else
                        0
                    @endif
                </p>
            </div>
            <div class="card p-3 mr-3">
                <h2>Pending Orders</h2>
                @php
                $count = 0;
                foreach ($orders as $order) {
                # code...
                if($order->status !== 'completed' and $order->status !== 'decline'){
                $count = $count + 1;
                }
                }
                @endphp
                <p class="h4 text-success my-2">{{ $count }}</p>
            </div>
        </div>
        {{--Affiliate--}}
        <h2 class="my-5">Affiliated Sales</h2>
        <table class="table border">
          <tr>
            <th>Product</th>
            <th>Commision</th>
          </tr>
          @foreach( $affiliate as $affi)
          <tr>
            <td>{{ $affi->product }}</td>
            <td>{{ $affi->affiliated_commision }} BDT</td>
          </tr>
          @endforeach
        </table>
        {{-- GIFT CARD AREA --}}
        <h2 class="my-5">Purchased Gift Cards</h2>
        <div class="gift-cards my-5">
            @foreach ($cards as $item)
                <div class="card p-3 align-items-center justify-content-center"
                    style="display: flex; flex-direction: column;">
                    <i data-feather='gift' class="my-2"></i>
                    <div class="info my-2 align-items-center justify-content-center"
                        style="display: flex; flex-direction: column;">
                        <p class="h4 text-center my-2">Code - {{ $item->uid }}</p>
                        <p class="h4 text-center text-success my-2">{{ $item->amount }}</p>
                        @if ($item->purchas_done)
                            <p class="badge badge-success p-2 my-2">Payment Complete</p>
                        @else
                            <p class="badge badge-danger p-2 my-2">Payment Not Complete</p>
                            <button class="btn btn-danger btn-sm" type="button" data-toggle="modal"
                                data-target="#exampleModal">Complete Payment</button>
                            <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog"
                                aria-labelledby="exampleModalLabel" aria-hidden="true">
                                <div class="modal-dialog" role="document">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <h5 class="modal-title" id="exampleModalLabel">To Complete Payment</h5>
                                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                <span aria-hidden="true" data-feather="x-square"></span>
                                            </button>
                                        </div>
                                        <div class="modal-body">
                                            <p class="text-danger my-1">bkash Merchant 01762204622 <br>
                                                Exim Bank Bangladesh Ltd. <br>
                                                Account Name: Everytech International <br>
                                                Account No: 02911100201711 <br>
                                                Branch: Bashundhara Road Branch</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        @endif
                    </div>
                </div>
            @endforeach
        </div>
        <div class="orders my-4">
            <h2 class="my-2">Pending Orders</h2>
            <div class="cards">
                @foreach ($orders as $order)
                    @if ($order->status !== 'completed' and $order->status !== 'decline')
                        <div class="card mr-2 my-2 p-3">
                            <p class="h4 text-center">{{ $order->order_number }}</p>
                            @if ($order->is_paid)
                                <p class="h6 my-2 badge badge-success p-2">Payment Complete</p>
                                <p class="h5 my-2 badge badge-danger p-2">{{ $order->status }}</p>
                            @else
                                <div class="row align-items-center justify-content-center w-100">
                                    <p class="h5 my-2 badge badge-danger p-2">{{ $order->status }}</p>
                                    <p class="badge badge-danger p-2 my-2">Payment Not Complete</p>
                                </div>
                                <button class="btn btn-primary btn-sm" type="button" data-toggle="modal"
                                    data-target="#exampleModal">Complete Payment</button>
                                <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog"
                                    aria-labelledby="exampleModalLabel" aria-hidden="true">
                                    <div class="modal-dialog" role="document">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <h5 class="modal-title" id="exampleModalLabel">To Complete Payment</h5>
                                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                    <span aria-hidden="true" data-feather="x-square"></span>
                                                </button>
                                            </div>
                                            <div class="modal-body">
                                                <p class="text-danger my-1">bkash Merchant 01762204622 <br>
                                                    Exim Bank Bangladesh Ltd. <br>
                                                    Account Name: Everytech International <br>
                                                    Account No: 02911100201711 <br>
                                                    Branch: Bashundhara Road Branch</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            @endif
                            <h4 class="my-3">Items</h4>
                            @foreach ($items as $itemes)
                                @foreach ($itemes as $item)

                                    @if ($order->id === $item->order_id)
                                        @php
                                        $prod = DB::table('products')->where('id', $item->product_id)->get()[0];
                                        @endphp

                                        <div class="order-items">
                                            <h5>{{ $prod->name }}</h5>
                                            <h5>{{ $item->quantity }}x</h5>
                                            <h5 class="text-danger">{{ $item->price }}</h5>
                                        </div>
                                    @endif
                                @endforeach
                            @endforeach
                        </div>
                    @endif
                @endforeach
            </div>
        </div>
        <div class="orders my-4">
            <h2 class="my-2">Completed Orders</h2>
            <div class="cards">
                @foreach ($orders as $order)
                    @if ($order->status === 'completed' or $order->status === 'decline')
                        <div class="card mr-2 my-2 p-3">
                            <p class="h4">{{ $order->order_number }}</p>
                            <p class="h5 my-2">{{ $order->status }}</p>
                        </div>
                    @endif
                @endforeach
            </div>
        </div>
    </div>
@endsection
