@extends('ws-app')

@section('content')

    <div class="slider">

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

    </div>

    <div class="booking clearfix">

        <div class="key"><img src="{{ asset('/img/key.png') }}" alt=""></div>

        <div class="fast-booking">

        <h2>Быстрое</h2>
        <h2 class="second-line">Бронирование</h2>

        </div>

        <form id="booking-form">

            <span class="for-arrival-date">Дата заезда:</span>
            <input type="text" id="from" name="from" class="arrival-date">

            <span class="for-departure-date">Дата выезда:</span>
            <input type="text" id="to" name="to" class="departure-date">

            <input name="booking-btn" id="booking-btn" class="booking-btn" value="Бронировать" type="submit">

        </form>

    </div>

    <div class="content-main">

    <span>У нас вы найдете:</span>

    <ul class="clearfix">

        <li>
            @foreach($services as $service)

                <div class="img-block" style="background: url('img/service-1.jpg') no-repeat center;"></div>

                <div class="describe-block">

                    <h1>{{ $service -> getTranslate('title') }}</h1>

                    <section>{{ $service -> getTranslate('description') }}</section>

                    <a href="/services">Подробнее <div class="arrow-right"></div></a>

                </div>

            @endforeach

        </li>

    </ul>

    <div class="hotel-describe">

    <h1>{{ $hotel -> getTranslate('title') }}</h1>
    <section>{{ $hotel -> getTranslate('description') }}</section>

    </div>

    </div>

@endsection