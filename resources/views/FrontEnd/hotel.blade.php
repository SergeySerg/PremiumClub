@extends('wp-app')

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

    <div class="key"><img src="img/key.png" alt=""></div>

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

    <div class="img-block" style="background: url('img/service-1.jpg') no-repeat center;"></div>

    <div class="describe-block">

    <h1>Конференц зал</h1>
    <section>Частная усадьба "Хатки на пеньках" находится недалеко от центра поселка Ворохта. Гостям предлагается проживание в 3 двухуровневых коттеджах на 4 места, в 2-этажном коттедже на 62-этажном коттедже на 62-этажном коттедже на 6 </section>

    <a href="#">Подробнее <div class="arrow-right"></div></a>

    </div>

    </li>

    <li>

    <div class="img-block" style="background: url('img/service-2.jpg') no-repeat center;"></div>

    <div class="describe-block">

    <h1>Конференц зал</h1>
    <section>Частная усадьба "Хатки на пеньках" находится недалеко от центра поселка Ворохта. Гостям предлагается проживание в 3 двухуровневых коттеджах на 4 места, в 2-этажном коттедже на 62-этажном коттедже на 62-этажном коттедже на 6 </section>

    <a href="#">Подробнее <div class="arrow-right"></div></a>

    </div>

    </li>
    <li>

    <div class="img-block" style="background: url('img/service-1.jpg') no-repeat center;"></div>

    <div class="describe-block">

    <h1>Конференц зал</h1>
    <section>Частная усадьба "Хатки на пеньках" находится недалеко от центра поселка Ворохта. Гостям предлагается проживание в 3 двухуровневых коттеджах на 4 места, в 2-этажном коттедже на 62-этажном коттедже на 62-этажном коттедже на 6 </section>

    <a href="#">Подробнее <div class="arrow-right"></div></a>

    </div>

    </li>

    <li>

    <div class="img-block" style="background: url('img/service-2.jpg') no-repeat center;"></div>

    <div class="describe-block">

    <h1>Конференц зал</h1>
    <section>Частная усадьба "Хатки на пеньках" находится недалеко от центра поселка Ворохта. Гостям предлагается проживание в 3 двухуровневых коттеджах на 4 места, в 2-этажном коттедже на 62-этажном коттедже на 62-этажном коттедже на 6 </section>

    <a href="#">Подробнее <div class="arrow-right"></div></a>

    </div>

    </li>
    <li>

    <div class="img-block" style="background: url('img/service-1.jpg') no-repeat center;"></div>

    <div class="describe-block">

    <h1>Конференц зал</h1>
    <section>Частная усадьба "Хатки на пеньках" находится недалеко от центра поселка Ворохта. Гостям предлагается проживание в 3 двухуровневых коттеджах на 4 места, в 2-этажном коттедже на 62-этажном коттедже на 62-этажном коттедже на 6 </section>

    <a href="#">Подробнее <div class="arrow-right"></div></a>

    </div>

    </li>

    <li>

    <div class="img-block" style="background: url('img/service-2.jpg') no-repeat center;"></div>

    <div class="describe-block">

    <h1>Конференц зал</h1>
    <section>Частная усадьба "Хатки на пеньках" находится недалеко от центра поселка Ворохта. Гостям предлагается проживание в 3 двухуровневых коттеджах на 4 места, в 2-этажном коттедже на 62-этажном коттедже на 62-этажном коттедже на 6 </section>

    <a href="#">Подробнее <div class="arrow-right"></div></a>

    </div>

    </li>

    </ul>

    <div class="hotel-describe">

    <h1>Заголовок первого порядка для сео текста</h1>
    <section>Частная усадьба "Хатки на пеньках" находится недалеко от центра поселка Ворохта. Гостям предлагается проживание в 3 двухуровневых коттеджах на 4 места, в 2-этажном коттедже на 6 мест, и 2-этажном коттедже с сауной. На территории отеля "Хатки на пеньках" есть парковка, работает сауна, действует прокат лыж, возможно предоставление услуг по стирке и глажке одежды, трансфер к подъемникам, организация экскурсий. Отель расположен в 250 м от трассы Татаров — Верховина и центра поселка, расстояние до подъемников - Ворохта «Авангард» - 200 м, Горнолыжный курорт «Буковель» - 25 км, с.Яблуница - 28 км, Яремче - 30 км. До ближайшего кафе, ресторана, магазина</section>

    </div>

    </div>

@endsection