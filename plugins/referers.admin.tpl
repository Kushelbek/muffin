<!-- BEGIN: MAIN -->
<div class="col-md-12">
    {FILE "{PHP.cfg.themes_dir}/admin/{PHP.cfg.admintheme}/warnings.tpl"}
    <div class="card">
        <div class="card-body">
            <h5><i class="mdi mdi-swap-horizontal"></i> {PHP.L.Referers}</h5>
            <!-- IF {PHP.usr.isadmin} -->
            <div class="button-group item-control">
                <a href="{ADMIN_REFERERS_URL_PRUNE}" class="btn btn-primary"><i class="mdi mdi-delete"></i> <span>{PHP.L.adm_purgeall}</span></a>
                <a href="{ADMIN_REFERERS_URL_PRUNELOWHITS}" class="btn btn-primary"><i class="mdi mdi-delete-variant"></i> <span>{PHP.L.adm_ref_prunelowhits}</span></a>
            </div>
            <!-- ENDIF -->
            <!-- IF {PHP.is_ref_empty} -->
            <div class="table-responsive">
                <table class="table table-bordered">
                    <thead>
                        <tr>
                            <th>{PHP.L.Referer}</th>
                            <th>{PHP.L.Hits}</th>
                        </tr>
                    </thead>
                    <!-- ENDIF -->
                    <!-- BEGIN: REFERERS_ROW -->
                    <tr>
                        <td colspan="2"><a href="http://{ADMIN_REFERERS_REFERER}">{ADMIN_REFERERS_REFERER}</a></td>
                    </tr>
                    <!-- BEGIN: REFERERS_URI -->
                    <tr>
                        <td>&nbsp; &nbsp; <a href="{ADMIN_REFERERS_URI}">{ADMIN_REFERERS_URI}</a></td>
                        <td class="textright">{ADMIN_REFERERS_COUNT}</td>
                    </tr>
                    <!-- END: REFERERS_URI -->
                    <!-- END: REFERERS_ROW -->
                    <!-- IF {PHP.is_ref_empty} -->
                </table>
            </div>
            <!-- IF {ADMIN_REFERERS_PAGNAV} -->
            <div>
                <ul class="pagination">{ADMIN_REFERERS_PAGINATION_PREV}{ADMIN_REFERERS_PAGNAV}{ADMIN_REFERERS_PAGINATION_NEXT}</ul>
            </div>
            <!-- ENDIF -->
            <p>{PHP.L.Total}<span class="badge badge-info"> {ADMIN_REFERERS_TOTALITEMS}</span>, {PHP.L.Onpage} <span class="badge badge-info">{ADMIN_REFERERS_ON_PAGE}</span></p>

            <!-- ELSE -->
            <div class="table-responsive">
                <table class="table table-bordered">
                    <thead>
                        <tr>
                            <th>{PHP.L.Referer}</th>
                            <th>{PHP.L.Hits}</th>
                        </tr>
                    </thead>
                    <tr>
                        <td colspan="2">{PHP.L.None}</td>
                    </tr>
                </table>
            </div>
            <!-- ENDIF -->
        </div>
    </div>
</div>
<!-- END: MAIN -->
