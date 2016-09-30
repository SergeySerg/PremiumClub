@extends('adminpanel')

@section('breadcrumbs')
    <li>
        <i class="icon-home home-icon"></i>
        <a href="#">Головна</a>
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

    @if(isset($admin_article))
        <li class="active">{{$admin_article->id}}</li>
    @else
        <li class="active">Додати нову</li>
    @endif
@stop

@section('content')

    <h2>Редагування</h2>
    <div class="edit">
            <form id="article-form" method="POST" action="">
                <div class="list-items"> Ціна
                    <input type="number" name="price" @if(isset($admin_article)) value='{{$admin_article->price}}'@endif/>
                </div><br>
                <div class="list-items"> Кількість
                    <input type="number" name="quantity" @if(isset($admin_article)) value='{{$admin_article->quantity}}' @endif/>
                </div><br>
                <div class="list-items"> Виберіть зображення
                    <input type="file" name="img" @if(isset($admin_article)) value='{{$admin_article->img}}' @endif/>
                </div><br>
                @foreach($langs as $lang)
                    <h3>Мова {{$lang->lang}}</h3>
                    <div class="list-items">Назва
                        <input type="text" name="title_{{$lang->lang}}" value='@if(isset($admin_article)) {{ $admin_article->getTranslate('title', $lang->lang) }} @endif'/>
                    </div><br>
                    <div class="list-items">Опис
                        <textarea name="description_{{$lang->lang}}" rows='5' cols='40'>@if(isset($admin_article)){{ $admin_article->getTranslate('description',$lang->lang) }}@endif</textarea>
                    </div><br>

                    <div class="list-items">Мета-заголовок
                        <input type="text" name="meta_title_{{$lang->lang}}" value="@if(isset($admin_article)){{ $admin_article->getTranslate('meta_title',$lang->lang) }} @endif"/>
                    </div><br>
                    <div class="list-items">Мета-опис
                        <input type="text" name="meta_description_{{$lang->lang}}" value="@if(isset($admin_article)){{ $admin_article->getTranslate('meta_description',$lang->lang)}} @endif"/>
                    </div><br>
                    <div class="list-items">Мета ключові слова
                        <input type="text" name="meta_keywords_{{$lang->lang}}" value="@if(isset($admin_article)){{ $admin_article->getTranslate('meta_keywords',$lang->lang)}} @endif"/>
                    </div><br>
                @endforeach
                <div class="list-items">Активувати?
                    <input name='active' type='hidden' value='0'>
                    <input name='active'type='checkbox' value=1 @if(isset($admin_article) AND $admin_article->active) checked="checked" @endif  />

                </div><br>
                <input type="hidden" name="_method" value='{{$action_method}}'/>
                <input type="hidden" name="_token" value="{{csrf_token()}}"/>
                <input type="button" class='article-save' value="Сохранить">
            </form>
    </div>
<div id="token" style="display: none">{{csrf_token()}}</div>
@stop