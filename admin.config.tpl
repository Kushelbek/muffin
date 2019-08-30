<!-- BEGIN: MAIN -->

<div class="col-md-12">
	{FILE "{PHP.cfg.themes_dir}/admin/{PHP.cfg.admintheme}/warnings.tpl"}
	<div class="card">
		<!-- BEGIN: EDIT -->
		<div class="card-body">
			<h5><i class="mdi mdi-settings"></i> {PHP.L.Configuration}</h5>
			{ADMIN_CONFIG_EDIT_CUSTOM}
			<form name="saveconfig" id="saveconfig" action="{ADMIN_CONFIG_FORM_URL}" method="post" class="ajax form-horizontal">
				<div class="table-responsive">
					<table class="table">
						<thead>
							<tr>
								<th>{PHP.L.Parameter}</th>
								<th>{PHP.L.Value}</th>
								<th>{PHP.L.Action}</th>
							</tr>
						</thead>
						<!-- BEGIN: ADMIN_CONFIG_ROW -->
						<!-- BEGIN: ADMIN_CONFIG_FIELDSET_BEGIN -->
						<tr>
							<td class="group_begin" colspan="3">
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
							<td class="action centerall">
								<div class="btn-group">
									<a href="{ADMIN_CONFIG_ROW_CONFIG_MORE_URL}" class="ajax btn btn-primary">
										<i class="mdi mdi-reload"></i> <span>{PHP.L.Reset}</span>
									</a>
									<button type="submit" class="btn btn-primary btn-{PHP.R.admin-config-buttonsize1}"><i class="mdi mdi-reload"></i> {PHP.L.Update}</button>
								</div>
							</td>
						</tr>
						<!-- END: ADMIN_CONFIG_ROW_OPTION -->
						<!-- BEGIN: ADMIN_CONFIG_FIELDSET_END -->
						<!-- END: ADMIN_CONFIG_FIELDSET_END -->
						<!-- END: ADMIN_CONFIG_ROW -->
						<tr>
							<td class="group_end" colspan="3">
								<button type="submit" class="btn btn-primary btn-{PHP.R.admin-config-buttonsize1}"><i class="mdi mdi-reload"></i> {PHP.L.Update}</button>
							</td>
						</tr>
					</table>
				</div>
			</form>

		</div>
		<!-- END: EDIT -->
	</div>
</div>

<!-- BEGIN: DEFAULT -->
<!-- BEGIN: ADMIN_CONFIG_COL -->
<div class="col-md-4">
	<div class="col-md-12">
		<div class="card">
			<div class="card-body">
				<h5><i class="mdi mdi-settings"></i> {ADMIN_CONFIG_COL_CAPTION}:</h5>
				<div class="row">
					<div class="table-responsive">
						<table class="table">
							<!-- BEGIN: ADMIN_CONFIG_ROW -->
							<tr>
									<td class="ext-cell">
								<a href="{ADMIN_CONFIG_ROW_URL}" class="ajax thumbicons text-info">
									<!-- IF {ADMIN_CONFIG_ROW_ICO} -->
									<img src="{ADMIN_CONFIG_ROW_ICO}" />
									<!-- ELSE -->
									<img src="{PHP.cfg.system_dir}/admin/img/plugins32.png" />
									<!-- ENDIF -->
									{ADMIN_CONFIG_ROW_NAME}
								</a>
								</td>
							</tr>
							<!-- END: ADMIN_CONFIG_ROW -->
						</table>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- END: ADMIN_CONFIG_COL -->
<!-- END: DEFAULT -->

<!-- END: MAIN -->
