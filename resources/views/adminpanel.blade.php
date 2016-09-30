<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>ADMINPANEL</title>

    <!--basic styles-->
    <link href="{{ asset('/css/backend/bootstrap.min.css') }}" rel="stylesheet">
    <link href="{{ asset('/css/backend/bootstrap-responsive.min.css') }}" rel="stylesheet">
    <link href="{{ asset('/css/backend/font-awesome.min.css') }}" rel="stylesheet">
    <!--Тестовый css-->
    <link href="{{ asset('/css/backend/backend.css') }}" rel="stylesheet">

    <!--[if IE 7]>
    <link href="{{ asset('/css/backend/font-awesome-ie7.min.css') }}" rel="stylesheet">
    <![endif]-->
    <!--js-->
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/2.0.3/jquery.min.js" type="text/javascript" ></script>
    <script src="{{ asset('/js/backend/articles.js') }}"type="text/javascript"></script>
    <script src="{{ asset('/js/backend/global.js') }}"type="text/javascript"></script>

    <!--page specific plugin styles-->

    <!--fonts-->

    <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Open+Sans:400,300" type='text/css' />
    <link href='//fonts.googleapis.com/css?family=Roboto:400,300' rel='stylesheet' type='text/css'>

    <!--ace styles-->
    <link href="{{ asset('/css/backend/ace.min.css') }}" rel="stylesheet">
    <link href="{{ asset('/css/backend/ace-responsive.min.css') }}" rel="stylesheet">
    <link href="{{ asset('/css/backend/ace-skins.min.css') }}" rel="stylesheet">

    <!--[if lte IE 8]>
    <link rel="stylesheet" href="{{ asset('/css/backend/ace-ie.min.css') }} />
    <![endif]-->

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>
<!--<div class="admin-header">Админ панель</div>
    <div class="categoty-admin">
        <h3>Категории админки</h3>
        <ul class="list-admin">
            <li><a href="/admin30x5/articles/rooms">Комнаты</a></li>
            <li><a href="/admin30x5/articles/services">Услуги</a></li>
            <li><a href="/admin30x5/articles/events">События</a></li>
        </ul>
    </div>-->
<body>
<div class="navbar">
    <div class="navbar-inner">
        <div class="container-fluid">
            <a href="#" class="brand">
                <small>
                    <i class="icon-leaf"></i>
                    Logo сайта
                </small>
            </a><!--/.brand-->

            <ul class="nav ace-nav pull-right">

                <li class="light-blue">
                    <a data-toggle="dropdown" href="#" class="dropdown-toggle">
                        <img class="nav-user-photo" src="{{ asset('/img/backend/avatar2.png') }}" alt="Jason's Photo" />
								<span class="user-info">
									<small>Вітаю,</small>
									{{ Auth::user()->name }}
								</span>

                        <i class="icon-caret-down"></i>
                    </a>

                    <ul class="user-menu pull-right dropdown-menu dropdown-yellow dropdown-caret dropdown-closer">
                        <!-- <li>
                             <a href="#">
                                 <i class="icon-cog"></i>
                                 Settings
                             </a>
                         </li>

                         <li>
                             <a href="#">
                                 <i class="icon-user"></i>
                                 Profile
                             </a>
                         </li>

                         <li class="divider"></li>-->

                        <li>
                            <a href="{{ url('/auth/logout') }}">
                                <i class="icon-off"></i>
                                Logout
                            </a>
                        </li>
                    </ul>
                </li>
            </ul><!--/.ace-nav-->
        </div><!--/.container-fluid-->
    </div><!--/.navbar-inner-->
</div>

