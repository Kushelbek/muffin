<!-- BEGIN: MAIN -->
<div class="col-md-12">
	{FILE "{PHP.cfg.themes_dir}/admin/{PHP.cfg.admintheme}/warnings.tpl"}

	<h5><i class="mdi mdi-lock-outline"></i> {PHP.L.Rights}</h5>
	<form name="saverights" id="saverights" action="{ADMIN_RIGHTS_FORM_URL}" method="post" class="ajax">
		<!-- IF {PHP.g} > 5 -->
		<div class="card">
			<div class="card-body">
				<div class="row">
					<div class="col-md-3">
						<input type="checkbox" class="checkbox" name="ncopyrightsconf" />{PHP.L.adm_copyrightsfrom}:
					</div>
					<div class="col-md-6">
						{ADMIN_RIGHTS_SELECTBOX_GROUPS}
					</div>
					<div class="col-md-3">
						<button type="submit" class="btn btn-info waves-effect waves-light btn-sm m-r-10"><span class="btn-label"><i class="mdi mdi-reload"></i></span> {PHP.L.Update}</button>
					</div>

				</div>
			</div>
		</div>
		<!-- ENDIF -->
		<!-- BEGIN: RIGHTS_SECTION -->

		<div class="card">
			<div class="card-body">
				<h4>{RIGHTS_SECTION_TITLE} <a class="btn btn-info waves-effect waves-light btn-sm m-r-10" href="{ADMIN_RIGHTS_ADVANCED_URL}"><span class="btn-label"><i class="mdi mdi-reply-all"></i></span> {PHP.L.ReadMore}</a></h4>
				<div class="table-responsive">
					<table class="table">
						<thead>
							<tr>
								<th rowspan="2"></th>
								<th rowspan="2">{PHP.L.Section}</th>
								<th colspan="{ADMIN_RIGHTS_ADV_COLUMNS}">{PHP.L.Rights}</th>
								<th>{PHP.L.adm_rightspergroup}</th>
								<th>{PHP.L.adm_setby}</th>
							</tr>
							<tr>
								<th>{PHP.R.admin_icon_auth_r}</th>
								<th>{PHP.R.admin_icon_auth_w}</th>
								<th>{PHP.R.admin_icon_auth_1}</th>
								<!-- IF {PHP.advanced} -->
								<th>{PHP.R.admin_icon_auth_2}</th>
								<th>{PHP.R.admin_icon_auth_3}</th>
								<th>{PHP.R.admin_icon_auth_4}</th>
								<th>{PHP.R.admin_icon_auth_5}</th>
								<!-- ENDIF -->
								<th>{PHP.R.admin_icon_auth_a}</th>
							</tr>
						</thead>
						<!-- BEGIN: RIGHTS_ROW -->
						<tr>
							<td>
								<!-- IF {ADMIN_RIGHTS_ROW_ICO} -->
								<img src="{ADMIN_RIGHTS_ROW_ICO}" />
								<!-- ELSE -->
								<img src="{PHP.cfg.system_dir}/admin/img/plugins32.png" />
								<!-- ENDIF -->
							</td>
							<td><a href="{ADMIN_RIGHTS_ROW_LINK}">{ADMIN_RIGHTS_ROW_TITLE}</a></td>
							<!-- BEGIN: RIGHTS_ROW_ITEMS -->
							<td>
								<!-- IF {PHP.out.tpl_rights_parseline_locked} AND {PHP.out.tpl_rights_parseline_state} -->
								<input type="hidden" name="{ADMIN_RIGHTS_ROW_ITEMS_NAME}" value="1" />
								{PHP.R.admin_icon_discheck1}
								<!-- ENDIF -->
								<!-- IF {PHP.out.tpl_rights_parseline_locked} AND !{PHP.out.tpl_rights_parseline_state} -->
								{PHP.R.admin_icon_discheck0}
								<!-- ENDIF -->
								<!-- IF !{PHP.out.tpl_rights_parseline_locked} -->
								<input type="checkbox" class="checkbox" name="{ADMIN_RIGHTS_ROW_ITEMS_NAME}" {ADMIN_RIGHTS_ROW_ITEMS_CHECKED}{ADMIN_RIGHTS_ROW_ITEMS_DISABLED} />
								<input type="checkbox" id="{ADMIN_RIGHTS_ROW_ITEMS_NAME}" class="chk-col-green" name="{ADMIN_RIGHTS_ROW_ITEMS_NAME}" {ADMIN_RIGHTS_ROW_ITEMS_CHECKED}{ADMIN_RIGHTS_ROW_ITEMS_DISABLED} />
								<label for="{ADMIN_RIGHTS_ROW_ITEMS_NAME}"></label>
								<!-- ENDIF -->
							</td>
							<!-- END: RIGHTS_ROW_ITEMS -->
							<td>
								<div class="button-group item-control">
									<a class="btn btn-success" title="{PHP.L.Rights}" data-toggle="tooltip" data-placement="top" data-original-title="{PHP.L.Rights}" href="{ADMIN_RIGHTS_ROW_RIGHTSBYITEM}"><i class="mdi mdi-lock-plus"></i></a>
									<a class="btn btn-success" title="{PHP.L.Open}" data-toggle="tooltip" data-placement="top" data-original-title="{PHP.L.Open}" href="{ADMIN_RIGHTS_ROW_LINK}"><i class="mdi mdi-folder"></i></a>
								</div>
							</td>
							<td>
								<span class="label label-light-info">{ADMIN_RIGHTS_ROW_USER}{ADMIN_RIGHTS_ROW_PRESERVE}</span>
							</td>
						</tr>
						<!-- END: RIGHTS_ROW -->
					</table>
				</div>
				<button type="submit" class="btn btn-info waves-effect waves-light btn-sm m-t-10"><span class="btn-label"><i class="mdi mdi-reload"></i></span> {PHP.L.Update}</button>
			</div>
		</div>
		<!-- END: RIGHTS_SECTION -->

	</form>

</div>
<!-- END: MAIN -->
<div class="col-md-12">
	<div class="card">
		<div class="card-body">
			<!-- BEGIN: RIGHTS_HELP -->
			<p>{PHP.R.admin_icon_auth_r}&nbsp; {PHP.L.Read}</p>
			<p>{PHP.R.admin_icon_auth_w}&nbsp; {PHP.L.Write}</p>
			<p>{PHP.R.admin_icon_auth_1}&nbsp; {PHP.L.Custom} #1</p>
			<!-- IF {PHP.advanced} -->
			<p>{PHP.R.admin_icon_auth_2}&nbsp; {PHP.L.Custom} #2</p>
			<p>{PHP.R.admin_icon_auth_3}&nbsp; {PHP.L.Custom} #3</p>
			<p>{PHP.R.admin_icon_auth_4}&nbsp; {PHP.L.Custom} #4</p>
			<p>{PHP.R.admin_icon_auth_5}&nbsp; {PHP.L.Custom} #5</p>
			<!-- ENDIF -->
			<p>{PHP.R.admin_icon_auth_a}&nbsp; {PHP.L.Administration}</p>
			<!-- END: RIGHTS_HELP -->
		</div>
	</div>
</div>
