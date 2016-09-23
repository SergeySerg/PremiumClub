@extends('adminpanel')

@section('content')

<h2>Редагування</h2>

<div class="edit">
        <form method="POST" action="">
            <div class="list-items"> Ціна
                <input type="number" name="price" value="{{$admin_article->price}}"/>
            </div><br>
            <div class="list-items"> Кількість
                <input type="number" name="quantity" value="{{$admin_article->quantity}}"/>
            </div><br>
            <div class="list-items"> Виберіть зображення
                <input type="file" name="img" value="{{$admin_article->img}}"/>
            </div><br>
            @foreach($langs as $lang)
            <h3>Мова {{$lang->lang}}</h3>
            <div class="list-items">Назва
                <input type="text" name="title_{{$lang->lang}}" value='{{ $admin_article->getTranslate('title', $lang->lang) }}'/>
            </div><br>
            <div class="list-items">Опис
                <textarea name="description_{{$lang->lang}}" rows='5' cols='40'>{{ $admin_article->getTranslate('description',$lang->lang) }}</textarea>
            </div><br>

            <div class="list-items">Мета-заголовок
                <input type="text" name="meta_title_{{$lang->lang}}" value="{{ $admin_article->getTranslate('meta_title',$lang->lang) }}"/>
            </div><br>
            <div class="list-items">Мета-опис
                <input type="text" name="meta_description_{{$lang->lang}}" value="{{ $admin_article->getTranslate('meta_description',$lang->lang) }}"/>
            </div><br>
            <div class="list-items">Мета ключові слова
                <input type="text" name="meta_keywords_{{$lang->lang}}" value="{{ $admin_article->getTranslate('meta_keywords',$lang->lang) }}"/>
            </div><br>
            @endforeach
            <div class="list-items">Активувати?
                <input name='active' type='hidden' value='0'>
                <input name='active'type='checkbox' value=1 @if ($admin_article->active) checked="checked" @endif  />

            </div><br>



            <input type="hidden" name="_method" value="put"/>
            <input type="hidden" name="_token" value="{{csrf_token()}}"/>
            <input type="submit" value="Сохранить">
        </form>
</div>
@stop