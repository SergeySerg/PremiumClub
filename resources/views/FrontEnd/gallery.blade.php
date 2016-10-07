@extends('ws-app')

@section('content')

    <div class="content">

        <div class="content-title">

            <span class="category-name gallery-name">{{ trans('base.gallerycontenttitle') }}</span>

            <div class="content-title-line"><div class="flower-right"></div></div>

        </div>
        @foreach($gallery as $gall)
            <div class="gallery-block">

                <h2>{{ $gall -> getTranslate('title') }}</h2>

                <div id="events-photo-id-{{$gall -> id}}" class="webstudio-gallery" style="display:none;">

                    @foreach($gall -> getImages() as $imgSrc)

                        <img alt="Image 2 Title" src="/{{ $imgSrc }}"
                             data-image="/{{ $imgSrc }}">

                    @endforeach

                </div>

            </div>
        @endforeach

    </div>

@stop