@extends('app')

@section('content')

<h2>{{$categories->name}}</h2>
@foreach($articles as $article)
<article>
    <h1>{{ $article->getTranslate('name')}}</h1>
    <h2>{{ $article->getTranslate('title') }}</h2>
    <p>
        {{ $article->getTranslate('description')}}
    </p>
</article>
@endforeach

@stop