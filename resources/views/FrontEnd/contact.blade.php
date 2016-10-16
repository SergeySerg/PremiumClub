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
                        <div class="data"> @if (isset($texts['header.address'])){{ $texts['header.address'] }} @endif  </div>


                    </li>

                    <li class="clearfix">

                        <div class="phone-contact"></div>
                        <div class="data">@if (isset($texts['header.tel'])){!! $texts['header.tel'] !!}  @endif </div>

                    </li>

                </ul>

            </div>

            <div class="contact-item clearfix">

                <ul>

                    <li class="clearfix">

                        <div class="letter-contact"></div>
                        <div class="data">@if (isset($texts['header.mail'])){{ $texts['header.mail'] }} @endif</div>

                    </li>

                    <li class="clearfix">

                        <div class="location-contact"></div>
                        <div class="data location">@if (isset($texts['header.coordinates'])){{ $texts['header.coordinates'] }} @endif</div>

                    </li>

                </ul>


            </div>

        </div>

    </div>

    <div class="map-contact">

        @if (isset($texts['header.map'])){!!  $texts['header.map'] !!} @endif

    </div>

@stop