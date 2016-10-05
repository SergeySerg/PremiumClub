@extends('ws-app')

@section('content')

    <div class="content-rooms">

        <div class="content-title">

            <span class="category-name">Номера</span>

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

                        <span>Номеров:<span class="qnty">{{ $room -> quantity }}</span></span>

                        <div class="describe-room">

                            Просторные номера ”Супериор” позволят гостям ощутить исключительный комфорт в элегантной атмосфере роскоши. В каждом номере имеются большие удобные кровати, современная техника, отделанная мрамором ванная комната с отдельным душем и отапливаемым полом.

                            <table>
                                <tr>
                                    <td class="option-name">Кровать</td>
                                    <td>Кинг / Две отдельные кровати</td>
                                </tr>
                                <tr>
                                    <td class="option-name">Вместительность</td>
                                    <td>2 чел</td>
                                </tr>
                                <tr>
                                    <td class="option-name">Размер</td>
                                    <td>42-48 м2</td>
                                </tr>
                            </table>

                        </div>

                    </div>

                    <div class="price-block">

                        <span>Стоимость:<span class="price">{{ $room -> price }} грн</span></span>

                        <a class="booking-btn-in-rooms" href="#">Бронировать</a>

                    </div>

                </div>

                <div class="r-tab conveniences-line">

                    <span>Удобства</span>

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