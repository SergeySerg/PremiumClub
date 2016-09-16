@extends('app')

@section('content')
    <h1>{{$category->name}}</h1>
    @foreach($articles as $article)
        <article>
            <h2>{{ $article->getTranslate('title') }}</h2>
            <p>
                {{ $article->description }}
            </p>
        </article>
    @endforeach
@stop