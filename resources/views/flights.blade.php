
@extends('template.master')

@section('content')
    <header id="home">
        <div class="navbar navbar-fixed-top navbar-default">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed " data-toggle="collapse"
                        data-target="#navbar-collapse-1" aria-expanded="false">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a href="#" class="h3 navbar-brand">Vé máy bay trực tuyến</a>
            </div>
            <div class="collapse navbar-collapse text-uppercase" id="navbar-collapse-1">
                <ul class="nav navbar-nav navbar-right">
                    <li><a href="#">Đặt vé</a></li>
                    <li><a href="#">Giới thiệu</a></li>
                    <li><a href="#">Sổ tay du lịch</a></li>
                    <li><a href="#">Liên hệ</a></li>
                </ul>
            </div>
        </div>
    </header>
{{--content--}}
{{--slide--}}
    <div id="myCarousel" class="carousel slide" data-ride="carousel">
        <!-- Wrapper for slides -->
        <div class="carousel-inner" role="listbox">
            <div class="item active">
                <img src="images/slide2.jpg" alt="slide2">
            </div>
            <div class="item">
                <img src="images/slide4.jpg" alt="slide4">
            </div>
            <div class="item">
                <img src="images/slide3.jpg" alt="slide3">
            </div>
        </div>
        <!-- Left and right controls -->
        <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
            <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
        </a>
        <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
            <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
        </a>
    </div>

    <div class="bg-content">
        <div class="pd-content">
            <div class="tittle">
                <div class="row info-tittle">
                    <div class="col-sm-9">
                        <div class="info-search">
                            <ul class="list-inline h3">
                                <li>{{$from}} - Sân bay</li>
                                <li><span class="glyphicon glyphicon-transfer"></span></li>
                                <li>{{$to}} - Sân bay</li>
                            </ul>
                            <ul class="list-inline">
                                <li>{{$date}} @if($returnDate != 'NA') - {{$returnDate}}@endif</li>
                                <li>
                                    @if (($adult > 0) && ($adult <= 7))
                                        {{$adult}} ve nguoi lon
                                    @endif
                                    @if (($child > 0) && ($child <= 7))
                                        , {{$child}} ve trẻ em
                                    @endif
                                    @if (($baby > 0) && ($baby <= 2))
                                        , {{$baby}} ve em bé
                                    @endif
                                </li>
                                <li>hang ghe</li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-sm-3 text-right">
                        <button class="btn btn-primary" id="btnFind" data-toggle="collapse" data-target="#findFlights">Đổi tìm kiếm</button>
                    </div>
                </div>
                <div class="collapse" id="findFlights">
                    <div id="flights" class="tab-pane fade in active">
                        <form method="post" action="{{route('postHome')}}" class=" findFlights-flights">
                            {{ csrf_field() }}
                            <div class="row form-group">
                                {{--From ...city To ... city--}}
                                <div class="col-sm-3 col-location">
                                    <h5>Điểm đi</h5>
                                    <div class="input-group">
                                <span class="input-group-addon" id="add-on-from">
                                    <span class="glyphicon glyphicon-map-marker"></span>
                                </span>
                                        <input id="id_from" type="text" class="form-control" list="id_locations_from"
                                               name="txtFrom" aria-describedby="add-on-from" required>
                                    </div>
                                    <datalist id="id_locations_from" class="locations_from list-unstyled">
                                        @foreach($locations as $location)
                                            <option class="li-locations">{{$location->Name}}({{$location->Location_ID}})</option>
                                        @endforeach
                                    </datalist>
                                    @if($errors->has('txtFrom'))
                                        <label class="text-danger">{!! $errors->first('txtFrom') !!}</label>
                                    @endif
                                    <h5>Điểm đến</h5>
                                    <div class="input-group">
                                <span class="input-group-addon" id="add-on-to">
                                    <span class="glyphicon glyphicon-map-marker"></span>
                                </span>
                                        <input id="id-to" type="text" class="form-control" list="id_locations_to"
                                               name="txtTo" aria-describedby="add-on-from" required>
                                    </div>
                                    <datalist id="id_locations_to" class="locations_to list-unstyled">
                                        @foreach($locations as $location)
                                            <option class="li-locations">{{$location->Name}}({{$location->Location_ID}})</option>
                                        @endforeach
                                    </datalist>
                                    @if($errors->has('txtTo'))
                                        <label class="text-danger">{!! $errors->first('txtTo') !!}</label>
                                    @endif
                                </div>
                                {{--Date and returnDate--}}
                                <div class="col-sm-3">
                                    <h5>Ngày đi</h5>
                                    <div class="input-group">
                                <span class="input-group-addon" id="add-on-date">
                                    <span class="glyphicon glyphicon-calendar"></span>
                                </span>
                                        <input type="date" class="form-control" id="toDate" name="txtDate" aria-describedby="add-on-date" required/>
                                    </div>
                                    <h5><input type="checkbox" id="checkbox" onclick="myFunc()" name="cbReturnDate"> Ngày về</h5>
                                    <div id="idReturnDate">
                                        <div class="input-group">
                                <span class="input-group-addon" id="add-on-return-date">
                                    <span class="glyphicon glyphicon-calendar"></span>
                                </span>
                                            <input type="date" class="form-control" id="toReturnDate" name="txtReturnDate"
                                                   aria-describedby="add-on-return-date" required/>
                                        </div>
                                    </div>
                                </div>

                                <div class="col-sm-3">
                                    <h5>Người lớn</h5>
                                    <div class="input-group selects">
                                        <select name="txtAdult" class="form-control">
                                            <option value="1" selected>1</option>
                                            <option value="2">2</option>
                                            <option value="3">3</option>
                                            <option value="4">4</option>
                                            <option value="5">5</option>
                                            <option value="6">6</option>
                                            <option value="7">7</option>
                                        </select>
                                    </div>
                                    <h5>Trẻ em</h5>
                                    <div class="input-group selects">
                                        <select name="txtChild" class="form-control">
                                            <option value="0" selected>0</option>
                                            <option value="1">1</option>
                                            <option value="2">2</option>
                                            <option value="3">3</option>
                                            <option value="4">4</option>
                                            <option value="5">5</option>
                                            <option value="6">6</option>
                                            <option value="7">7</option>
                                        </select>
                                    </div>
                                </div>

                                <div class="col-sm-3">
                                    <h5>Em bé(< 2 tuổi)</h5>
                                    <div class="input-group selects">
                                        <select name="txtBaby" class="form-control">
                                            <option value="0" selected>0</option>
                                            <option value="1">1</option>
                                            <option value="2">2</option>
                                        </select>
                                    </div>
                                    <h5 class="hide-h5">button find flight</h5>
                                    <div class="text-right" >
                                        <input type="submit" class="btn btn-info" name="btnFindFlights" value="Tìm chuyến bay">
                                    </div>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
            <div class="result-search">
                <div class="flight-info">
                    <ul class="list-inline flights-tittle">
                        <li><h3>Chuyến đi</h3></li>
                        <li>
                            <blockquote>
                                <ul class="list-inline">
                                    <li>{{$from}} - Sân bay</li>
                                    <li><span class="glyphicon glyphicon-transfer"></span></li>
                                    <li>{{$to}} - Sân bay</li>
                                </ul>
                                <label>{{$date}}</label>
                            </blockquote>
                        </li>
                    </ul>
                    <div class="row text-center thead ">
                        <div class="col-sm-2">Hãng</div>
                        <div class="col-sm-2">Giờ cất cánh</div>
                        <div class="col-sm-2">Giờ hạ cánh</div>
                        <div class="col-sm-2">Thời gian bay</div>
                        <div class="col-sm-2">Giá vé</div>
                        <div class="col-sm-2"></div>
                    </div>
                    <div class="list-unstyled">
                        @foreach($flights as $flight)
                            <div class="flight">
                                <div class="row text-center">
                                    <div class="col-sm-2"><img src="https://ibev2.maybay.net/Statics/Images/Airline/vj.gif" alt="name" ></div>
                                    <div class="col-sm-2">{{$flight->from}} <br> {{$flight->Departs_at}}</div>
                                    <div class="col-sm-2">{{$flight->to}} <br> {{$flight->Arrives_at}}</div>
                                    <div class="col-sm-2">{{$flight->Model_ID}} <br>
                                        <label data-toggle="collapse" data-target="#flightDetail" class="small">Chi tiết
                                            <span class="glyphicon glyphicon-triangle-right"></span>
                                        </label>
                                    </div>
                                    <div class="col-sm-2">Giá vé VND</div>
                                    <div class="col-sm-2 text-right">
                                        <input type="submit" class="form-control btn btn-primary" value="Chọn">
                                    </div>
                                </div>
                                <div class="collapse" id="flightDetail">
                                    <form class="detail" method="get" action="{{route('info')}}">
                                        <div class="row">
                                            <div class="col-sm-1"><img src="https://ibev2.maybay.net/Statics/Images/Airline/vj.gif" alt="name" ></div>
                                            <div class="col-sm-2 text-right">
                                                <ul class="list-unstyled">
                                                    <li value="{{$from}}" class="text-capitalize">{{$from}}</li>
                                                    <li>sân bay</li>
                                                    <li value="{{$date}}" class="time-date">time - {{$date}}</li>
                                                </ul>
                                            </div>
                                            <div class="col-sm-4 text-center">
                                                <ul class="list-unstyled">
                                                    <li value="">Chuyến bay: </li>
                                                    <li><i class="material-icons">flight_takeoff</i></li>
                                                    <li value="">thời gian bay: </li>
                                                </ul>
                                            </div>
                                            <div class="col-sm-2 text-left">
                                                <ul class="list-unstyled">
                                                    <li value="{{$to}}" class="text-capitalize">{{$to}}</li>
                                                    <li>sân bay</li>
                                                    <li value="{{$date}}" class="time-date">time - ngay tới</li>
                                                </ul>
                                            </div>
                                            <div class="col-sm-2">
                                                <ul class="list-unstyled">
                                                    <li value="">hạng chỗ: </li>
                                                    <li value="">Máy bay: </li>
                                                    <li value="">Hành lý xách tay: </li>
                                                </ul>
                                            </div>
                                        </div>
                                        <div class="flight-detail-info">
                                                <table class="table-detail">
                                                    <tr>
                                                        <th>Hành khách</th>
                                                        <th class="text-center">Số lượng</th>
                                                        <th class="text-center">Giá vé đã gồm thuế</th>
                                                        <th class="text-right">Tổng giá vé</th>
                                                    </tr>
                                                    <tr>
                                                        <td>Người lớn</td>
                                                        <td class="text-center">{{$adult}}</td>
                                                        <td class="text-center">1334343</td>
                                                        <td class="text-right">42423432</td>
                                                    </tr>
                                                    @if (($child > 0) && ($child <= 7))
                                                        <tr>
                                                            <td>Trẻ em</td>
                                                            <td class="text-center">{{$child}}</td>
                                                            <td class="text-center">1334343</td>
                                                            <td class="text-right">42423432</td>
                                                        </tr>
                                                    @endif
                                                    @if (($baby > 0) && ($baby <= 2))
                                                        <tr>
                                                            <td>Em bé</td>
                                                            <td class="text-center">{{$baby}}</td>
                                                            <td class="text-center">1334343</td>
                                                            <td class="text-right">42423432</td>
                                                        </tr>
                                                    @endif
                                                </table>
                                            </div>
                                    </form>
                                </div>
                            </div>
                        @endforeach
                    </div>
                </div>
                @if($returnDate != 'NA')
                    <div class="returnFlight-info">
                        <ul class="list-inline flights-tittle">
                            <li><h3>Chuyến về</h3></li>
                            <li>
                                <blockquote>
                                    <ul class="list-inline">
                                        <li>{{$to}} - Sân bay</li>
                                        <li><span class="glyphicon glyphicon-transfer"></span></li>
                                        <li>{{$from}} - Sân bay</li>
                                    </ul>
                                    <label>{{$returnDate}}</label>
                                </blockquote>
                            </li>
                        </ul>
                        <div class="row text-center thead ">
                            <div class="col-sm-2">Hãng</div>
                            <div class="col-sm-2">Giờ cất cánh</div>
                            <div class="col-sm-2">Giờ hạ cánh</div>
                            <div class="col-sm-2">Thời gian bay</div>
                            <div class="col-sm-2">Giá vé</div>
                            <div class="col-sm-2"></div>
                        </div>
                        <ul class="list-unstyled">
                            <div class="flight">
                                <div class="row text-center">
                                    <div class="col-sm-2"><img src="https://ibev2.maybay.net/Statics/Images/Airline/vj.gif" alt="name" ></div>
                                    <div class="col-sm-2">{{$to}} <br> time bay</div>
                                    <div class="col-sm-2">{{$from}} <br> time hạ cánh</div>
                                    <div class="col-sm-2">tên chuyến bay <br>
                                        <label data-toggle="collapse" data-target="#flightReturnDetail" class="small">Chi tiết
                                            <span class="glyphicon glyphicon-triangle-right"></span>
                                        </label>
                                    </div>
                                    <div class="col-sm-2">Giá vé VND</div>
                                    <div class="col-sm-2 text-right">
                                        <button class="btn btn-primary">Chọn</button>
                                    </div>
                                </div>
                                <div class="collapse" id="flightReturnDetail">
                                    <div class="detail">
                                        <div class="row">
                                            <div class="col-sm-1"><img src="https://ibev2.maybay.net/Statics/Images/Airline/vj.gif" alt="name" ></div>
                                            <div class="col-sm-2 text-right">
                                                <ul class="list-unstyled">
                                                    <li value="{{$to}}" class="text-capitalize">{{$to}}</li>
                                                    <li>sân bay</li>
                                                    <li value="{{$returnDate}}" class="time-date">time - {{$returnDate}}</li>
                                                </ul>
                                            </div>
                                            <div class="col-sm-4 text-center">
                                                <ul class="list-unstyled">
                                                    <li value="">Chuyến bay: </li>
                                                    <li><i class="material-icons">flight_takeoff</i></li>
                                                    <li value="">thời gian bay: </li>
                                                </ul>
                                            </div>
                                            <div class="col-sm-2 text-left">
                                                <ul class="list-unstyled">
                                                    <li value="{{$from}}" class="text-capitalize">{{$from}}</li>
                                                    <li>sân bay</li>
                                                    <li value="{{$returnDate}}" class="time-date">time - ngay tới</li>
                                                </ul>
                                            </div>
                                            <div class="col-sm-2">
                                                <ul class="list-unstyled">
                                                    <li value="">hạng chỗ: </li>
                                                    <li value="">Máy bay: </li>
                                                    <li value="">Hành lý xách tay: </li>
                                                </ul>
                                            </div>
                                        </div>
                                        <div class="flight-detail-info">
                                            <table class="table-detail">
                                                <tr>
                                                    <th>Hành khách</th>
                                                    <th class="text-center">Số lượng</th>
                                                    <th class="text-center">Giá vé đã gồm thuế</th>
                                                    <th class="text-right">Tổng giá vé</th>
                                                </tr>
                                                <tr>
                                                    <td>Người lớn</td>
                                                    <td  class="text-center">{{$adult}}</td>
                                                    <td class="text-center">1334343</td>
                                                    <td class="text-right">42423432</td>
                                                </tr>
                                                @if(($child > 0) && ($child <= 7))
                                                    <tr>
                                                        <td>Trẻ em</td>
                                                        <td class="text-center">{{$child}}</td>
                                                        <td class="text-center">1334343</td>
                                                        <td class="text-right">42423432</td>
                                                    </tr>
                                                @endif
                                                @if (($baby > 0) && ($baby <= 2))
                                                    <tr>
                                                        <td>Em bé</td>
                                                        <td class="text-center">{{$baby}}</td>
                                                        <td class="text-center">1334343</td>
                                                        <td class="text-right">42423432</td>
                                                    </tr>
                                                @endif
                                            </table>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </ul>
                    </div>
                @endif
            </div>
        </div>
    </div>
@endsection
