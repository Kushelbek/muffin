<!-- BEGIN: LIST -->
<div class="col-md-12">
	<h5><i class="mdi mdi-view-module"></i> {PHP.L.Modules}</h5>
	<div class="card">
		<div class="card-body">
			<div class="table-responsive">
				<table class="tablesaw  table-bordered">
					<!-- BEGIN: ADMIN_STRUCTURE_EXT -->
					<tr>
						<td>
							<!-- IF {ADMIN_STRUCTURE_EXT_ICO} -->
							<img src="{ADMIN_STRUCTURE_EXT_ICO}" />
							<!-- ELSE -->
							<img src="{PHP.cfg.system_dir}/admin/img/plugins32.png" />
							<!-- ENDIF -->
						</td>
						<td><a href="{ADMIN_STRUCTURE_EXT_URL}">{ADMIN_STRUCTURE_EXT_NAME}</a></td>
					</tr>
					<!-- END: ADMIN_STRUCTURE_EXT -->
					<!-- BEGIN: ADMIN_STRUCTURE_EMPTY -->
					<tr>
						<td colspan="2">{PHP.L.adm_listisempty}</td>
					</tr>
					<!-- END: ADMIN_STRUCTURE_EMPTY -->
				</table>
			</div>
		</div>
	</div>
</div>
<!-- END: LIST -->

