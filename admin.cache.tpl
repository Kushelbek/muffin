<!-- BEGIN: MAIN -->
<div class="col-md-12">
    <div class="card">
        <div class="card-header">
            <h5>{PHP.L.adm_internalcache}</h5>
        </div>
        <div class="card-body">
            <div class="row button-group">
                <a href="{ADMIN_CACHE_URL_PURGE}" class="ajax btn btn-danger"><i class="mdi mdi-delete-variant"></i> {PHP.L.adm_purgeall}</a>
                <a href="{ADMIN_CACHE_URL_REFRESH}" class="ajax btn btn-info"><i class="mdi mdi-reload"></i> {PHP.L.Refresh}</a>
                <a href="{ADMIN_CACHE_URL_SHOWALL}" class="ajax btn btn-info"><i class="mdi mdi-check-all"></i> {PHP.L.adm_cache_showall}</a>
            </div>
            <!-- BEGIN: ADMIN_CACHE_MEMORY -->
            <h6>{ADMIN_CACHE_MEMORY_DRIVER}</h6>
                <div class="bar_back">
                    <div class="bar_front" style="width:{ADMIN_CACHE_MEMORY_PERCENTBAR}%;"></div>
                </div>
                {PHP.L.Available}: {ADMIN_CACHE_MEMORY_AVAILABLE} / {ADMIN_CACHE_MEMORY_MAX} {PHP.L.bytes}
            <!-- END: ADMIN_CACHE_MEMORY -->
            <div class="table-responsive">
                <table class="table">
                    <thead>
                        <tr>
                            <th scope="col" data-tablesaw-sortable-col data-tablesaw-priority="persist">{PHP.L.Item}</th>
                            <th scope="col" data-tablesaw-sortable-col data-tablesaw-sortable-default-col data-tablesaw-priority="3">{PHP.L.Expire}</th>
                            <th scope="col" data-tablesaw-sortable-col data-tablesaw-priority="2">{PHP.L.Size}</th>
                            <th scope="col" data-tablesaw-sortable-col data-tablesaw-priority="1">{PHP.L.Value}</th>
                            <th scope="col" data-tablesaw-sortable-col data-tablesaw-priority="4">{PHP.L.Action}</th>
                        </tr>
                    </thead>
                    <tbody>
                        <!-- BEGIN: ADMIN_CACHE_ROW -->
                        <tr>
                            <td class="title">{ADMIN_CACHE_ITEM_NAME}</td>
                            <td>{ADMIN_CACHE_EXPIRE}</td>
                            <td>{ADMIN_CACHE_SIZE}</td>
                            <td>{ADMIN_CACHE_VALUE}</td>
                            <td>
                                <a title="{PHP.L.Delete}" href="{ADMIN_CACHE_ITEM_DEL_URL}" class="ajax btn btn-danger">
												<i class="mdi mdi-delete-variant"></i> {PHP.L.Delete}
											</a>
                            </td>
                        </tr>
                        <!-- END: ADMIN_CACHE_ROW -->
                    </tbody>
                    <thead>
                        <tr class="strong">
                            <th class="textcenter">{PHP.L.Total}:</th>
                            <th class="textcenter">{ADMIN_CACHE_CACHESIZE}</th>
                            <th>&nbsp;</th>
                            <th>&nbsp;</th>
                            <th>&nbsp;</th>
                        </tr>
                    </thead>
                </table>
            </div>
        </div>
    </div>
    {FILE "{PHP.cfg.themes_dir}/admin/{PHP.cfg.admintheme}/warnings.tpl"}
</div>
<!-- END: MAIN -->
