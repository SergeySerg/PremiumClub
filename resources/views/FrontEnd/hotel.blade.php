@extends('ws-app')

@section('content')

    {{--<div class="slider">

        <div id="webstudio-slider" style="display:none;">

            <img alt="Предусматриваем текст слайда c заголовком" src="{{ asset('/img/slide-2.jpg') }}"
            data-image="img/slide-2.jpg"
            id="sdsd"
            data-description="С кратким описанием и кнопкой подробнее"
            data-link="jhjhjhj111">

            <img alt="Image 1 Title" src="{{ asset('/img/slide-1.jpg') }}"
            id="kkk"
            data-image="img/slide-1.jpg"
            data-description="Image 1 Description"
            data-link="jhjhjhj222">

        </div>

    </div>--}}

    <iframe src="http://www.visitor.ee/360/pc/320/flash/360_320.html" style="width: 100%; height: 470px; border: none; margin-bottom: -5px" frameborder="none"></iframe>

    <div class="booking clearfix">

        <div class="key"><img src="{{ asset('/img/key.png') }}" alt=""></div>

        <div class="fast-booking">

            <h2>{{ trans('base.fast') }}</h2>
            <h2 class="second-line">{{ trans('base.booking') }}</h2>

        </div>

        <form id="booking-form">

            <span class="for-arrival-date">{{ trans('base.arrival') }}</span>
            <input type="text" id="from" name="from" class="arrival-date">

            <span class="for-departure-date">{{ trans('base.departure') }}</span>
            <input type="text" id="to" name="to" class="departure-date">

            <input name="booking-btn" id="booking-btn" class="booking-btn" value="{{ trans('base.booking') }}" type="submit">

        </form>

    </div>


    <div class="content-main">


    <span>{{ trans('base.hotelcontenttitle') }}</span>

    <ul class="clearfix">

            @foreach($services as $service)

                <li>

                    <div class="img-block" style="background: url('img/service-1.jpg') no-repeat center;"></div>

                    <div class="describe-block">

                        <h1>{{ str_limit($service -> getTranslate('title'),20,'...') }}</h1>

                        <section>{{ $service -> getTranslate('description') }}</section>

                        <a href="/services">{{ trans('base.more') }}<div class="arrow-right"></div></a>

                    </div>

                </li>

            @endforeach

    </ul>

    <div class="hotel-describe">

    <h1>{{ $hotel -> getTranslate('title') }}</h1>
    <section>{{ $hotel -> getTranslate('description') }}</section>

    </div>

    </div>

@endsection