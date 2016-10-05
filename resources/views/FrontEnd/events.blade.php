@extends('ws-app')

@section('content')

    <div class="content">

        <div class="content-title">

            <span class="category-name">События</span>

            <div class="content-title-line"><div class="flower-right"></div></div>

        </div>

        @foreach($events as $event)

            <div class="events-block">

                <h2>{{$event -> getTranslate('title')}}</h2>

                <div class="date-wrap">

                    <div class="calendar"></div>

                    <span class="date">{{$event -> date }}</span>

                </div>

                <div class="events-description">
                    {{$event -> getTranslate('description')}}
                </div>

                <div id="events-photo-id-{{$event -> id}}" class="webstudio-gallery" style="display:none;">

                    <img alt="Предусматриваем текст слайда c заголовком"
                         src="img/slide-2.jpg"
                         data-image="img/slide-2.jpg" >

                </div>

            </div>

        @endforeach

    </div>

@stop