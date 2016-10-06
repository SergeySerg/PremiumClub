@extends('adminpanel')

@section('breadcrumbs')
<li>
    <i class="icon-home home-icon"></i>
    <a href="/admin30x5/">Головна</a>
        <span class="divider">
            <i class="icon-angle-right arrow-icon"></i>
        </span>
</li>
@if(isset($type))
<li>
    <a href="#">{{$type}}</a>

        <span class="divider">
            <i class="icon-angle-right arrow-icon"></i>
        </span>
</li>
@endif

@if(isset($admin_text))
<li class="active">{{$admin_text->id}}</li>
@else
<li class="active">Додати нову</li>
@endif
@stop

@section('content')

<div class="page-content">
    <div class="page-header position-relative">
        <h1>
            @if (isset($admin_text))
            Редагувати
            @else
            Додати
            @endif
        </h1>
    </div><!--/.page-header-->

    <div class="row-fluid">
        <div class="span12">
            <!--PAGE CONTENT BEGINS-->

            <form class="form-horizontal" id="article-form" method="POST" action="" />




                <div class="space-12"></div>
                <div class="row-fluid">
                    <div class="span12">
                        <div class="tabbable">
                            <ul class="nav nav-tabs" id="myTab2">
                                @foreach($langs as $lang)
                                <li @if(($lang->lang) == 'ua') class="active" @endif >
                                    <a data-toggle="tab" href="#{{$lang->lang}}">{{$lang->lang}}</a>
                                </li>
                                @endforeach

                            </ul>
                        </div>

                        <div class="tab-content">
                            @foreach($langs as $lang)
                            <div id="{{$lang->lang}}" @if(($lang->lang) == 'ua') class="tab-pane in active" @else class="tab-pane" @endif>
                                @if($admin_text->type == 'input' )
                                <div class="control-group">
                                    <label class="control-label" for="form-field-3">{{$admin_text->title}}</label>

                                    <div class="controls">
                                        <input type="text" name="title_{{$lang->lang}}" value='@if(isset($admin_text)) {{ $admin_text->getTranslate('title', $lang->lang) }} @endif' id="form-field-3" placeholder="Текст" />
                                    </div>
                                </div>
                                @elseif ($admin_text->type == 'text' )
                                    <h4 class="header blue clearfix">{{$admin_text->title}}</h4>
                                    <div class="control-group">
                                        <textarea name="description_{{$lang->lang}}"class="span12" id="form-field-8" placeholder="Опис" >@if(isset($admin_text)){{ $admin_text->getTranslate('description',$lang->lang) }}@endif</textarea>
    
    
                                    </div>
                                @endif

                            </div>
                            @endforeach
                        </div>

                    </div>
                </div>
                <div class="space-4"></div>
                <input type="hidden" name="_method" value='{{$action_method}}'/>
                <input type="hidden" name="_token" value="{{csrf_token()}}"/>
                <div class="form-actions">
                    <button class="btn btn-info article-save" type="button">
                        <i class="icon-ok bigger-110"></i>
                        Сохранить
                    </button>
                </div><!--<input type="button" class='article-save' value="Сохранить">-->
                </form>
                <!--PAGE CONTENT ENDS-->
            </div><!--/.span-->
        </div><!--/.row-fluid-->
    </div><!--/.page-content-->
    <div id="token" style="display: none">{{csrf_token()}}</div>
    @stop
    <!--<h2>Редагування</h2>
    <div class="edit">
            <form id="article-form" method="POST" action="">
                <div class="list-items"> Ціна
                    <input type="number" name="price" @if(isset($admin_text)) value='{{$admin_text->price}}'@endif/>
                </div><br>
                <div class="list-items"> Кількість
                    <input type="number" name="quantity" @if(isset($admin_text)) value='{{$admin_text->quantity}}' @endif/>
                </div><br>
                <div class="list-items"> Виберіть зображення
                    <input type="file" name="img" @if(isset($admin_text)) value='{{$admin_text->img}}' @endif/>
                </div><br>
                @foreach($langs as $lang)
                    <h3>Мова {{$lang->lang}}</h3>
                    <div class="list-items">Назва
                        <input type="text" name="title_{{$lang->lang}}" value='@if(isset($admin_text)) {{ $admin_text->getTranslate('title', $lang->lang) }} @endif'/>
                    </div><br>
                    <div class="list-items">Опис
                        <textarea name="description_{{$lang->lang}}" rows='5' cols='40'>@if(isset($admin_text)){{ $admin_text->getTranslate('description',$lang->lang) }}@endif</textarea>
                    </div><br>

                    <div class="list-items">Мета-заголовок
                        <input type="text" name="meta_title_{{$lang->lang}}" value="@if(isset($admin_text)){{ $admin_text->getTranslate('meta_title',$lang->lang) }} @endif"/>
                    </div><br>
                    <div class="list-items">Мета-опис
                        <input type="text" name="meta_description_{{$lang->lang}}" value="@if(isset($admin_text)){{ $admin_text->getTranslate('meta_description',$lang->lang)}} @endif"/>
                    </div><br>
                    <div class="list-items">Мета ключові слова
                        <input type="text" name="meta_keywords_{{$lang->lang}}" value="@if(isset($admin_text)){{ $admin_text->getTranslate('meta_keywords',$lang->lang)}} @endif"/>
                    </div><br>
                @endforeach
                <div class="list-items">Активувати?
                    <input name='active' type='hidden' value='0'>
                    <input name='active'type='checkbox' value=1 @if(isset($admin_text) AND $admin_text->active) checked="checked" @endif  />

                </div><br>
                <input type="hidden" name="_method" value='{{$action_method}}'/>
                <input type="hidden" name="_token" value="{{csrf_token()}}"/>
                <input type="button" class='article-save' value="Сохранить">
            </form>
    </div>-->