<div class="main-container container-fluid">
    <a class="menu-toggler" id="menu-toggler" href="#">
        <span class="menu-text"></span>
    </a>

    <div class="sidebar" id="sidebar">
        <div class="sidebar-shortcuts" id="sidebar-shortcuts">
            <div class="sidebar-shortcuts-large">
                Меню адмін панелі
            </div>

            <div class="sidebar-shortcuts-mini" id="sidebar-shortcuts-mini">
                <span class="btn btn-success"></span>

                <span class="btn btn-info"></span>

                <span class="btn btn-warning"></span>

                <span class="btn btn-danger"></span>
            </div>
        </div><!--#sidebar-shortcuts-->

        <ul class="nav nav-list">
            <li @if(Request::is('admin30x5/articles/rooms'))class="active"@endif>
                <a href="/admin30x5/articles/rooms">
                    <i class="icon-home"></i>
                    <span class="menu-text"> Номери </span>
                </a>
            </li>

            <li @if(Request::is('admin30x5/articles/services'))class="active"@endif>
                <a href="/admin30x5/articles/services">
                    <i class="icon-wrench"></i>
                    <span class="menu-text"> Послуги </span>
                </a>
            </li>

            <li @if(Request::is('admin30x5/articles/events'))class="active"@endif>
                <a href="/admin30x5/articles/events">
                    <i class="icon-hospital"></i>
                    <span class="menu-text"> Події </span>
                </a>
            </li>
            <li>
                <a href="gallery.html">
                    <i class="icon-picture"></i>
                    <span class="menu-text"> Галерея </span>
                </a>
            </li>

            <li>
                <a href="typography.html">
                    <i class="icon-wrench"></i>
                    <span class="menu-text"> Контакти </span>
                </a>
            </li>

            <li>
                <a href="calendar.html">
                    <i class="icon-calendar"></i>

							<span class="menu-text">
								Calendar
								<span class="badge badge-transparent tooltip-error" title="2&nbsp;Important&nbsp;Events">
									<i class="icon-warning-sign red bigger-130"></i>
								</span>
							</span>
                </a>
            </li>

           <!-- <li>
                <a href="#" class="dropdown-toggle">
                    <i class="icon-desktop"></i>
                    <span class="menu-text"> Події </span>

                    <b class="arrow icon-angle-down"></b>
                </a>

                <ul class="submenu">
                    <li>
                        <a href="elements.html">
                            <i class="icon-double-angle-right"></i>
                            Elements
                        </a>
                    </li>

                    <li>
                        <a href="buttons.html">
                            <i class="icon-double-angle-right"></i>
                            Buttons &amp; Icons
                        </a>
                    </li>

                    <li>
                        <a href="treeview.html">
                            <i class="icon-double-angle-right"></i>
                            Treeview
                        </a>
                    </li>

                    <li>
                        <a href="#" class="dropdown-toggle">
                            <i class="icon-double-angle-right"></i>

                            Three Level Menu
                            <b class="arrow icon-angle-down"></b>
                        </a>

                        <ul class="submenu">
                            <li>
                                <a href="#">
                                    <i class="icon-leaf"></i>
                                    Item #1
                                </a>
                            </li>

                            <li>
                                <a href="#" class="dropdown-toggle">
                                    <i class="icon-pencil"></i>

                                    4th level
                                    <b class="arrow icon-angle-down"></b>
                                </a>

                                <ul class="submenu">
                                    <li>
                                        <a href="#">
                                            <i class="icon-plus"></i>
                                            Add Product
                                        </a>
                                    </li>

                                    <li>
                                        <a href="#">
                                            <i class="icon-eye-open"></i>
                                            View Products
                                        </a>
                                    </li>
                                </ul>
                            </li>
                        </ul>
                    </li>
                </ul>
            </li>

            <li>
                <a href="tables.html">
                    <i class="icon-list"></i>
                    <span class="menu-text"> Tables </span>
                </a>
            </li>

            <li>
                <a href="#" class="dropdown-toggle">
                    <i class="icon-edit"></i>
                    <span class="menu-text"> Forms </span>

                    <b class="arrow icon-angle-down"></b>
                </a>

                <ul class="submenu">
                    <li>
                        <a href="form-elements.html">
                            <i class="icon-double-angle-right"></i>
                            Form Elements
                        </a>
                    </li>

                    <li>
                        <a href="form-wizard.html">
                            <i class="icon-double-angle-right"></i>
                            Wizard &amp; Validation
                        </a>
                    </li>

                    <li>
                        <a href="wysiwyg.html">
                            <i class="icon-double-angle-right"></i>
                            Wysiwyg &amp; Markdown
                        </a>
                    </li>
                </ul>
            </li>

            <li>
                <a href="widgets.html">
                    <i class="icon-list-alt"></i>
                    <span class="menu-text"> Widgets </span>
                </a>
            </li>


            <li>
                <a href="#" class="dropdown-toggle">
                    <i class="icon-tag"></i>
                    <span class="menu-text"> More Pages </span>

                    <b class="arrow icon-angle-down"></b>
                </a>

                <ul class="submenu">
                    <li>
                        <a href="profile.html">
                            <i class="icon-double-angle-right"></i>
                            User Profile
                        </a>
                    </li>

                    <li>
                        <a href="pricing.html">
                            <i class="icon-double-angle-right"></i>
                            Pricing Tables
                        </a>
                    </li>

                    <li>
                        <a href="invoice.html">
                            <i class="icon-double-angle-right"></i>
                            Invoice
                        </a>
                    </li>

                    <li>
                        <a href="login.html">
                            <i class="icon-double-angle-right"></i>
                            Login &amp; Register
                        </a>
                    </li>
                </ul>
            </li>

            <li class="active open">
                <a href="#" class="dropdown-toggle">
                    <i class="icon-file-alt"></i>

							<span class="menu-text">
								Other Pages
								<span class="badge badge-primary ">4</span>
							</span>

                    <b class="arrow icon-angle-down"></b>
                </a>

                <ul class="submenu">
                    <li>
                        <a href="error-404.html">
                            <i class="icon-double-angle-right"></i>
                            Error 404
                        </a>
                    </li>

                    <li>
                        <a href="error-500.html">
                            <i class="icon-double-angle-right"></i>
                            Error 500
                        </a>
                    </li>

                    <li>
                        <a href="grid.html">
                            <i class="icon-double-angle-right"></i>
                            Grid
                        </a>
                    </li>

                    <li class="active">
                        <a href="blank.html">
                            <i class="icon-double-angle-right"></i>
                            Blank Page
                        </a>
                    </li>
                </ul>
            </li>-->
        </ul><!--/.nav-list-->

       <!-- <div class="sidebar-collapse" id="sidebar-collapse">
            <i class="icon-double-angle-left"></i>
        </div>-->
    </div>

    <div class="main-content">
        <div class="breadcrumbs" id="breadcrumbs">
            <ul class="breadcrumb">
                @yield('breadcrumbs')
            </ul><!--.breadcrumb-->
        </div>

        <div class="page-content">
            <div class="row-fluid">
                <div class="span12">
                    <!--PAGE CONTENT BEGINS-->

                        @yield('content')

                    <!--PAGE CONTENT ENDS-->
                </div><!--/.span-->
            </div><!--/.row-fluid-->
        </div><!--/.page-content-->

        <div class="ace-settings-container" id="ace-settings-container">
            <div class="btn btn-app btn-mini btn-warning ace-settings-btn" id="ace-settings-btn">
                <i class="icon-cog bigger-150"></i>
            </div>

            <div class="ace-settings-box" id="ace-settings-box">
                <div>
                    <div class="pull-left">
                        <select id="skin-colorpicker" class="hide">
                            <option data-class="default" value="#438EB9" />#438EB9
                            <option data-class="skin-1" value="#222A2D" />#222A2D
                            <option data-class="skin-2" value="#C6487E" />#C6487E
                            <option data-class="skin-3" value="#D0D0D0" />#D0D0D0
                        </select>
                    </div>
                    <span>&nbsp; Choose Skin</span>
                </div>

                <div>
                    <input type="checkbox" class="ace-checkbox-2" id="ace-settings-header" />
                    <label class="lbl" for="ace-settings-header"> Fixed Header</label>
                </div>

                <div>
                    <input type="checkbox" class="ace-checkbox-2" id="ace-settings-sidebar" />
                    <label class="lbl" for="ace-settings-sidebar"> Fixed Sidebar</label>
                </div>

                <div>
                    <input type="checkbox" class="ace-checkbox-2" id="ace-settings-breadcrumbs" />
                    <label class="lbl" for="ace-settings-breadcrumbs"> Fixed Breadcrumbs</label>
                </div>

                <div>
                    <input type="checkbox" class="ace-checkbox-2" id="ace-settings-rtl" />
                    <label class="lbl" for="ace-settings-rtl"> Right To Left (rtl)</label>
                </div>
            </div>
        </div><!--/#ace-settings-container-->
    </div><!--/.main-content-->
