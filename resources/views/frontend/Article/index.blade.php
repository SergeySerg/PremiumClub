@extends('app')

@section('content')
    <h1>{{ $articles_name }}</h1>
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