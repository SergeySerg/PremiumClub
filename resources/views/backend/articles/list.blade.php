@extends('adminpanel')


@section('breadcrumbs')
    <li>
        <i class="icon-home home-icon"></i>
        <a href="#">Головна</a>

                                    <span class="divider">
                                        <i class="icon-angle-right arrow-icon"></i>
                                    </span>
    </li>

    <li class="active">{{$type}}</li>
@stop

@section('content')
<h2>{{$admin_categories->name}}</h2>
<h5><a href="/admin30x5/articles/{{$type}}/create">Додати {{$admin_categories->name}}</a></h5>

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
        <td><a href='/admin30x5/articles/{{$type}}/{{$admin_article->id}}' data-id='{admin_article->id}' class='article-delete'>Удалить</a></td>
    </tr>
    @endforeach
</table>

<div class="row-fluid">
    <div class="span12">
        <!--PAGE CONTENT BEGINS-->

        <div class="row-fluid">
            <h3 class="header smaller lighter blue">{{$admin_categories->name}}</h3>
            <div class="table-header">
                Список в категорії {{$admin_categories->name}}
            </div>
            <table id="sample-table-2" class="table table-striped table-bordered table-hover">
                <thead>
                <tr>
                    <th class="center">
                        ID
                    </th>
                    <th class="center">Назва</th>
                    <th class="hidden-phone center">
                        <i class="icon-time bigger-110 hidden-phone"></i>
                        Дата створення
                    </th>
                    <th class="hidden-phone center">
                        <i class="icon-time bigger-110 hidden-phone"></i>
                        Дата оновлення
                    </th>

                   <!-- <th class="hidden-phone">
                        <i class="icon-time bigger-110 hidden-phone"></i>
                        Update
                    </th>-->
                    <th class="hidden-480">Ціна</th>
                    <th>Статус</th>
                    <th></th>
                </tr>
                </thead>

                <tbody>
                    @foreach($admin_articles as $admin_article)
                        <tr>
                            <td class="center">
                                <label>
                                    <span class="lbl">{{ $admin_article->id }}</span>
                                </label>
                            </td>

                            <td>
                                <a href="/admin30x5/articles/{{$type}}/{{$admin_article->id}}">{{ $admin_article->getTranslate('title') }}</a>
                            </td>
                            <td>{{ $admin_article->created_at }}</td>
                            <td class="hidden-480">{{ $admin_article->updated_at }}</td>
                            <td class="hidden-phone">{{ $admin_article->price }}</td>

                            <td class="hidden-480"><--Активно чи неактивно-->
                                @if($admin_article->active)
                                    <span class="label label-success">Активно</span>
                                @else
                                    <span class="label label-inverse arrowed-in">Неактивно</span>
                                @endif
                            </td>

                            <td class="td-actions">
                                <div class="hidden-phone visible-desktop action-buttons">
                                    <a class="blue" href="#">
                                        <i class="icon-zoom-in bigger-130"></i>
                                    </a>

                                    <a class="green" href="#">
                                        <i class="icon-pencil bigger-130"></i>
                                    </a>

                                    <a class="red" href="#">
                                        <i class="icon-trash bigger-130"></i>
                                    </a>
                                </div>

                                <div class="hidden-desktop visible-phone">
                                    <div class="inline position-relative">
                                        <button class="btn btn-minier btn-yellow dropdown-toggle" data-toggle="dropdown">
                                            <i class="icon-caret-down icon-only bigger-120"></i>
                                        </button>

                                        <ul class="dropdown-menu dropdown-icon-only dropdown-yellow pull-right dropdown-caret dropdown-close">
                                            <li>
                                                <a href="#" class="tooltip-info" data-rel="tooltip" title="View">
                                                                            <span class="blue">
                                                                                <i class="icon-zoom-in bigger-120"></i>
                                                                            </span>
                                                </a>
                                            </li>

                                            <li>
                                                <a href="#" class="tooltip-success" data-rel="tooltip" title="Edit">
                                                                            <span class="green">
                                                                                <i class="icon-edit bigger-120"></i>
                                                                            </span>
                                                </a>
                                            </li>

                                            <li>
                                                <a href="#" class="tooltip-error" data-rel="tooltip" title="Delete">
                                                                            <span class="red">
                                                                                <i class="icon-trash bigger-120"></i>
                                                                            </span>
                                                </a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </td>
                        </tr>
                     @endforeach
                </tbody>
            </table>
        </div>

        <div id="modal-table" class="modal hide fade" tabindex="-1">
            <div class="modal-header no-padding">
                <div class="table-header">
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                    Results for "Latest Registered Domains"
                </div>
            </div>

            <div class="modal-body no-padding">
                <div class="row-fluid">
                    <table class="table table-striped table-bordered table-hover no-margin-bottom no-border-top">
                        <thead>
                        <tr>
                            <th>Domain</th>
                            <th>Price</th>
                            <th>Clicks</th>

                            <th>
                                <i class="icon-time bigger-110"></i>
                                Update
                            </th>
                        </tr>
                        </thead>

                        <tbody>
                        <tr>
                            <td>
                                <a href="#">ace.com</a>
                            </td>
                            <td>$45</td>
                            <td>3,330</td>
                            <td>Feb 12</td>
                        </tr>

                        <tr>
                            <td>
                                <a href="#">base.com</a>
                            </td>
                            <td>$35</td>
                            <td>2,595</td>
                            <td>Feb 18</td>
                        </tr>

                        <tr>
                            <td>
                                <a href="#">max.com</a>
                            </td>
                            <td>$60</td>
                            <td>4,400</td>
                            <td>Mar 11</td>
                        </tr>

                        <tr>
                            <td>
                                <a href="#">best.com</a>
                            </td>
                            <td>$75</td>
                            <td>6,500</td>
                            <td>Apr 03</td>
                        </tr>

                        <tr>
                            <td>
                                <a href="#">pro.com</a>
                            </td>
                            <td>$55</td>
                            <td>4,250</td>
                            <td>Jan 21</td>
                        </tr>
                        </tbody>
                    </table>
                </div>
            </div>

            <div class="modal-footer">
                <button class="btn btn-small btn-danger pull-left" data-dismiss="modal">
                    <i class="icon-remove"></i>
                    Close
                </button>

                <div class="pagination pull-right no-margin">
                    <ul>
                        <li class="prev disabled">
                            <a href="#">
                                <i class="icon-double-angle-left"></i>
                            </a>
                        </li>

                        <li class="active">
                            <a href="#">1</a>
                        </li>

                        <li>
                            <a href="#">2</a>
                        </li>

                        <li>
                            <a href="#">3</a>
                        </li>

                        <li class="next">
                            <a href="#">
                                <i class="icon-double-angle-right"></i>
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
        </div><!--PAGE CONTENT ENDS-->
    </div><!--/.span-->
</div><!--/.row-fluid-->

<div id="token" style="display: none">{{csrf_token()}}</div>

@stop