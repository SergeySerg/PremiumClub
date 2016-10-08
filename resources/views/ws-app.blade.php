<!DOCTYPE html>
<html lang="{{ App::getLocale() }}">
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

				<a href="/{{ App::getLocale() }}/booking">{{ trans('base.booking') }}</a>

			</div>

			<div class="top-line_sub-block">

				<div class="top-line_address"></div>

				<div class="address">{{ trans('base.address') }}</div>

			</div>

			<div class="top-line_sub-block sub-block-phones">

				<div class="top-line_phones"></div>

				<ul class="phones">

					<li><span class="phone-part">+38067</span> 3433400<span class="phone-desc">( {{ trans('base.booking') }} )</span></li>

				</ul>

			</div>

			<div class="top-line_sub-block sub-block-lang">


				<ul class="lang clearfix">
				@foreach($langs as $lang)
					<li><a href="/{{$lang -> lang}}">{{$lang -> lang}}</a></li>
				@endforeach
				</ul>

			</div>

		</div>

		<div class="mnu-block">

			<nav>

				<a href="/">{{ trans('base.hotel') }}</a>
				<a href="/{{ App::getLocale() }}/rooms">{{ trans('base.rooms') }}</a>
				<a href="/{{ App::getLocale() }}/services">{{ trans('base.services') }}</a>
				<a href="/{{ App::getLocale() }}/events">{{ trans('base.events') }}</a>
				<a href="/{{ App::getLocale() }}/gallery">{{ trans('base.gallery') }}</a>
				{{--<a href="#" onclick="alert('На стадії наповнення');">{{ trans('base.gallery') }}</a>--}}
				<a href="/{{ App::getLocale() }}/contact">{{ trans('base.contacts') }}</a>

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

				<h1>{{ trans('base.hotelphoto') }}</h1>

				<div id="webstudio-bottom-gallery" style="display:none;">

					@foreach($hotel -> getImages() as $imgSrc)

						<img alt="Image 2 Title" src="/{{ $imgSrc }}"
							 data-image="/{{ $imgSrc }}">

					@endforeach

				</div>

			</div>

			<div class="callback-form">

				<div class="letter"></div>
				<h1>{{ trans('base.callback') }}</h1>

				<form id="contactform">

					<input id="name" name="name" placeholder="{{ trans('base.name') }}" required type="text">

					<textarea name="comment" id="comment" placeholder="{{ trans('base.message') }}"></textarea> <br>


					<input id="email" name="email" placeholder="{{ trans('base.email') }}" required type="email"> <br>

					<input name="submit" id="submit" tabindex="5" value="{{ trans('base.send') }}" type="submit">

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
					<li><a href="/{{ App::getLocale() }}/hotel">{{ trans('base.hotel') }}</a></li>
				</ul>

				<ul>
					<li><a href="/{{ App::getLocale() }}/rooms">{{ trans('base.rooms') }}</a></li>

                    @foreach($rooms as $room)

                        <li><a href="/{{ App::getLocale() }}/rooms/#room-{{ $room -> id }}">{{ $room -> getTranslate('title') }}</a></li>

                    @endforeach

				</ul>

				<ul>
					<li><a href="/{{ App::getLocale() }}/services">{{ trans('base.services') }}</a></li>

                    @foreach($services as $service)

                        <li><a href="/{{ App::getLocale() }}/services/#service-{{ $service -> id }}">{{ $service -> getTranslate('title') }}</a></li>

                    @endforeach

                </ul>

				<ul>
					<li><a href="/{{ App::getLocale() }}/events">{{ trans('base.events') }}</a></li>
				</ul>

				<ul>
					<li><a href="/{{ App::getLocale() }}/gallery">{{ trans('base.gallery') }}</a></li>
				</ul>

				<ul>
					<li><a href="/{{ App::getLocale() }}/contact">{{ trans('base.contacts') }}</a></li>
				</ul>

			</div>

			<div class="ft-line"><div class="flower-right-dark"></div></div>

		</div>

		<div class="top-line clearfix">

			<div class="top-line_sub-block sub-block-phones">

				<div class="top-line_phones"></div>

				<ul class="phones">

                    <li><span class="phone-part">+38067</span> 3433400 <span class="phone-desc">( {{ trans('base.booking') }} )</span></li>

				</ul>

			</div>

			<div class="top-line_sub-block">

				<div class="top-line_address"></div>

                <div class="address">{{ trans('base.address') }}</div>

			</div>

			<div class="top-line_sub-block">

				<div class="top-line_booking"></div>

				<a href="#">{{ trans('base.booking') }}</a>

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