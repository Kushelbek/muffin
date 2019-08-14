<!-- BEGIN: MAIN -->
<div class="col-md-12">
	<div class="card">
		<div class="card-header">
			<h5>{PHP.L.adm_diskcache}</h5>
		</div>
		<div class="card-body">
			<div class="row button-group">
				<a href="{ADMIN_DISKCACHE_URL_PURGE}" class="ajax btn btn-danger btn-{PHP.R.admin-config-buttonsize1}"><i class="mdi mdi-delete-variant"></i> {PHP.L.adm_purgeall}</a>
				<a href="{ADMIN_DISKCACHE_URL_REFRESH}" class="ajax btn btn-primary btn-{PHP.R.admin-config-buttonsize1}"><i class="mdi mdi-reload"></i> {PHP.L.Refresh}</a>
			</div>
			<div class="table-responsive">
				<table class="table">
					<thead>
						<tr>
							<th>{PHP.L.Item}</th>
							<th>{PHP.L.Files}</th>
							<th>{PHP.L.Size}</th>
							<th>{PHP.L.Action}</th>
						</tr>
					</thead>
					<tbody>
						<!-- BEGIN: ADMIN_DISKCACHE_ROW -->
						<tr>
							<td>{ADMIN_DISKCACHE_ITEM_NAME}</td>
							<td>{ADMIN_DISKCACHE_FILES}</td>
							<td>{ADMIN_DISKCACHE_SIZE}</td>
							<td>
								<a title="{PHP.L.Delete}" href="{ADMIN_DISKCACHE_ITEM_DEL_URL}" class="ajax btn btn-danger">
									<i class="mdi mdi-delete-variant"></i> {PHP.L.Delete}
								</a>
							</td>
						</tr>
						<!-- END: ADMIN_DISKCACHE_ROW -->
					</tbody>
					<thead>
						<tr>
							<th>{PHP.L.Total}:</th>
							<th>{ADMIN_DISKCACHE_CACHEFILES}</th>
							<th>{ADMIN_DISKCACHE_CACHESIZE}</th>
						</tr>
					</thead>
				</table>
			</div>
		</div>
	</div>
	{FILE "{PHP.cfg.themes_dir}/admin/{PHP.cfg.admintheme}/warnings.tpl"}
</div>
<!-- END: MAIN -->
