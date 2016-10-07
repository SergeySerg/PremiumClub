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
                        <div class="data">{{ trans('base.address') }}</div>

                    </li>

                    <li class="clearfix">

                        <div class="phone-contact"></div>
                        <div class="data">+38 (067) 343 09 01
                            <br>+38 (050) 487 06 97</div>

                    </li>

                </ul>

            </div>

            <div class="contact-item clearfix">

                <ul>

                    <li class="clearfix">

                        <div class="letter-contact"></div>
                        <div class="data">admin@premium-cl.com<br>reception@premium-cl.com</div>

                    </li>

                    <li class="clearfix">

                        <div class="location-contact"></div>
                        <div class="data">N48.345186°, <br>E24.472768°</div>

                    </li>

                </ul>


            </div>

        </div>

    </div>

    <div class="map-contact">

        <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d10486.662299908432!2d24.706312128226433!3d48.921763516832485!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x4730c16c34b0381d%3A0xd6d32394e59e41c2!2z0IbQstCw0L3Qvi3QpNGA0LDQvdC60ZbQstGB0YzQuiwg0IbQstCw0L3Qvi3QpNGA0LDQvdC60ZbQstGB0YzQutCwINC-0LHQu9Cw0YHRgtGM!5e0!3m2!1suk!2sua!4v1475395113718" width="100%" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>

    </div>

@stop