@extends('adminpanel')
@section('breadcrumbs')
<li>
    <i class="icon-home home-icon"></i>
    <a href="/admin30x5/">Головна</a>

                                    <span class="divider">
                                        <i class="icon-angle-right arrow-icon"></i>
                                    </span>
</li>

<li class="active">Текстові блоки</li>
@stop
@section('content')
<div class="page-content">
    <div class="row-fluid">
        <div class="span12">
            <!--PAGE CONTENT BEGINS-->
            <div class="row-fluid">
                <h3 class="header smaller lighter blue">Текстові блоки</h3>

                <div class="table-header">
                    Список записів в тестових полях
                </div>
                <table id="sample-table-2" class="table table-striped table-bordered table-hover">
                    <thead>
                    <tr>
                        <th class="center">
                            ID
                        </th>
                        <th class="center">Тип</th>
                        <th class="hidden-phone center">
                            Назва
                        </th>
                        <th class="hidden-phone center">
                            Зміст
                        </th>
                        <th></th>
                    </tr>
                    </thead>

                    <tbody>
                @foreach($admin_texts as $admin_text){
                    <tr>
                        <td class="center">
                            <label>
                                <span class="lbl">{{ $admin_text->id }}</span>
                            </label>
                        </td>
                        <td>
                            {{ $admin_text->getTranslate('type') }}
                        </td>
                        <td><a href="/admin30x5/texts/{{$admin_text->id}}">{{ $admin_text->getTranslate('title') }}</a></td>
                        <td>{{ $admin_text->getTranslate('description') }}</td>
                        <td class="td-actions">
                            <div class="hidden-phone visible-desktop action-buttons">
                                <a class="green" href="/admin30x5/texts/{{$admin_text->id}}">
                                    <i class="icon-pencil bigger-130"></i>
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
                }
                @endforeach
                    </tbody>
                </table>
            </div>

        </div><!--/.span-->
    </div><!--/.row-fluid-->
</div>
<div id="token" style="display: none">{{csrf_token()}}</div>
<script>
    $(function(){
        var oTable1 = $('#sample-table-2').dataTable( {
            "aoColumns": [
                { "bSortable": false },
                null, null, null,
                { "bSortable": false }
            ] } );
    });
</script>
@stop