<!-- BEGIN: MAIN -->
<div class="col-md-12">
	{FILE "{PHP.cfg.themes_dir}/admin/{PHP.cfg.admintheme}/warnings.tpl"}
	<div class="card">
		<div class="card-body">
			<h5><i class="mdi mdi-view-module"></i> {PHP.L.Structure}</h5>
			
			<div class="button-group item-control">
				<a href="{ADMIN_STRUCTURE_URL_EXTRAFIELDS}" class="btn btn-success"><i class="mdi mdi-hexagon-multiple"></i> {PHP.L.adm_extrafields}</a>
				<a href="{ADMIN_PAGE_STRUCTURE_RESYNCALL}" class="ajax btn btn-success" title="{PHP.L.adm_tpl_resyncalltitle}"><i class="mdi mdi-loop"></i> {PHP.L.Resync}</a>
				<!-- IF {ADMIN_STRUCTURE_I18N_URL} -->
				<a href="{ADMIN_STRUCTURE_I18N_URL}" class="btn btn-success"><i class="mdi mdi-hexagon-multiple"></i>{PHP.L.i18n_structure}</a>
				<!-- ENDIF -->
			</div>
		</div>
	</div>
	<!-- BEGIN: OPTIONS -->
	<div class="card">
		<div class="card-body">
			<form name="savestructure" id="savestructure" action="{ADMIN_STRUCTURE_UPDATE_FORM_URL}" method="post" enctype="multipart/form-data">
				<div class="table-responsive">
					<table class="table">
						<tr>
							<td>{PHP.L.Path}:</td>
							<td>{ADMIN_STRUCTURE_PATH}</td>
						</tr>
						<tr>
							<td>{PHP.L.Code}:</td>
							<td>{ADMIN_STRUCTURE_CODE}</td>
						</tr>
						<tr>
							<td>{PHP.L.Title}:</td>
							<td>{ADMIN_STRUCTURE_TITLE}</td>
						</tr>
						<tr>
							<td>{PHP.L.Description}:</td>
							<td>{ADMIN_STRUCTURE_DESC}</td>
						</tr>
						<tr>
							<td>{PHP.L.Icon}:</td>
							<td>{ADMIN_STRUCTURE_ICON}</td>
						</tr>
						<tr>
							<td>{PHP.L.Locked}:</td>
							<td>{ADMIN_STRUCTURE_LOCKED}</td>
						</tr>
						<tr>
							<td>{PHP.L.adm_tpl_mode}:</td>
							<td>
								{ADMIN_STRUCTURE_TPLMODE} {ADMIN_STRUCTURE_SELECT}<br />
								{PHP.L.adm_tpl_quickcat}: {ADMIN_STRUCTURE_TPLQUICK}
							</td>
						</tr>
						<!-- BEGIN: EXTRAFLD -->
						<tr>
							<td>{ADMIN_STRUCTURE_EXTRAFLD_TITLE}:</td>
							<td>{ADMIN_STRUCTURE_EXTRAFLD}</td>
						</tr>
						<!-- END: EXTRAFLD -->
					</table>
				</div>
				<!-- BEGIN: CONFIG -->
				<h2>{PHP.L.Configuration}</h2>{CONFIG_HIDDEN}
				{ADMIN_CONFIG_EDIT_CUSTOM}
				<div class="table-responsive">
					<table class="table">
						<tr>
							<td>{PHP.L.Parameter}</td>
							<td>{PHP.L.Value}</td>
							<td>{PHP.L.Reset}</td>
						</tr>
						<!-- BEGIN: ADMIN_CONFIG_ROW -->
						<!-- BEGIN: ADMIN_CONFIG_FIELDSET_BEGIN -->
						<tr>
							<td>
								<h4>{ADMIN_CONFIG_FIELDSET_TITLE}</h4>
							</td>
						</tr>
						<!-- END: ADMIN_CONFIG_FIELDSET_BEGIN -->
						<!-- BEGIN: ADMIN_CONFIG_ROW_OPTION -->
						<tr>
							<td>{ADMIN_CONFIG_ROW_CONFIG_TITLE}:</td>
							<td>
								{ADMIN_CONFIG_ROW_CONFIG}
								<div class="adminconfigmore">{ADMIN_CONFIG_ROW_CONFIG_MORE}</div>
							</td>
							<td>
								<a data-toggle="tooltip" data-placement="bottom" title="{PHP.L.Reset}" data-original-title="{PHP.L.Reset}" href="{ADMIN_CONFIG_ROW_CONFIG_MORE_URL}" class=" btn btn-success"><i class="icon icon-action-undo"></i></a> 
							</td>
						</tr>
						<!-- END: ADMIN_CONFIG_ROW_OPTION -->
						<!-- END: ADMIN_CONFIG_ROW -->

					</table>
				</div>
				<!-- END: CONFIG -->
				<div class="table-responsive">
					<table class="table">
						<tr>
							<button type="submit" class="btn btn-success"> <i class="mdi mdi-update"></i> {PHP.L.Update}</button>
						</tr>
					</table>
				</div>
			</form>
		</div>
	</div>

	<!-- END: OPTIONS -->

	<!-- BEGIN: DEFAULT -->
	<div class="card">
		<div class="card-body">
			<h3>{PHP.L.editdeleteentries}:</h3>
			<form name="savestructure" id="savestructure" action="{ADMIN_STRUCTURE_UPDATE_FORM_URL}" method="post" class="ajax" enctype="multipart/form-data">
				<div class="table-responsive">
					<table class="table">
						<tr>
							<td>{PHP.L.Path}</td>
							<td>{PHP.L.Code}</td>
							<td>{PHP.L.Title}</td>
							<td>{PHP.L.TPL}</td>
							<td>{PHP.L.Pages}</td>
							<td>{PHP.L.Action}</td>
						</tr>
						<!-- BEGIN: ROW -->
						<tr>
							<td>{ADMIN_STRUCTURE_SPACEIMG|str_level($this)}{ADMIN_STRUCTURE_PATH}</td>
							<td>{ADMIN_STRUCTURE_CODE}</td>
							<td>{ADMIN_STRUCTURE_TITLE}</td>
							<td>{ADMIN_STRUCTURE_TPLQUICK}</td>
							<td>{ADMIN_STRUCTURE_COUNT}</td>
							<td>
								<a data-toggle="tooltip" data-placement="top" title="{PHP.L.Options}" data-original-title="{PHP.L.Options}" href="{ADMIN_STRUCTURE_OPTIONS_URL}" class="ajax btn btn-success"><i class="mdi mdi-settings"></i></a>
								<!-- IF {ADMIN_STRUCTURE_RIGHTS_URL} --><a  data-toggle="tooltip" data-placement="top" title="{PHP.L.Rights}" data-original-title="{PHP.L.Rights}" href="{ADMIN_STRUCTURE_RIGHTS_URL}" class="btn btn-success"><i class="mdi mdi-lock-plus"></i></a><!-- ENDIF -->
								<!-- IF {PHP.dozvil} --><a data-toggle="tooltip" data-placement="top" title="{PHP.L.Delete}" data-original-title="{PHP.L.Delete}" title="{PHP.L.Delete}" href="{ADMIN_STRUCTURE_UPDATE_DEL_URL}" class="btn btn-success"><i class="mdi mdi-delete"></i></a><!-- ENDIF -->
								<a data-toggle="tooltip" data-placement="top" title="{PHP.L.Pages}" data-original-title="{PHP.L.Pages}" target="_blank" href="{ADMIN_STRUCTURE_JUMPTO_URL}" class="btn btn-success"><i class="mdi mdi-folder"></i></a> 
							</td>
						</tr>
						<!-- END: ROW -->
						<tr>
							<td>
								<button type="submit" class="btn btn-success"> <i class="mdi mdi-update"></i> {PHP.L.Update}</button>
						</tr>
					</table>
				</div>
			</form>
			<p>{ADMIN_STRUCTURE_PAGINATION_PREV}{ADMIN_STRUCTURE_PAGNAV}{ADMIN_STRUCTURE_PAGINATION_NEXT} <span>{PHP.L.Total}: {ADMIN_STRUCTURE_TOTALITEMS}, {PHP.L.Onpage}: {ADMIN_STRUCTURE_COUNTER_ROW}</span></p>
		</div>
	</div>
	<!-- END: DEFAULT -->

	<!-- BEGIN: NEWCAT -->
	<div class="card">
		<div class="card-body">
			<h3><i class="mdi mdi-plus"></i> {PHP.L.Add}:</h3>
			<form name="addstructure" id="addstructure" action="{ADMIN_STRUCTURE_URL_FORM_ADD}" method="post" class="ajax" enctype="multipart/form-data">
				<div class="table-responsive">
					<table class="table">
						<tr>
							<td>{PHP.L.Path}:</td>
							<td>{ADMIN_STRUCTURE_PATH} {PHP.L.adm_required}</td>
						</tr>
						<tr>
							<td>{PHP.L.Code}:</td>
							<td>{ADMIN_STRUCTURE_CODE} {PHP.L.adm_required}</td>
						</tr>
						<tr>
							<td>{PHP.L.Title}:</td>
							<td>{ADMIN_STRUCTURE_TITLE} {PHP.L.adm_required}</td>
						</tr>
						<tr>
							<td>{PHP.L.Description}:</td>
							<td>{ADMIN_STRUCTURE_DESC}</td>
						</tr>
						<tr>
							<td>{PHP.L.Icon}:</td>
							<td>{ADMIN_STRUCTURE_ICON}</td>
						</tr>
						<tr>
							<td>{PHP.L.Locked}:</td>
							<td>{ADMIN_STRUCTURE_LOCKED}</td>
						</tr>
						<!-- BEGIN: EXTRAFLD -->
						<tr>
							<td>{ADMIN_STRUCTURE_EXTRAFLD_TITLE}:</td>
							<td>{ADMIN_STRUCTURE_EXTRAFLD}</td>
						</tr>
						<!-- END: EXTRAFLD -->
						<tr>
							<td>
								<button type="submit" class="btn btn-success"><i class="mdi mdi-plus"></i> {PHP.L.Add}</button>
							</td>
						</tr>
					</table>
				</div>
			</form>
		</div>
	</div>
	<!-- END: NEWCAT -->
</div>
<!-- END: MAIN -->
