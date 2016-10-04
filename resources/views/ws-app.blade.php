<!DOCTYPE html>
<html lang="ru">
<head>
	<meta charset="utf-8">
	<title>Premium Club</title>
	<meta name="description" content="">

	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
	<meta property="og:image" content="path/to/image.jpg">

	<link rel="shortcut icon" href="{{ asset('/img/favicon/favicon.ico') }}" type="image/x-icon">
	<link rel="apple-touch-icon" href="{{ asset('/img/favicon/apple-touch-icon.png') }}">
	<link rel="apple-touch-icon" sizes="72x72" href="{{ asset('img/favicon/apple-touch-icon-72x72.png') }}">
	<link rel="apple-touch-icon" sizes="114x114" href="{{ asset('/img/favicon/apple-touch-icon-114x114.png') }}">

	<link href="{{ asset('/css/main.css') }}" rel="stylesheet">
	<link href="{{ asset('/css/fonts.css') }}" rel="stylesheet">
	<link href="{{ asset('/libs/unitegallery/dist/css/unite-gallery.css') }}" rel="stylesheet">

	<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">

	<SCRIPT>
		var I18n = {
			'details': 'Подробнее'
		};
	</SCRIPT>

</head>

<body>

<div class="wrapper">

	<header>

		<div class="top-line clearfix">

			<div class="top-line_sub-block">

				<div class="top-line_booking"></div>

				<a href="#">Бронировать номер</a>

			</div>

			<div class="top-line_sub-block">

				<div class="top-line_address"></div>

				<div class="address">04060 <br>
					г.Яремче ул.Телиги
				</div>

			</div>

			<div class="top-line_sub-block sub-block-phones">

				<div class="top-line_phones"></div>

				<ul class="phones">

					<li><span class="phone-part">+38050</span> 3444896 <span class="phone-desc">( Бронирование )</span></li>
					<li><span class="phone-part">+38066</span> 7877998 <span class="phone-desc">( Администрация )</span></li>

				</ul>

			</div>

			<div class="top-line_sub-block sub-block-lang">

				<ul class="lang clearfix">

					<li><a href="#">ua</a></li>
					<li><a href="#">ru</a></li>
					<li><a href="#">eng</a></li>

				</ul>

			</div>

		</div>

		<div class="mnu-block">

			<nav>

				<a href="#">Главная</a>
				<a href="#">Номера</a>
				<a href="#">Услуги</a>
				<a href="#">События</a>
				<a href="#">Галерея</a>
				<a href="#">Контакты</a>

			</nav>

			<div class="logo-wrap">

				<div class="logo"><img src="{{ asset('/img/logo-header.png') }}" alt="Premium Club"></div>

				<div class="flower-left"></div>
				<div class="logo-title">Luxore HOTEL</div>
				<div class="flower-right"></div>

			</div>

		</div>

	</header>

	@yield('content')

	<footer>

		<div class="grey-block clearfix">

			<div class="hotel-photo">

				<div class="photo"></div>

				<h1>Фото отеля</h1>

				<div id="webstudio-bottom-gallery" style="display:none;">

					<img alt="Предусматриваем текст слайда c заголовком" src="{{ asset('/img/slide-2.jpg') }}"
						 data-image="{{ asset('/img/slide-2.jpg') }}"
						 data-description="С кратким описанием и кнопкой подробнее">

					<img alt="Image 1 Title" src="{{ asset('img/slide-1.jpg') }}img/slide-1.jpg"
						 data-image="img/slide-1.jpg"
						 data-description="Image 1 Description">

					<img alt="Предусматриваем текст слайда c заголовком" src="{{ asset('/img/slide-2.jpg') }}"
						 data-image="{{ asset('/img/slide-2.jpg') }}"
						 data-description="С кратким описанием и кнопкой подробнее">

					<img alt="Image 1 Title" src="{{ asset('img/slide-1.jpg') }}img/slide-1.jpg"
						 data-image="img/slide-1.jpg"
						 data-description="Image 1 Description">

					<img alt="Предусматриваем текст слайда c заголовком" src="{{ asset('/img/slide-2.jpg') }}"
						 data-image="{{ asset('/img/slide-2.jpg') }}"
						 data-description="С кратким описанием и кнопкой подробнее">

					<img alt="Image 1 Title" src="{{ asset('img/slide-1.jpg') }}img/slide-1.jpg"
						 data-image="img/slide-1.jpg"
						 data-description="Image 1 Description">

				</div>

			</div>

			<div class="callback-form">

				<div class="letter"></div>
				<h1>Напишите нам</h1>

				<form id="contactform">

					<input id="name" name="name" placeholder="Ваше имя" required type="text">

					<textarea name="comment" id="comment" placeholder="Текст сообщения"></textarea> <br>


					<input id="email" name="email" placeholder="Ваша почта" required type="email"> <br>

					<input name="submit" id="submit" tabindex="5" value="Отправить" type="submit">

				</form>

			</div>

		</div>

		<div class="footer-mnu-block">

			<div class="clearfix">

				<div class="logo-wrap">

					<div class="logo"><img src="{{ asset('/img/logo-footer.png') }}" alt="Premium Club"></div>
					<div class="logo-title">Luxore HOTEL</div>

				</div>

				<ul>
					<li><a href="#">Главная</a></li>
				</ul>

				<ul>
					<li><a href="#">Номера</a></li>
					<li><a href="#">Эконом</a></li>
					<li><a href="#">Люкс</a></li>
					<li><a href="#">Апартаменты</a></li>
				</ul>

				<ul>
					<li><a href="#">Услуги</a></li>
					<li><a href="#">Ресторан</a></li>
					<li><a href="#">Сауны</a></li>
					<li><a href="#">Для бизнеса</a></li>
					<li><a href="#">Спорт</a></li>
				</ul>

				<ul>
					<li><a href="#">События</a></li>
					<li><a href="#">Фото отчеты</a></li>
					<li><a href="#">Мероприятия</a></li>
					<li><a href="#">Гости отеля</a></li>
				</ul>

				<ul>
					<li><a href="#">Галерея</a></li>
				</ul>

				<ul>
					<li><a href="#">Контакты</a></li>
				</ul>

			</div>

			<div class="ft-line"><div class="flower-right-dark"></div></div>

		</div>

		<div class="top-line clearfix">

			<div class="top-line_sub-block sub-block-phones">

				<div class="top-line_phones"></div>

				<ul class="phones">

					<li><span class="phone-part">+38050</span> 3444896 <span class="phone-desc">( Бронирование )</span></li>
					<li><span class="phone-part">+38066</span> 7877998 <span class="phone-desc">( Администрация )</span></li>

				</ul>

			</div>

			<div class="top-line_sub-block">

				<div class="top-line_address"></div>

				<div class="address">04060 <br>
					г.Яремче ул.Телиги
				</div>

			</div>

			<div class="top-line_sub-block">

				<div class="top-line_booking"></div>

				<a href="#">Бронировать номер</a>

			</div>

		</div>

	</footer>

</div>

<script src="{{ asset('/libs/jquery/dist/jquery.min.js') }}"></script>
<script src="{{ asset('/libs/bxslider/webstudio-bxslider.js') }}"></script>
<script src="{{ asset('/js/common.js') }}"></script>

<script src="{{ asset('/libs/unitegallery/dist/themes/default/ug-theme-default.js') }}"></script>
<script src="{{ asset('/libs/unitegallery/dist/themes/slider/ug-theme-slider.js') }}"></script>
<script src="{{ asset('/libs/unitegallery/dist/themes/tiles/ug-theme-tiles.js') }}"></script>
<script src="{{ asset('/libs/unitegallery/dist/themes/tilesgrid/ug-theme-tilesgrid.js') }}"></script>
<script src="{{ asset('/libs/unitegallery/dist/themes/compact/ug-theme-compact.js') }}"></script>
<script src="{{ asset('/libs/unitegallery/dist/js/unitegallery.js') }}"></script>

<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
</body>
</html>