@extends('app')

@section('content')
    <h1>{{$category->getTranslate('name')}}</h1>
    @foreach($articles as $article)
        <article>
            <h2>{{ $article->getTranslate('title') }}</h2>
            <p>
                {{ $article->getTranslate('description') }}
            </p>
        </article>
    @endforeach
@stop