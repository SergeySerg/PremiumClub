@extends('app')

@section('content')
{{$categories->name}}
    @foreach($articles as $article)
        <article>
            <h1>{{ $article->name }}</h1>
            <h2>{{ $article->title }}</h2>
            <p>
                {{ $article->description }}
            </p>
        </article>
    @endforeach

@stop