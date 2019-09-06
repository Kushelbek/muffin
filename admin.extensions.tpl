<!-- BEGIN: MAIN -->
<div class="col-md-12">
	{FILE "{PHP.cfg.themes_dir}/admin/{PHP.cfg.admintheme}/warnings.tpl"}
	<!-- BEGIN: DEFAULT -->
	<div class="card">
		<div class="card-body">
			<h5><i class="mdi mdi-power-plug"></i> {PHP.L.Extcontrol}</h5>
				<div class="button-group item-control">
					<a class="btn  <!-- IF {ADMIN_EXTENSIONS_SORT_ALP_SEL} -->btn-primary<!-- ELSE --> btn-success<!-- ENDIF -->" href="{ADMIN_EXTENSIONS_SORT_ALP_URL}"><i class="mdi mdi-format-color-text"></i> <span>{PHP.L.adm_sort_alphabet}</span></a>
					<a class="btn btn-primary  <!-- IF {ADMIN_EXTENSIONS_SORT_CAT_SEL} -->btn-primary<!-- ELSE --> btn-success<!-- ENDIF -->" href="{ADMIN_EXTENSIONS_SORT_CAT_URL}"><i class="mdi mdi-view-module"></i> <span>{PHP.L.adm_sort_category}</span></a>
					<a class="btn  <!-- IF {ADMIN_EXTENSIONS_ONLY_INSTALLED_SEL} -->btn-primary<!-- ELSE -->btn-success<!-- ENDIF -->" href="{ADMIN_EXTENSIONS_ONLY_INSTALLED_URL}" href="{ADMIN_EXTENSIONS_ONLY_INSTALLED_URL}"><i class="mdi mdi-check-all"></i> <span>{PHP.L.adm_only_installed}</span></a>
					<a class="btn btn-success " href="{ADMIN_EXTENSIONS_HOOKS_URL}"><i class="fa fa-code"></i> <span>{PHP.L.Hooks}</span></a>
				</div>
		</div>
	</div>
	<!-- BEGIN: SECTION -->
	<div class="card">
		<div class="card-body">
			<h5><i class="mdi mdi-power-plug"></i> {ADMIN_EXTENSIONS_SECTION_TITLE} <sup><span class="badge badge-info"> {ADMIN_EXTENSIONS_CNT_EXTP}</span></sup></h5>
			<div class="table-responsive">
				<table class="table table-bordered table-hover">
					<thead>
						<tr>
							<th>{PHP.L.Name} {PHP.L.adm_clicktoedit}</th>
							<th>{PHP.L.Code}</th>
							<th>{PHP.L.Version}</th>
							<th>{PHP.L.Parts}</th>
							<th>{PHP.L.Status}</th>
							<th>{PHP.L.Action}</th>
						</tr>
					</thead>
					<!-- BEGIN: ROW -->
					<!-- BEGIN: ROW_CAT -->
					<tr>
						<td>
							<h4>{ADMIN_EXTENSIONS_CAT_TITLE}</h4>
						</td>
					</tr>
					<!-- END: ROW_CAT -->
					<!-- BEGIN: ROW_ERROR_EXT -->
					<tr>
						<td>{ADMIN_EXTENSIONS_X_ERR}</td>
						<td>{ADMIN_EXTENSIONS_ERROR_MSG}</td>
					</tr>
					<!-- END: ROW_ERROR_EXT -->
					<tr>
						<td>
							<!-- IF {PHP.R.admin-config-icons} -->
							<img src="<!-- IF {ADMIN_EXTENSIONS_ICO} -->{ADMIN_EXTENSIONS_ICO}<!-- ELSE -->{PHP.cfg.system_dir}/admin/img/plugins32.png<!-- ENDIF -->" alt="" />
							<!-- ENDIF -->
							<a href="{ADMIN_EXTENSIONS_DETAILS_URL}">{ADMIN_EXTENSIONS_NAME}</a>
							<!-- IF {PHP.R.admin-config-descs} -->
							<p>{ADMIN_EXTENSIONS_DESCRIPTION|cot_cutstring($this,60)}</p>
							<!-- ENDIF -->
						</td>
						<td>{ADMIN_EXTENSIONS_CODE_X}</td>
						<td>
							<!-- IF {PHP.part_status} != 3 AND {ADMIN_EXTENSIONS_VERSION_COMPARE} > 0 -->
							<span class="text-danger">{ADMIN_EXTENSIONS_VERSION_INSTALLED} </span> / <span class="text-success">{ADMIN_EXTENSIONS_VERSION} </span>
							<!-- ELSE -->
							{ADMIN_EXTENSIONS_VERSION}
							<!-- ENDIF -->
						</td>
						<td>{ADMIN_EXTENSIONS_PARTSCOUNT}</td>
						<td>{ADMIN_EXTENSIONS_STATUS}</td>
						<td>
							<div class="button-group item-control">
								<!-- IF {ADMIN_EXTENSIONS_TOTALCONFIG} -->
								<a data-toggle="tooltip" data-placement="top" data-original-title="{PHP.L.Configuration}"  title="{PHP.L.Configuration}" href="{ADMIN_EXTENSIONS_EDIT_URL}" class="btn btn-success"><i class="mdi mdi-settings"></i></a>
								<!-- ENDIF -->
								<!-- IF {PHP.ifstruct} -->
								<a data-toggle="tooltip" data-placement="top" data-original-title="{PHP.L.Structure}" title="{PHP.L.Structure}" href="{ADMIN_EXTENSIONS_JUMPTO_URL_STRUCT}" class="btn btn-success"><i class="mdi mdi-view-module"></i></a>
								<!-- ENDIF -->
								<!-- IF {PHP.totalinstalled} -->
								<a data-toggle="tooltip" data-placement="top" data-original-title="{PHP.L.Rights}" title="{PHP.L.Rights}" href="{ADMIN_EXTENSIONS_RIGHTS_URL}" class="btn btn-success"><i class="mdi mdi-lock-plus"></i></a>
								<!-- ENDIF -->
								<!-- IF {PHP.ifthistools} -->
								<a data-toggle="tooltip" data-placement="top" title="" data-original-title="{PHP.L.Administration}" title="{PHP.L.Administration}" href="{ADMIN_EXTENSIONS_JUMPTO_URL_TOOLS}" class="btn btn-success"><i class="mdi mdi-apps"></i></a>
								<!-- ENDIF -->
								<!-- IF {PHP.if_plg_standalone} -->
								<a data-toggle="tooltip" data-placement="top" data-original-title="{PHP.L.Open}" title="{PHP.L.Open}" href="{ADMIN_EXTENSIONS_JUMPTO_URL}" class="btn btn-success"><i class="mdi mdi-folder"></i></a>
								<!-- ENDIF -->
							</div>
						</td>
					</tr>
					<!-- END: ROW -->
					<!-- BEGIN: ROW_ERROR -->
					<tr>
						<td>{ADMIN_EXTENSIONS_X}</td>
						<td>{PHP.L.adm_opt_setup_missing}</td>
					</tr>
					<!-- END: ROW_ERROR -->
				</table>
			</div>
		</div>
	</div>
	<!-- END: SECTION -->
	<!-- END: DEFAULT -->

	<!-- BEGIN: DETAILS -->
	<div class="card">
		<div class="card-body">
					<h5><i class="mdi mdi-power-plug"></i> {ADMIN_EXTENSIONS_TYPE} {ADMIN_EXTENSIONS_NAME}:</h5>
			<!-- IF {PHP.isinstalled} AND {PHP.exists} -->
			<div class="button-group item-control">
				<!-- IF {ADMIN_EXTENSIONS_JUMPTO_URL} -->
				<a title="{PHP.L.Open}" href="{ADMIN_EXTENSIONS_JUMPTO_URL}" class="btn btn-success "><i class="mdi mdi-folder"></i> {PHP.L.Open}</a>
				<!-- ENDIF -->
				<!-- IF {ADMIN_EXTENSIONS_JUMPTO_URL_TOOLS} -->
				<a title="{PHP.L.Administration}" href="{ADMIN_EXTENSIONS_JUMPTO_URL_TOOLS}" class="btn btn-success "><i class="mdi mdi-face"></i> {PHP.L.Administration}</a>
				<!-- ENDIF -->
				<!-- IF {ADMIN_EXTENSIONS_TOTALCONFIG} > 0 -->
				<a title="{PHP.L.Configuration}" href="{ADMIN_EXTENSIONS_CONFIG_URL}" class="btn btn-success "><i class="mdi mdi-settings"></i> {PHP.L.Configuration} ({ADMIN_EXTENSIONS_TOTALCONFIG})</a>
				<!-- ENDIF -->
				<a title="{PHP.L.Rights}" href="{ADMIN_EXTENSIONS_RIGHTS}" class="btn btn-danger "><i class="mdi mdi-lock-plus"></i> {PHP.L.short_rights}</a>
				<!-- IF {ADMIN_EXTENSIONS_JUMPTO_URL_STRUCT} -->
				<a title="{PHP.L.Structure}" href="{ADMIN_EXTENSIONS_JUMPTO_URL_STRUCT}" class="btn btn-success "><i class="mdi mdi-view-module"></i> {PHP.L.Structure}</a>
				<!-- ENDIF -->
			</div>
			<!-- ENDIF -->
			<div class="table-responsive">
				<table class="table table-striped">
					<tr>
						<td>{PHP.L.Code}:</td>
						<td>{ADMIN_EXTENSIONS_CODE}</td>
					</tr>
					<tr>
						<td>{PHP.L.Description}:</td>
						<td>{ADMIN_EXTENSIONS_DESCRIPTION}</td>
					</tr>
					<tr>
						<td>{PHP.L.Version}:</td>
						<td>
							<!-- IF {PHP.isinstalled} AND {ADMIN_EXTENSIONS_VERSION_COMPARE} > 0 -->
							<span class="text-danger">{ADMIN_EXTENSIONS_VERSION_INSTALLED}</span> / <span class="text-success">{ADMIN_EXTENSIONS_VERSION}</span>
							<!-- ELSE -->
							{ADMIN_EXTENSIONS_VERSION}
							<!-- ENDIF -->
						</td>
					</tr>
					<tr>
						<td>{PHP.L.Date}:</td>
						<td>{ADMIN_EXTENSIONS_DATE}</td>
					</tr>
			
					<tr>
						<td>{PHP.L.Author}:</td>
						<td>{ADMIN_EXTENSIONS_AUTHOR}</td>
					</tr>
					<tr>
						<td>{PHP.L.Copyright}:</td>
						<td>{ADMIN_EXTENSIONS_COPYRIGHT}</td>
					</tr>
					<tr>
						<td>{PHP.L.Notes}:</td>
						<td>{ADMIN_EXTENSIONS_NOTES}</td>
					</tr>
					<!-- BEGIN: DEPENDENCIES -->
					<tr>
						<td>{ADMIN_EXTENSIONS_DEPENDENCIES_TITLE}:</td>
						<td>
							<ul class="list-unstyled">
								<!-- BEGIN: DEPENDENCIES_ROW -->
								<li>
									<i class="mdi mdi-check"></i>
									<a href="{ADMIN_EXTENSIONS_DEPENDENCIES_ROW_URL}" class="{ADMIN_EXTENSIONS_DEPENDENCIES_ROW_CLASS}">{ADMIN_EXTENSIONS_DEPENDENCIES_ROW_NAME}</a>
								</li>
								<!-- END: DEPENDENCIES_ROW -->
							</ul>
						</td>
					</tr>
					<!-- END: DEPENDENCIES -->
					<tr>
						<td>{PHP.L.Action}:</td>
						<td>
							<div class="button-group item-control">
								<!-- IF !{PHP.isinstalled} AND {PHP.dependencies_satisfied} -->
								<a title="{PHP.L.adm_opt_install_explain}" href="{ADMIN_EXTENSIONS_INSTALL_URL}" class="btn btn-success"><i class="mdi mdi-plus"></i> {PHP.L.adm_opt_install}</a>
								<!-- ENDIF -->
								<!-- IF {PHP.isinstalled} -->
								<!-- IF {PHP.exists} -->
								<a title="{PHP.L.adm_opt_install_explain}" href="{ADMIN_EXTENSIONS_UPDATE_URL}" class="btn btn-success"><i class="mdi mdi-reload"></i> {PHP.L.adm_opt_update}</a>
								<!-- ENDIF -->
								<a title="{PHP.L.adm_opt_uninstall_explain}" href="{ADMIN_EXTENSIONS_UNINSTALL_URL}" class="btn btn-danger"><i class="mdi mdi-delete"></i> {PHP.L.adm_opt_uninstall}</a>
								<a title="{PHP.L.adm_opt_pauseall_explain}" href="{ADMIN_EXTENSIONS_PAUSE_URL}" class="btn btn-success"><i class="mdi mdi-play-pause"></i> {PHP.L.adm_opt_pauseall}</a>
								<!-- IF {PHP.exists} -->
								<a title="{PHP.L.adm_opt_unpauseall_explain}" href="{ADMIN_EXTENSIONS_UNPAUSE_URL}" class="btn btn-success"><i class="mdi mdi-play"></i> {PHP.L.adm_opt_unpauseall}</a>
								<!-- ENDIF -->
								<!-- ENDIF -->
							</div>
						</td>
					</tr>
				</table>
			</div>
		</div>
	</div>

	<div class="card">
		<div class="card-body">
			<h5><i class="mdi mdi-power-plug"></i> {PHP.L.Parts}:</h5>
			<div class="table-responsive">
				<table class="table table-bordered">
					<thead>
						<tr>
							<th>#</th>
							<th>{PHP.L.Part}</th>
							<th>{PHP.L.File}</th>
							<th>{PHP.L.Hooks}</th>
							<th>{PHP.L.Order}</th>
							<th>{PHP.L.Status}</th>
							<th>{PHP.L.Action}</th>
						</tr>
					</thead>
					<!-- BEGIN: ROW_ERROR_PART -->
					<tr>
						<td>{ADMIN_EXTENSIONS_DETAILS_ROW_X}</td>
						<td>{ADMIN_EXTENSIONS_DETAILS_ROW_ERROR}</td>
					</tr>
					<!-- END: ROW_ERROR_PART -->
					<!-- BEGIN: ROW_PART -->
					<tr>
						<td>{ADMIN_EXTENSIONS_DETAILS_ROW_I_1}</td>
						<td>{ADMIN_EXTENSIONS_DETAILS_ROW_PART}</td>
						<td>{ADMIN_EXTENSIONS_DETAILS_ROW_FILE}</td>
						<td>{ADMIN_EXTENSIONS_DETAILS_ROW_HOOKS}</td>
						<td>{ADMIN_EXTENSIONS_DETAILS_ROW_ORDER}</td>
						<td>{ADMIN_EXTENSIONS_DETAILS_ROW_STATUS}</td>
						<td>
							<!-- BEGIN: ROW_PART_NOTINSTALLED -->
							&ndash;
							<!-- END: ROW_PART_NOTINSTALLED -->
							<!-- BEGIN: ROW_PART_PAUSE -->
							<a href="{ADMIN_EXTENSIONS_DETAILS_ROW_PAUSEPART_URL}" class="ajax btn btn-success"><i class="mdi mdi-play-pause"></i> {PHP.L.adm_opt_pause}</a>
							<!-- END: ROW_PART_PAUSE -->
							<!-- BEGIN: ROW_PART_UNPAUSE -->
							<a href="{ADMIN_EXTENSIONS_DETAILS_ROW_UNPAUSEPART_URL}" class="ajax btn btn-success"><i class="mdi mdi-play"></i> {PHP.L.adm_opt_unpause}</a>
							<!-- END: ROW_PART_UNPAUSE -->
						</td>
					</tr>
					<!-- END: ROW_PART -->
				</table>
			</div>
		</div>
	</div>

	<div class="card">
		<div class="card-body">
			<h5><i class="mdi mdi-power-plug"></i> {PHP.L.Tags}:</h5>
			<div class="table-responsive">
				<table class="table table-bordered">
					<thead>
						<tr>
							<th>#</th>
							<th>{PHP.L.Part}</th>
							<th>{PHP.L.Files} / {PHP.L.Tags}</th>
						</tr>
					</thead>
					<!-- BEGIN: ROW_ERROR_TAGS -->
					<tr>
						<td>{ADMIN_EXTENSIONS_DETAILS_ROW_I_1}</td>
						<td>{ADMIN_EXTENSIONS_DETAILS_ROW_PART}</td>
						<td>{PHP.L.None}</td>
					</tr>
					<!-- END: ROW_ERROR_TAGS -->
					<!-- BEGIN: ROW_TAGS -->
					<tr>
						<td>{ADMIN_EXTENSIONS_DETAILS_ROW_I_1}</td>
						<td>{ADMIN_EXTENSIONS_DETAILS_ROW_PART}</td>
						<td>{ADMIN_EXTENSIONS_DETAILS_ROW_LISTTAGS}</td>
					</tr>
					<!-- END: ROW_TAGS -->
				</table>
			</div>
		</div>
	</div>
	<!-- END: DETAILS -->

	<!-- BEGIN: HOOKS -->
	<div class="card">
		<div class="card-body">
			<h5><i class="mdi mdi-power-plug"></i> {PHP.L.Hooks} ({ADMIN_EXTENSIONS_CNT_HOOK}):</h5>
			<div class="table-responsive">
				<table class="table table-bordered">
					<thead>
						<tr>
							<th>{PHP.L.Hooks}</th>
							<th>{PHP.L.Plugin}</th>
							<th>{PHP.L.Order}</th>
							<th>{PHP.L.Active}</th>
						</tr>
					</thead>
					<tbody>
						<!-- BEGIN: HOOKS_ROW -->
						<tr>
							<td>{ADMIN_EXTENSIONS_HOOK}</td>
							<td>{ADMIN_EXTENSIONS_CODE}</td>
							<td>{ADMIN_EXTENSIONS_ORDER}</td>
							<td>{ADMIN_EXTENSIONS_ACTIVE}</td>
						</tr>
						<!-- END: HOOKS_ROW -->
					</tbody>
				</table>
			</div>
		</div>
	</div>
	<!-- END: HOOKS -->
</div>
<!-- END: MAIN -->
