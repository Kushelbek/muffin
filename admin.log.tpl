<!-- BEGIN: MAIN -->
<div class="col-md-12">
	{FILE "{PHP.cfg.themes_dir}/admin/{PHP.cfg.admintheme}/warnings.tpl"}
	<div class="card">
		<div class="card-body">
			<div class="card-body">
				<h5><i class="mdi mdi-view-dashboard"></i> {PHP.L.Log} <sup><span class="badge badge-info">{ADMIN_LOG_TOTALDBLOG}</span></sup></h5>
				<!-- IF {PHP.usr.isadmin} -->
				<div class="button-group item-control">
					<a title="{PHP.L.adm_purgeall}" href="{ADMIN_LOG_URL_PRUNE}" class="ajax btn btn-danger"><i class="fa fa-delete-variant"></i> {PHP.L.adm_purgeall}</a>
				</div>
				<!-- ENDIF -->
				<form action="" class="pull-right">
					{PHP.L.Group}:
					<select class="form-control custom-select" name="groups" size="1" onchange="redirect(this)">
						<!-- BEGIN: GROUP_SELECT_OPTION -->
						<option value="{ADMIN_LOG_OPTION_VALUE_URL}" {ADMIN_LOG_OPTION_SELECTED}>{ADMIN_LOG_OPTION_GRP_NAME}</option>
						<!-- END: GROUP_SELECT_OPTION -->
					</select>
				</form>
				<table class="table table-bordered">
					<thead>
						<tr>
							<th>#</th>
							<th>{PHP.L.Date} (GMT)</th>
							<th>{PHP.L.Ip}</th>
							<th>{PHP.L.User}</th>
							<th>{PHP.L.Group}</th>
							<th>{PHP.L.Log}</th>
						</tr>
					</thead>
					<tbody>
						<!-- BEGIN: LOG_ROW -->
						<tr>
							<td>{ADMIN_LOG_ROW_LOG_ID}</td>
							<td>{ADMIN_LOG_ROW_DATE}</td>
							<td><a href="{ADMIN_LOG_ROW_URL_IP_SEARCH}">{ADMIN_LOG_ROW_LOG_IP}</a></td>
							<td>{ADMIN_LOG_ROW_LOG_NAME}&nbsp;</td>
							<td><a href="{ADMIN_LOG_ROW_URL_LOG_GROUP}" class="ajax">{ADMIN_LOG_ROW_LOG_GROUP}</a></td>
							<td>{ADMIN_LOG_ROW_LOG_TEXT}</td>
						</tr>
						<!-- END: LOG_ROW -->
					</tbody>
				</table>
				<p>{PHP.L.Total}: {ADMIN_LOG_TOTALITEMS}, <span>{PHP.L.Onpage}:</span> {ADMIN_LOG_ON_PAGE}</p>
				<!-- IF {ADMIN_LOG_PAGNAV} -->
				<div>
					<ul>{ADMIN_LOG_PAGINATION_PREV}{ADMIN_LOG_PAGNAV}{ADMIN_LOG_PAGINATION_NEXT}</ul>
				</div>
				<!-- ENDIF -->
			</div>
		</div>
	</div>
</div>
<!-- END: MAIN -->
