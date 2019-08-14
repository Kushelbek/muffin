<!-- BEGIN: HEADER -->
<!DOCTYPE html>
<html lang="ru">

<head>

	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	<meta http-equiv="x-ua-compatible" content="ie=edge" />

	<title>{HEADER_TITLE}</title>
	<meta name="description" content="{HEADER_META_DESCRIPTION}" />
	<meta name="keywords" content="{HEADER_META_KEYWORDS}" />

	<meta name="generator" content="Cotonti http://www.cotonti.com" />

	{HEADER_BASEHREF}
	{HEADER_HEAD}
	{HEADER_COMPOPUP}
	<!-- Bootstrap Core CSS -->
	<link href="{PHP.cfg.themes_dir}/admin/{PHP.cfg.admintheme}/assets/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet">
	<link href="{PHP.cfg.themes_dir}/admin/{PHP.cfg.admintheme}/assets/plugins/tablesaw-master/dist/tablesaw.css" rel="stylesheet">
	<!-- morris CSS -->
	<link href="{PHP.cfg.themes_dir}/admin/{PHP.cfg.admintheme}/assets/plugins/morrisjs/morris.css" rel="stylesheet">
	<!-- Custom CSS -->
	<link href="{PHP.cfg.themes_dir}/admin/{PHP.cfg.admintheme}/css/style.css" rel="stylesheet">
	<!-- You can change the theme colors from here -->
	<link href="{PHP.cfg.themes_dir}/admin/{PHP.cfg.admintheme}/css/colors/blue.css" id="theme" rel="stylesheet">
	<link href="{PHP.cfg.themes_dir}/admin/{PHP.cfg.admintheme}/assets/plugins/bootstrap-select/bootstrap-select.min.css" rel="stylesheet" />
	<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
	<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
	<!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body class="fix-header fix-sidebar card-no-border">

	<div id="main-wrapper">
		<header class="topbar">
			<nav class="navbar top-navbar navbar-expand-md navbar-light">

				<div class="navbar-header">
					<a class="navbar-brand" href="{PHP.cfg.mainurl}" target="_blank" title="{PHP.L.hea_viewsite}">
						<b>
							<img src="{PHP.cfg.themes_dir}/admin/{PHP.cfg.admintheme}/assets/images/logo.png" alt="{PHP.cfg.maintitle}" />
						</b>

						<span>
							<!-- IF {PHP.cfg.maintitle} && {PHP.cfg.maintitle|mb_strlen} < 50 -->{PHP.cfg.maintitle}
							<!-- ELSE -->{PHP.L.hea_viewsite}</span><!-- ENDIF --> </a>
				</div>
				<!-- End Logo -->
				<div class="navbar-collapse">
					<!-- toggle and nav items -->
					<ul class="navbar-nav mr-auto mt-md-0">
						<!-- This is  -->
						<li class="nav-item"> <a class="nav-link nav-toggler hidden-md-up text-muted waves-effect waves-dark" href="javascript:void(0)"><i class="mdi mdi-menu"></i></a> </li>
						<li class="nav-item m-l-10"> <a class="nav-link sidebartoggler hidden-sm-down text-muted waves-effect waves-dark" href="javascript:void(0)" title="{PHP.L.hds0}"><i class="ti-menu"></i></a> </li>
						<!-- Comment -->
						<li class="nav-item dropdown">
							<a class="nav-link dropdown-toggle text-muted text-muted waves-effect waves-dark" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> <i class="mdi mdi-message"></i>
								<div class="notify"> <span class="heartbit"></span> <span class="point"></span> </div>
							</a>
							<div class="dropdown-menu mailbox animated slideInUp">
								<ul>
									<li>
										<div class="drop-title">{HEADER_NOTICES_COUNT}</div>
									</li>
									<li>
										<div class="message-center">
											<!-- Message -->
											{HEADER_NOTICES}
											<!-- Message -->
										</div>
									</li>
									<li>
										<a class="nav-link text-center" href="admin/other?p=comments"> <strong>Смотреть все</strong> <i class="fa fa-angle-right"></i> </a>
									</li>
								</ul>
							</div>
						</li>
						<!-- End Comment -->
						<!-- Messages -->
						<li class="nav-item dropdown">
							<a class="nav-link dropdown-toggle text-muted waves-effect waves-dark" href="{PHP|cot_url('pm')}"> <i class="mdi mdi-email"></i>
								<!-- IF {PHP.usr.messages} > 0 -->
								<div class="notify"> <span class="heartbit"></span> <span class="point"></span> </div>
								<!-- ENDIF -->
							</a>
						</li>
					</ul>
					<ul class="navbar-nav my-lg-0">
						<!-- Profile -->
						<li class="nav-item dropdown">
							<a class="nav-link dropdown-toggle text-muted waves-effect waves-dark" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><img src="<!-- IF {PHP.usr.profile.user_avatar} -->{PHP.usr.profile.user_avatar}<!-- ELSE -->datas/defaultav/blank.png<!-- ENDIF -->" alt="{PHP.usr.profile.user_name}" class="profile-pic" /></a>
							<div class="dropdown-menu dropdown-menu-right scale-up">
								<ul class="dropdown-user">
									<li>
										<div class="dw-user-box">
											<div class="u-img"><img src="<!-- IF {PHP.usr.profile.user_avatar} -->{PHP.usr.profile.user_avatar}<!-- ELSE -->datas/defaultav/blank.png<!-- ENDIF -->" alt="{PHP.usr.profile.user_name}"></div>
											<div class="u-text">
												<h4>{PHP.L.admin-hi}, {PHP.usr.name}</h4>
												<a href="{PHP|cot_url('users','m=details')}" class="btn btn-rounded btn-danger btn-sm">{PHP.L.Profile}</a>
											</div>
										</div>
									</li>
									<li role="separator" class="divider"></li>
									<li>
										<!-- IF {PHP.R.Usermanager} -->
										<a href="{PHP.R.Usermanager|cot_url('admin','m=other&a=profile&p=$this')}">
											<!-- ELSE -->
											<a href="{PHP|cot_url('users','m=profile')}">
												<!-- ENDIF -->
												<i class="ti-user"></i> {PHP.usr.name}
											</a>
									</li>
									<li><a href="{PHP|cot_url('pm')}"><i class="ti-email"></i> {PHP.L.Private_Messages}</a></li>
									<li role="separator" class="divider"></li>
									<li> <a href="{PHP.sys.xk|cot_url('login', 'out=1&x=$this', '', 0, 1)}" id="logout" title="{PHP.L.Logout}"><i class="fa fa-power-off"></i> {PHP.L.Logout}</a></li>
								</ul>
							</div>
						</li>
					</ul>
				</div>
			</nav>
		</header>
		<!-- END: HEADER -->
