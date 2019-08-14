<!-- BEGIN: MAIN -->
<div class="col-md-12">
	{FILE "{PHP.cfg.themes_dir}/admin/{PHP.cfg.admintheme}/warnings.tpl"}
	<div class="card">
		<div class="card-body">
			<h5><i class="mdi mdi-lock-plus"></i> {PHP.L.Rights}</h5>
			<div class="btn-group">
				<a class="btn btn-info waves-effect waves-light btn-sm m-r-10" href="{ADMIN_RIGHTSBYITEM_ADVANCED_URL}"><i class="mdi mdi-reply-all"></i> {PHP.L.ReadMore}</a>
			</div>
			<div class="table-responsive">
				<form name="saverightsbyitem" id="saverightsbyitem" action="{ADMIN_RIGHTSBYITEM_FORM_URL}" method="post" class="ajax">
					<table class="table">
						<thead>
							<tr>
								<th rowspan="2"></th>
								<th rowspan="2">{PHP.L.Groups}</th>
								<th colspan="{ADMIN_RIGHTSBYITEM_ADV_COLUMNS}">{PHP.L.Rights}</th>
								<th rowspan="2">{PHP.L.Open}</th>
								<th rowspan="2">{PHP.L.adm_setby}</th>
							</tr>
							<tr>
								<th>{PHP.R.admin_icon_auth_r}</th>
								<th>{PHP.R.admin_icon_auth_w}</th>
								<!-- IF {PHP.advanced} OR {PHP.ic} == 'page' -->
								<th>{PHP.R.admin_icon_auth_1}</th><!-- ENDIF -->
								<!-- IF {PHP.advanced} -->
								<th>{PHP.R.admin_icon_auth_2}</th>
								<th>{PHP.R.admin_icon_auth_3}</th>
								<th>{PHP.R.admin_icon_auth_4}</th>
								<th>{PHP.R.admin_icon_auth_5}</th><!-- ENDIF -->
								<th>{PHP.R.admin_icon_auth_a}</th>
							</tr>
						</thead>
						<tbody>
							<!-- BEGIN: RIGHTSBYITEM_ROW -->
							<tr>
								<td><img src="{PHP.cfg.system_dir}/admin/img/users.png" /></td>
								<td><a href="{ADMIN_RIGHTSBYITEM_ROW_LINK}">{ADMIN_RIGHTSBYITEM_ROW_TITLE}</a></td>
								<!-- BEGIN: ROW_ITEMS -->
								<td>
									<!-- IF {PHP.out.tpl_rights_parseline_locked} AND {PHP.out.tpl_rights_parseline_state} --><input type="hidden" name="{ADMIN_RIGHTSBYITEM_ROW_ITEMS_NAME}" value="1" />
									{PHP.R.admin_icon_discheck1}
									<!-- ENDIF -->
									<!-- IF {PHP.out.tpl_rights_parseline_locked} AND !{PHP.out.tpl_rights_parseline_state} -->{PHP.R.admin_icon_discheck0}
									<!-- ENDIF -->
									<!-- IF !{PHP.out.tpl_rights_parseline_locked} -->
									<input type="checkbox" id="{ADMIN_RIGHTSBYITEM_ROW_ITEMS_NAME}" class="chk-col-green" name="{ADMIN_RIGHTSBYITEM_ROW_ITEMS_NAME}" {ADMIN_RIGHTSBYITEM_ROW_ITEMS_CHECKED}{ADMIN_RIGHTSBYITEM_ROW_ITEMS_DISABLED} />
									<label for="{ADMIN_RIGHTSBYITEM_ROW_ITEMS_NAME}"></label>
									<!-- ENDIF -->
								</td>
								<!-- END: ROW_ITEMS -->
								<td>
									<div class="button-group item-control">
										<a class="btn btn-success" title="{PHP.L.Rights}" data-toggle="tooltip" data-placement="top" data-original-title="{PHP.L.Rights}" href="{ADMIN_RIGHTSBYITEM_ROW_JUMPTO}"><i class="mdi mdi-folder"></i></a>
										<a class="btn btn-success" title="{PHP.L.Open}" data-toggle="tooltip" data-placement="top" data-original-title="{PHP.L.Open}" href="{ADMIN_RIGHTSBYITEM_ROW_LINK}"><i class="mdi mdi-lock-plus"></i></a>
									</div>
								</td>

								<td><span class="label label-light-info">{ADMIN_RIGHTSBYITEM_ROW_USER}{ADMIN_RIGHTSBYITEM_ROW_PRESERVE}</span></td>
							</tr>
							<!-- END: RIGHTSBYITEM_ROW -->
							<tr>
								<td colspan="{ADMIN_RIGHTSBYITEM_4ADV_COLUMNS}"><button type="submit" class="btn btn-info waves-effect waves-light btn-sm m-t-10"><span class="btn-label"><i class="mdi mdi-reload"></i></span> {PHP.L.Update}</button></td>
							</tr>
						</tbody>
					</table>
				</form>
			</div>
		</div>
	</div>
</div>
<!-- END: MAIN -->
<div class="col-md-12">
	<div class="card">
		<div class="card-body">
<!-- BEGIN: RIGHTSBYITEM_HELP -->
<p>{PHP.R.admin_icon_auth_r}&nbsp; {PHP.L.Read}</p>
<p>{PHP.R.admin_icon_auth_w}&nbsp; {PHP.L.Write}</p>
<!-- IF {PHP.advanced} OR {PHP.ic} == 'page' -->
<p>{PHP.R.admin_icon_auth_1}&nbsp; {PHP.l_custom1}</p>
<!-- ENDIF -->
<!-- IF {PHP.advanced} -->
<p>{PHP.R.admin_icon_auth_2}&nbsp; {PHP.L.Custom} #2</p>
<p>{PHP.R.admin_icon_auth_3}&nbsp; {PHP.L.Custom} #3</p>
<p>{PHP.R.admin_icon_auth_4}&nbsp; {PHP.L.Custom} #4</p>
<p>{PHP.R.admin_icon_auth_5}&nbsp; {PHP.L.Custom} #5</p>
<!-- ENDIF -->
<p>{PHP.R.admin_icon_auth_a}&nbsp; {PHP.L.Administration}</p>
<!-- END: RIGHTSBYITEM_HELP -->
		</div>
	</div>
</div>