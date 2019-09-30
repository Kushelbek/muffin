<!-- BEGIN: MAIN -->
<aside class="left-sidebar">
    <!-- Sidebar scroll-->
    <div class="scroll-sidebar">
        <!-- User profile -->
        <div class="user-profile">
            <!-- User profile image -->
            <div class="profile-img"> <img src="<!-- IF {PHP.usr.profile.user_avatar} -->{PHP.usr.profile.user_avatar}<!-- ELSE -->datas/defaultav/blank.png<!-- ENDIF -->" alt="{PHP.usr.profile.user_name}" />
            </div>
            <!-- User profile text-->
            <div class="profile-text">
                <h5>{PHP.L.admin-hi}, {PHP.usr.name}</h5>
                <!-- IF {PHP.R.Usermanager} -->
                <a href="{PHP.R.Usermanager|cot_url('admin','m=other&a=profile&p=$this')}" data-toggle="tooltip" title="{PHP.L.Profile}">
                    <!-- ELSE -->
                    <a href="{PHP|cot_url('users','m=profile')}" data-toggle="tooltip" title="{PHP.L.Profile}">
                        <!-- ENDIF -->
                        <i class="mdi mdi-settings"></i>
                    </a>
                    <a href="{PHP|cot_url('pm')}" class="" data-toggle="tooltip" title="{PHP.L.Private_Messages}"><i class="mdi mdi-gmail"></i></a>
                    <a href="{PHP.sys.xk|cot_url('login', 'out=1&x=$this', '', 0, 1)}" id="logout" title="{PHP.L.Logout}" class="" data-toggle="tooltip"><i class="mdi mdi-power"></i></a>
            </div>
        </div>
        <!-- End User profile text-->
        <!-- Sidebar navigation-->
        <nav class="sidebar-nav">
            <ul id="sidebarnav">
                <li class="nav-devider"></li>
                <li> <a class="has-arrow waves-effect waves-dark" aria-expanded="false"><i class="mdi mdi-gauge"></i><span class="hide-menu">{PHP.L.Navigation}</span></a>
                    <ul aria-expanded="false" class="collapse">
                        <li><a href="{PHP|cot_url('admin')}"><i class="mdi mdi-apps"></i> {PHP.L.Home}</a></li>
                        <li><a href="{PHP|cot_url('admin', 'm=config')}"><i class="mdi mdi-settings"></i> {PHP.L.Configuration}</a></li>
                        <li><a href="{PHP|cot_url('admin', 'm=structure')}"><i class="mdi mdi-view-module"></i> {PHP.L.Structure}</a></li>
                        <li><a href="{PHP|cot_url('admin', 'm=extensions')}"><i class="mdi mdi-power-plug"></i> {PHP.L.Extensions}</a></li>
                        <li><a href="{PHP|cot_url('admin', 'm=users')}"><i class="mdi mdi-face"></i> {PHP.L.Users}</a></li>
                        <li><a href="{PHP|cot_url('admin', 'm=other')}"><i class="mdi mdi-hexagon-multiple"></i> {PHP.L.Other}</a></li>
                    </ul>
                </li>
                <li> <a class="has-arrow waves-effect waves-dark" aria-expanded="false"><i class="mdi mdi-bullseye"></i><span class="hide-menu">{PHP.L.home_ql_b1_title}</span></a>
                    <ul aria-expanded="false" class="collapse">
                        <li><a href="{PHP|cot_url('admin','m=config&n=edit&o=core&p=main')}"><i class="mdi mdi-view-dashboard"></i> {PHP.L.home_ql_b1_1}</a></li>
                        <li><a href="{PHP|cot_url('admin','m=config&n=edit&o=core&p=title')}"><i class="mdi mdi-text-shadow"></i> {PHP.L.home_ql_b1_2}</a></li>
                        <li><a href="{PHP|cot_url('admin','m=config&n=edit&o=core&p=theme')}"><i class="mdi mdi-format-color-fill"></i> {PHP.L.home_ql_b1_3}</a></li>
                        <li><a href="{PHP|cot_url('admin','m=config&n=edit&o=core&p=menus')}"><i class="mdi mdi-chip"></i> {PHP.L.home_ql_b1_4}</a></li>
                        <li><a href="{PHP|cot_url('admin','m=config&n=edit&o=core&p=locale')}"><i class="mdi mdi-earth"></i> {PHP.L.Locale}</a></li>
                        <li><a href="{PHP|cot_url('admin','m=extrafields')}"><i class="mdi mdi-hexagon-multiple"></i> {PHP.L.adm_extrafields}</a></li>
                    </ul>
                </li>
                <li> <a class="has-arrow waves-effect waves-dark" aria-expanded="false"><i class="mdi mdi-book-open-page-variant"></i><span class="hide-menu">{PHP.L.Pages}</span></a>
                    <ul aria-expanded="false" class="collapse">
                        <!-- IF {PHP.cot_plugins_active.csv_import} -->
                        <li><a href="{PHP.usr.id|cot_url('admin','m=other&p=csv_import')}"><i class="mdi mdi-file-document"></i> CSV Import</a></li>
                        <!-- ENDIF -->
                        <li><a href="{PHP|cot_url('admin','m=page')}"><i class="mdi mdi-feather"></i> {PHP.L.admin-queued} <span class="badge badge-info"> {PHP.sys.pagesqueued|cot_declension($this, '')}</span></a></li>
                        <li><a href="{PHP|cot_url('page','m=add')}" target="_blank"><i class="mdi mdi-plus"></i> {PHP.L.Add}</a></li>
                        <li><a href="{PHP.db_pages|cot_url('admin','m=extrafields&n=$this')}"><i class="mdi mdi-hexagon-multiple"></i> {PHP.L.home_ql_b2_2}</a></li>
                        <!-- IF {PHP.cot_plugins_active.portal_stats} -->
                        <li><a href="{PHP|cot_url('admin','m=other&p=portal_stats')}"><i class="mdi mdi-chart-areaspline"></i> Статистика портала</a></li>
                        <!-- ENDIF -->
                    </ul>
                </li>
                <!-- IF {PHP|cot_module_active('market')} -->
                <li> <a class="has-arrow waves-effect waves-dark" aria-expanded="false"><i class="mdi mdi mdi-cart-outline"></i><span class="hide-menu">{PHP.L.market}</span></a>
                    <ul aria-expanded="false" class="collapse">
                        <li><a href="{PHP|cot_url('admin','m=market&p=default&c=&sq=&c=&sort=&state=2')}"><i class="mdi mdi-file"></i> {PHP.sys.marketsqueued|cot_declension($this,'')} {PHP.L.market_admin_home_valqueue}</a></li>
                        <li><a href="{PHP|cot_url('market','m=add')}" target="_blank"><i class="mdi mdi-plus"></i> {PHP.L.Add}</a></li>
                        <li><a href="{PHP.db_market|cot_url('admin','m=extrafields&n=$this')}"><i class="mdi mdi-hexagon-multiple"></i> {PHP.L.market-extra}</a></li>
                    </ul>
                </li>
                <!-- ENDIF -->
                <li> <a class="has-arrow waves-effect waves-dark" aria-expanded="false"><i class="mdi mdi-face-profile"></i><span class="hide-menu">{PHP.L.Users}</span></a>
                    <ul aria-expanded="false" class="collapse">
                        <!-- IF {PHP.R.Usermanager} -->
                        <li><a href="{PHP.R.Usermanager|cot_url('admin','m=other&p=$this')}"><i class="fa fa-group"></i> {PHP.L.Usermanager}</a></li>
                        <!-- ENDIF -->
                        <li><a href="{PHP|cot_url('admin','m=config&amp;n=edit&amp;o=module&amp;p=users')}"> <i class="mdi mdi-settings"></i> {PHP.L.home_ql_b3_1}</a></li>
                        <li><a href="{PHP.db_users|cot_url('admin','m=extrafields&amp;n=$this')}"><i class="mdi mdi-hexagon-multiple"></i> {PHP.L.home_ql_b3_2}</a></li>
                        <li><a href="{PHP|cot_url('admin','m=users')}"><i class="mdi mdi-lock-outline"></i> {PHP.L.home_ql_b3_4}</a></li>
                    </ul>
                </li>
                <li> <a class="has-arrow waves-effect waves-dark" aria-expanded="false"><i class="mdi mdi-chart-bubble"></i><span class="hide-menu">{PHP.L.Other}</span></a>
                    <ul aria-expanded="false" class="collapse">
                        <li><a href="{PHP|cot_url('admin','m=cache')}"><i class="mdi mdi-cached"></i> {PHP.L.adm_internalcache}</a></li>
                        <li><a href="{PHP|cot_url('admin','m=cache','?s=disk')}"><i class="mdi mdi-cached"></i> {PHP.L.adm_diskcache}</a></li>
                        <li><a href="{PHP|cot_url('admin','m=extrafields')}"><i class="mdi mdi-hexagon-multiple"></i> {PHP.L.adm_extrafields}</a></li>
                        <!-- IF {PHP|cot_module_active('payments')} -->
                        <li><a href="{PHP|cot_url('admin','m=payments')}"><i class="mdi mdi-currency-eur"></i> {PHP.L.Payments}</a></li>
                        <!-- ENDIF -->
                    </ul>
                </li>
                <li> <a class="has-arrow waves-effect waves-dark" aria-expanded="false"><i class="mdi mdi-cube-outline"></i><span class="hide-menu">{PHP.L.Engine}</span></a>
                    <ul aria-expanded="false" class="collapse">
                        <li><small><strong>{PHP.adminstats.version.title}:</strong> <span class="text-primary">{PHP.adminstats.version.value}</span></small></li>
                        <li><small><strong>{PHP.adminstats.database.title}:</strong> <span class="text-primary">{PHP.adminstats.database.value}</span></small></li>

                        <li><small><strong>{PHP.adminstats.defaulttheme.title}:</strong> <span class="text-primary">{PHP.adminstats.defaulttheme.value}</span></small></li>
                        <li><small><strong>{PHP.adminstats.defaultscheme.title}: </strong><span class="text-primary ">{PHP.adminstats.defaultscheme.value}</span></small></li>
                        <li><small><strong>{PHP.adminstats.defaulticons.title}: </strong><span class="text-primary ">{PHP.adminstats.defaulticons.value}</span></small></li>
                        <li><small><strong>{PHP.adminstats.defaultlang.title}:</strong> <span class="text-primary">{PHP.adminstats.defaultlang.value}</span></small></li>
                        <li><small><strong>{PHP.adminstats.admintheme.title}:</strong> <span class="text-primary">{PHP.adminstats.admintheme.value}</span></small></li>

                        <li><small><strong>{PHP.adminstats.active_modules.title}:</strong> <span class="text-primary">{PHP.adminstats.active_modules.value} {PHP.L.Of} {PHP.adminstats.modules.value}</span></small></li>
                        <li><small><strong>{PHP.adminstats.active_plugins.title}:</strong> <span class="text-primary">{PHP.adminstats.active_plugins.value} {PHP.L.Of} {PHP.adminstats.plugins.value}</span></small></li>
                        <li><small><strong>{PHP.adminstats.active_hooks.title}:</strong> <span class="text-primary">{PHP.adminstats.active_hooks.value} {PHP.L.Of} {PHP.adminstats.hooks.value}</span></small></li>

                        <li><small><strong>{PHP.adminstats.check_updates.title}: </strong><span class="text-primary ">{PHP.adminstats.check_updates.value}</span></small></li>
                        <li><small><strong>{PHP.adminstats.debug_mode.title}: </strong><span class="text-primary ">{PHP.adminstats.debug_mode.value}</span></small></li>
                    </ul>
                </li>
                <li> <a class="has-arrow waves-effect waves-dark" aria-expanded="false"><i class="mdi mdi-update"></i><span class="hide-menu">{PHP.L.Activityfor} {PHP.R.Recent|cot_declension($this, Days)}:</span></a>
                    <ul aria-expanded="false" class="collapse">
                        <!-- IF {PHP.cot_modules.page} -->
                        <li><strong>{PHP.L.Newpages}:</strong> <span class="text-primary">{PHP.R.Recent|item_counter('page', $this)}</span></li>
                        <!-- ENDIF -->
                        <!-- IF {PHP.cot_plugins_active.comments} -->
                        <li><strong>{PHP.L.Newcomments}: </strong><span class="text-primary">{PHP.R.Recent|item_counter('comments', $this)}</span></li>
                        <!-- ENDIF -->
                        <!-- IF {PHP.cot_modules.forums} -->
                        <li><strong>{PHP.L.Newposts}: </strong><span class="text-primary">{PHP.R.Recent|item_counter('posts', $this)}</span></li>
                        <li><strong>{PHP.L.Newtopics}: </strong><span class="text-primary">{PHP.R.Recent|item_counter('topics', $this)}</span></li>
                        <!-- ENDIF -->
                        <!-- IF {PHP.cot_modules.pm} -->
                        <li><strong>{PHP.L.Newpm}: </strong><span class="text-primary">{PHP.R.Recent|item_counter('pm', $this)}</span></li>
                        <!-- ENDIF -->
                        <!-- IF {PHP.cot_modules.polls} -->
                        <li><strong>{PHP.L.Newpolls}: </strong><span class="text-primary">{PHP.R.Recent|item_counter('polls', $this)}</span></li>
                        <!-- ENDIF -->
                        <li><strong>{PHP.L.Newusers}: </strong><span class="text-primary">{PHP.R.Recent|item_counter('users_reg', $this)}</span></li>
                        <li><strong>{PHP.L.Retusers}: </strong><span class="text-primary">{PHP.R.Recent|item_counter('users', $this)}</span></li>
                    </ul>
                </li>
                <!-- IF {ADMIN_HELP} -->
                <li> <a class="has-arrow waves-effect waves-dark" aria-expanded="false"><i class="mdi mdi-help"></i><span class="hide-menu">{PHP.L.Help}</span></a>
                    <ul aria-expanded="false" class="collapse">
                        <li>{ADMIN_HELP}</li>
                    </ul>
                </li>
                <!-- ENDIF -->
            </ul>
        </nav>
        <!-- End Sidebar navigation -->
    </div>
    <!-- End Sidebar scroll-->