</div><!--/.main-container-->

<a href="#" id="btn-scroll-up" class="btn-scroll-up btn btn-small btn-inverse">
    <i class="icon-double-angle-up icon-only bigger-110"></i>
</a>

<!--basic scripts-->


<script src="{{ asset('/js/backend/bootstrap.min.js') }}"></script>


<!--page specific plugin scripts-->

<script src="{{ asset('/js/backend/jquery.dataTables.min.js') }}"></script>
<script src="{{ asset('/js/backend/jquery.dataTables.bootstrap.js') }}"></script>
<!--ace scripts-->

<script src="{{ asset('/js/backend/ace-elements.min.js') }}"></script>
<script src="{{ asset('/js/backend/ace.min.js') }}"></script>

<!--inline scripts related to this page-->

<script type="text/javascript">
    $(function() {
        var oTable1 = $('#sample-table-2').dataTable( {
            "aoColumns": [
                { "bSortable": false },
                null, null,null, null, null,
                { "bSortable": false }
            ] } );


        $('table th input:checkbox').on('click' , function(){
            var that = this;
            $(this).closest('table').find('tr > td:first-child input:checkbox')
                .each(function(){
                    this.checked = that.checked;
                    $(this).closest('tr').toggleClass('selected');
                });

        });


        $('[data-rel="tooltip"]').tooltip({placement: tooltip_placement});
        function tooltip_placement(context, source) {
            var $source = $(source);
            var $parent = $source.closest('table')
            var off1 = $parent.offset();
            var w1 = $parent.width();

            var off2 = $source.offset();
            var w2 = $source.width();

            if( parseInt(off2.left) < parseInt(off1.left) + parseInt(w1 / 2) ) return 'right';
            return 'left';
        }
    })
</script>
</body>

<!-- Scripts -->
<script src="//cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.1/js/bootstrap.min.js"></script>
</body>
</html>
