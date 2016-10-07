@extends('ws-app')

@section('content')

    <div class="content-rooms">

        <div class="content-title">

            <span class="category-name">{{ trans('base.roomscontenttitle') }}</span>

            <div class="content-title-line"><div class="flower-right"></div></div>

        </div>
        @foreach($rooms as $room)

            <div class="rooms-block clearfix">

                <div class="clearfix">

                    <div class="img-block">

                        <div id="webstudio-gallery-id-{{ $room -> id }}" class="webstudio-gallery-rooms" style="display:none;">

                            @foreach($room -> getImages() as $imgSrc)

                                <img alt="Image 2 Title" src="/{{ $imgSrc }}"
                                 data-image="/{{ $imgSrc }}">

                            @endforeach

                        </div>

                    </div>

                    <div class="describe-block">

                        <h1>{{ $room -> getTranslate('title') }}</h1>

                        <span>{{ trans('base.quantity') }}:<span class="qnty">{{ $room -> quantity }}</span></span>

                        <div class="describe-room">

                            {!! $room -> getTranslate('description') !!}

                        </div>

                    </div>

                    <div class="price-block">

                        <span>{{ trans('base.cost') }}:<span class="price">{{ $room -> price }} {{ trans('base.currency') }}</span></span>

                        <a class="booking-btn-in-rooms" href="/{{ App::getLocale() }}/booking">{{ trans('base.booking') }}</a>

                    </div>

                </div>

                <div class="r-tab conveniences-line">

                    <span>{{ trans('base.conveniences') }}</span>

                    <div class="arrow-conveniences"></div>

                </div>

                <div class="conveniences-block clearfix">

                    <ul>
                        <li>42” LCD-телевизор и DVD-проигрыватель</li>
                        <li>Музыкальная док-станция</li>
                        <li>Планшет Samsung Galaxy Tab – электронная гостевая директория</li>
                        <li>Рабочий стол с канцелярскими принадлежностями</li>
                        <li>3 многоканальных телефона с голосовой почтой</li>
                        <li>Чайник и наборы для чая и кофе</li>
                        <li>Мини-бар</li>
                        <li>Большой шкаф</li>
                        <li>Горизонтальный сейф в номере</li>
                        <li>Рожок</li>
                    </ul>

                    <ul>
                        <li>42” LCD-телевизор и DVD-проигрыватель</li>
                        <li>Музыкальная док-станция</li>
                        <li>Планшет Samsung Galaxy Tab – электронная гостевая директория</li>
                        <li>Рабочий стол с канцелярскими принадлежностями</li>
                        <li>3 многоканальных телефона с голосовой почтой</li>
                    </ul>

                    <ul>
                        <li>Рабочий стол с канцелярскими принадлежностями</li>
                        <li>3 многоканальных телефона с голосовой почтой</li>
                        <li>Чайник и наборы для чая и кофе</li>
                        <li>Мини-бар</li>
                        <li>Большой шкаф</li>
                        <li>Горизонтальный сейф в номере</li>
                        <li>Рожок</li>
                    </ul>

                </div>

            </div>

        @endforeach

    </div>




@stop