</aside>

<div class="page-wrapper">
    <div class="row page-titles">
        <div class="col-md-5 align-self-center">
            <h3 class="text-themecolor">{PHP.L.Administration}</h3>
        </div>
        <div class="col-md-7 align-self-center">
            <ol class="breadcrumb">
                <li class="breadcrumb-item">{ADMIN_TITLE}</li>
            </ol>
        </div>
    </div>
    <div id="ajaxBlock" class="container-fluid">
        <!-- BEGIN: BODY -->
        <div class="row">
            <div class="col-md-6 col-lg-4 col-xlg-2">
                <div class="card card-inverse card-info">
                    <div class="box bg-info text-center">
                        <a href="{PHP|cot_url('admin', '')}" id="nv-home">
                            <h1 class="font-light text-white"><i class="mdi mdi-apps"></i></h1>
                            <h6 class="text-white">{PHP.L.Home}</h6>
                        </a>
                    </div>
                </div>
            </div>
            <!-- IF {PHP.usr.admin_config} -->
            <div class="col-md-6 col-lg-4 col-xlg-2">
                <div class="card card-primary card-inverse">
                    <div class="box text-center">
                        <a href="{PHP|cot_url('admin', 'm=config')}" id="nv-config" class="nv<!-- IF {PHP.m} == 'config' --> sel<!-- ENDIF -->">
                            <h1 class="font-light text-white"><i class="mdi mdi-settings"></i></h1>
                            <h6 class="text-white">{PHP.L.Configuration}</h6>
                        </a>
                    </div>
                </div>
            </div>
            <!-- ENDIF -->
            <!-- IF {PHP.usr.admin_structure} -->
            <div class="col-md-6 col-lg-4 col-xlg-2">
                <div class="card card-inverse card-success">
                    <div class="box text-center">
                        <a href="{PHP|cot_url('admin', 'm=structure')}" id="nv-structure" class="nv<!-- IF {PHP.m} == 'structure' --> sel<!-- ENDIF -->">
                            <h1 class="font-light text-white"><i class="mdi mdi-view-module"></i></h1>
                            <h6 class="text-white">{PHP.L.Structure}</h6>
                        </a>
                    </div>
                </div>
            </div>
            <!-- ENDIF -->
            <!-- IF {PHP.usr.admin_config} -->
            <div class="col-md-6 col-lg-4 col-xlg-2">
                <div class="card card-inverse card-dark">
                    <div class="box text-center">
                        <a href="{PHP|cot_url('admin', 'm=extensions')}" id="nv-extensions" class="nv<!-- IF {PHP.m} == 'extensions' --> sel<!-- ENDIF -->">
                            <h1 class="font-light text-white"><i class="mdi mdi-power-plug"></i></h1>
                            <h6 class="text-white">{PHP.L.Extensions}</h6>
                        </a>
                    </div>
                </div>
            </div>
            <!-- ENDIF -->
            <!-- IF {PHP.usr.admin_users} -->
            <div class="col-md-6 col-lg-4 col-xlg-2">
                <div class="card card-inverse card-megna">
                    <div class="box text-center">
                        <a href="{PHP|cot_url('admin', 'm=users')}" id="nv-users" class="nv<!-- IF {PHP.m} == 'users' --> sel<!-- ENDIF -->">
                            <h1 class="font-light text-white"><i class="mdi mdi-face"></i></h1>
                            <h6 class="text-white">{PHP.L.Users}</h6>
                        </a>
                    </div>
                </div>
            </div>
            <!-- ENDIF -->
            <div class="col-md-6 col-lg-4 col-xlg-2">
                <div class="card card-inverse card-warning">
                    <div class="box text-center">
                        <a href="{PHP|cot_url('admin', 'm=other')}" id="nv-other" class="nv<!-- IF {PHP.m} == 'other' --> sel<!-- ENDIF -->">
                            <h1 class="font-light text-white"><i class="mdi mdi-hexagon-multiple"></i></h1>
                            <h6 class="text-white">{PHP.L.Other}</h6>
                        </a>
                    </div>
                </div>
            </div>
        </div>

        <div id="main" class="row">
            {ADMIN_MAIN}
        </div>
        <!-- END: BODY -->
    </div>
    <!-- END: MAIN -->
