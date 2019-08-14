<!-- BEGIN: MAIN -->

<!-- BEGIN: UPDATE -->
<div class="row">
	<div class="col-md-12">
		<div class="alert alert-danger">
			<h4>{PHP.L.adminqv_update_notice}:</h4>
			<p>{ADMIN_HOME_UPDATE_REVISION} {ADMIN_HOME_UPDATE_MESSAGE}</p>
		</div>
	</div>
</div>
<!-- END: UPDATE -->

<!-- IF {ERROR_ROW_MSG} -->
<div class="row">
	<div class="col-md-12">
		{FILE "{PHP.cfg.themes_dir}/admin/{PHP.cfg.admintheme}/warnings.tpl"}
	</div>
</div>
<!-- ENDIF -->

<!-- IF {PHP|file_exists('themes/admin/maffin/inc/home.tpl')} -->
{FILE "themes/admin/maffin/inc/home.tpl"}
<!-- ENDIF -->


<div class="col-md-7">
	<div class="col-md-12">
		<div class="card">
			<div class="card-body">
				<!-- BEGIN: MAINPANEL -->
				{ADMIN_HOME_MAINPANEL}
				<!-- END: MAINPANEL -->
			</div>
		</div>
	</div>
	<!-- IF {PHP.cot_plugins_active.pagelist} -->
	<div class="col-md-12">
		<div class="card">
			<div class="card-body">
				<h5><i class="mdi mdi-star"></i> {PHP.R.Topbest} {PHP.L.Topbestpages}</h5>
				{PHP.R.Topbest|pagelist('pagelist.admin',$this,'page_count DESC','page_count > 0','','','','TRUE','','TRUE')}
			</div>
		</div>
	</div>
	<div class="col-md-12">
		<div class="card">
			<div class="card-body">
				<h5><i class="mdi mdi-star"></i> {PHP.R.Toprecent} {PHP.L.Toprecentpages} {PHP.L.Within} {PHP.R.Toprecent|cot_declension($this, 'Days')}</h5>
				{PHP.R.Toprecent|pagelist('pagelist.admin',$this,'page_count DESC','page_date > (UNIX_TIMESTAMP() - 864000)','','','','TRUE','','TRUE')}
			</div>
		</div>
	</div>
	<div class="col-md-12">
		<div class="card">
			<div class="card-body">
				<h5><i class="mdi mdi-star"></i> {PHP.L.Recent}</h5>
				{PHP.R.Toprecent|pagelist('pagelist.admin',$this,'page_date DESC','','','','','TRUE','','TRUE')}
			</div>
		</div>
	</div>
	<div class="col-md-12">
		<div class="col-md-6 col-lg-4 col-xlg-4">
			<div class="card card-inverse card-info">
				<div class="box bg-info text-center">
					<a href="{PHP|cot_url('admin','m=cache')}">
						<h1 class="font-light text-white"><i class="mdi mdi-cached"></i></h1>
						<h6 class="text-white">{PHP.L.adm_internalcache}</h6>
					</a>
				</div>
			</div>
		</div>
		<div class="col-md-6 col-lg-4 col-xlg-4">
			<div class="card card-primary card-inverse">
				<div class="box text-center">
					<a href="{PHP|cot_url('admin','m=cache','?s=disk')}">
						<h1 class="font-light text-white"><i class="mdi mdi-cached"></i></h1>
						<h6 class="text-white">{PHP.L.adm_diskcache}</h6>
					</a>
				</div>
			</div>
		</div>
		<div class="col-md-6 col-lg-4 col-xlg-4">
			<div class="card card-inverse card-success">
				<div class="box text-center">
					<a href="{PHP|cot_url('page','m=add')}" target="_blank">
						<h1 class="font-light text-white"><i class="mdi mdi-plus"></i></h1>
						<h6 class="text-white">{PHP.L.Add} {PHP.L.Pages}</h6>
					</a>
				</div>
			</div>
		</div>

	</div>
	<!-- ENDIF -->
