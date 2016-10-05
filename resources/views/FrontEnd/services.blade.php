@extends('app')

@section('content')

<h2>{{$category->name}}</h2>
@foreach($articles as $article)
<article>
    <h1>{{ $article->category->name }}</h1>
    <h2>{{ $article->title }}</h2>
    <p>
        {{ $article->description }}
    </p>
</article>
@endforeach

@stop