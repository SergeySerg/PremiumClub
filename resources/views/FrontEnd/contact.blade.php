@extends('ws-app')

@section('content')

    <div class="content content-contact">

        <div class="content-title">

            <span class="category-name gallery-name">{{ trans('base.contacts') }}</span>

            <div class="content-title-line"><div class="flower-right"></div></div>

        </div>

        <div class="contact-block clearfix">

            <div class="contact-item clearfix">

                <ul>

                    <li class="clearfix">

                        <div class="map-label-contact"></div>
                        <div class="data">{{ $texts[6] }}</div>

                    </li>

                    <li class="clearfix">

                        <div class="phone-contact"></div>
                        <div class="data">{!! $texts[5] !!}</div>

                    </li>

                </ul>

            </div>

            <div class="contact-item clearfix">

                <ul>

                    <li class="clearfix">

                        <div class="letter-contact"></div>
                        <div class="data">{{ $texts[7] }}</div>

                    </li>

                    <li class="clearfix">

                        <div class="location-contact"></div>
                        <div class="data location">{{ $texts[9] }}</div>

                    </li>

                </ul>


            </div>

        </div>

    </div>

    <div class="map-contact">

        {!!  $texts[8] !!}

    </div>

@stop