</div>
<div class="col-md-5">
	<!-- IF {PHP.cot_plugins_active.pagecom} AND {PHP.cot_plugins_active.comments} -->
	{PHP|pagecom('pagecom.admin','5','0','date','','','0')}
	<!-- ENDIF -->
	<!-- IF {PHP.cot_plugins_active.userinfo} -->
	<div class="col-md-12">
		<div class="card">
			<div class="card-body">
				{PHP|userinfo_lastseen('userinfo.lastseen')}
			</div>
		</div>
	</div>
	<!-- ENDIF -->
	<!-- IF {PHP.cot_plugins_active.adminstats} -->
	<div class="col-md-12">
		<div class="card">
			<div class="card-body">
				<h5><i class="mdi mdi-database"></i> {PHP.L.Database}:</h5>
				<div class="wrapper">
					<table class="tablesaw table-bordered table-hover table" >
						<tr>
							<td>{PHP.adminstats.database.title}</td>
							<td class="text-right">{PHP.adminstats.database.value}</td>
						</tr>
						<tr>
							<td>{PHP.adminstats.mysqlcharset.title}</td>
							<td class="text-right">{PHP.adminstats.mysqlcharset.value}</td>
						</tr>
						<tr>
							<td>{PHP.adminstats.db_counts.title}</td>
							<td class="text-right">{PHP.adminstats.db_counts.value}</td>
						</tr>
						<tr>
							<td>{PHP.adminstats.db_rows.title}</td>
							<td class="text-right">{PHP.adminstats.db_rows.value}</td>
						</tr>
						<tr>
							<td>{PHP.adminstats.db_indexsize.title}</td>
							<td class="text-right">{PHP.adminstats.db_indexsize.value}</td>
						</tr>
						<tr>
							<td>{PHP.adminstats.db_datassize.title}</td>
							<td class="text-right">{PHP.adminstats.db_datassize.value}</td>
						</tr>
						<tr>
							<td>{PHP.adminstats.db_totalsize.title}</td>
							<td class="text-right">{PHP.adminstats.db_totalsize.value}</td>
						</tr>
					</table>
				</div>
			</div>
		</div>
	</div>
	<div class="col-md-12">
		<div class="card">
			<div class="card-body">
				<h5><i class="mdi mdi-power-plug"></i> {PHP.L.Extensions}:</h5>
				<div class="wrapper">
					<table class="tablesaw table-bordered table-hover table" >
						<tr>
							<td>{PHP.adminstats.active_modules.title}</td>
							<td class="text-right">{PHP.adminstats.active_modules.value} {PHP.L.Of} {PHP.adminstats.modules.value}</td>
						</tr>
						<tr>
							<td>{PHP.adminstats.active_plugins.title}</td>
							<td class="text-right">{PHP.adminstats.active_plugins.value} {PHP.L.Of} {PHP.adminstats.plugins.value}</td>
						</tr>
						<tr>
							<td>{PHP.adminstats.active_hooks.title}</td>
							<td class="text-right">{PHP.adminstats.active_hooks.value} {PHP.L.Of} {PHP.adminstats.hooks.value}</td>
						</tr>
					</table>
				</div>
			</div>
		</div>
	</div>
	<div class="col-md-12">
		<div class="card">
			<div class="card-body">
				<h5><i class="mdi mdi-cached"></i> {PHP.L.Cache}:</h5>
				<div class="wrapper">
					<table class="tablesaw table-bordered table-hover table" >
						<tr>
							<td>{PHP.adminstats.cache.title}</td>
							<td class="text-right lower">{PHP.adminstats.cache.value}</td>
						</tr>
						<!-- IF {PHP.adminstats.cache.value} != {PHP.L.Disabled} -->
						<tr>
							<td>{PHP.adminstats.cache_drv.title}</td>
							<td class="text-right">{PHP.adminstats.cache_drv.value}</td>
						</tr>
						<!-- ENDIF -->
						<tr>
							<td>{PHP.adminstats.xtpl_cache.title}</td>
							<td class="text-right lower">{PHP.adminstats.xtpl_cache.value}</td>
						</tr>
						<tr>
							<td>{PHP.adminstats.html_cleanup.title}</td>
							<td class="text-right lower">{PHP.adminstats.html_cleanup.value}</td>
						</tr>
						<tr>
							<td>{PHP.adminstats.cache_index.title}</td>
							<td class="text-right lower">{PHP.adminstats.cache_index.value}</td>
						</tr>
						<tr>
							<td>{PHP.adminstats.cache_page.title}</td>
							<td class="text-right lower">{PHP.adminstats.cache_page.value}</td>
						</tr>
						<tr>
							<td>{PHP.adminstats.cache_forums.title}</td>
							<td class="text-right lower">{PHP.adminstats.cache_forums.value}</td>
						</tr>
					</table>
				</div>
			</div>
		</div>
	</div>
	<!-- ENDIF -->
	<div class="col-md-12">
		<div class="card">
			<div class="card-body">
				<h5><i class="mdi mdi-security"></i> {PHP.L.Security}:</h5>
				<div class="wrapper">
					<table class="tablesaw table-bordered table-hover table" >
						<tr>
							<td>{PHP.adminstats.debug_mode.title}</td>
							<td class="text-right lower">{PHP.adminstats.debug_mode.value}</td>
						</tr>
						<tr>
							<td>{PHP.adminstats.display_errors.title}</td>
							<td class="text-right lower">{PHP.adminstats.display_errors.value}</td>
						</tr>
						<tr>
							<td>
								{PHP.adminstats.ipcheck.title}</td>
							<td class="text-right lower">{PHP.adminstats.ipcheck.value}</td>
						</tr>
						<tr>
							<td>{PHP.adminstats.authcache.title}</td>
							<td class="text-right lower">{PHP.adminstats.authcache.value}</td>
						</tr>
						<tr>
							<td>{PHP.adminstats.useremailduplicate.title}</td>
							<td class="text-right lower">{PHP.adminstats.useremailduplicate.value}</td>
						</tr>
					</table>
				</div>
			</div>
		</div>
	</div>
	<!-- BEGIN: SIDEPANEL -->
	<div class="col-md-12">
		<div class="card">
			<div class="card-body">
				<div class="wrapper">
					{ADMIN_HOME_SIDEPANEL}
				</div>
			</div>
		</div>
	</div>
	<!-- END: SIDEPANEL -->

	<!-- ENDIF -->
</div>


<!-- END: MAIN -->
