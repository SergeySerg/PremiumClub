@extends('adminpanel')

@section('content')
<h2>{{$admin_categories->name}}</h2><h5><a href="">Додати {{$admin_categories->name}}</a></h5>
<table class="list">
    <tr>
        <th>ID</th>
        <th>Назва</th>
        <th>Дата створення</th>
        <th>Дата оновлення</th>
        <th>Дія</th>
        <th>Дія</th>
    </tr>
    @foreach($admin_articles as $admin_article)
    <tr class="admin-items">
        <td>{{ $admin_article->id }}</td>
        <td><a href = "/admin30x5/articles/{{$type}}/{{$admin_article->id}}">{{ $admin_article->getTranslate('title') }}</a></td>
        <td>{{ $admin_article->created_at }} </td>
        <td>{{ $admin_article->updated_at }}</td>
        <td><a href = "/admin30x5/articles/{{$type}}/{{$admin_article->id}}">Редагувати</a></td>
        <td>Видалити</td>
    </tr>
    @endforeach
</table>
@stop