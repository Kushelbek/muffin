<!-- BEGIN: MAIN -->
<div class="col-md-12">
    <div class="card">
        <div class="card-body">
            <div class="table-responsive">
                <table class="table table-bordered table-hover">
                    <thead>
                        <tr>
                            <th>{PHP.L.User}</th>
                            <th>{PHP.L.Files}</th>
                            <th>{PHP.L.Edit}</th>
                        </tr>
                    </thead>
                    <tbody>
                        <!-- BEGIN: ALLPFS_ROW -->
                        <tr>
                            <td>{ADMIN_ALLPFS_ROW_USER}</td>
                            <td>{ADMIN_ALLPFS_ROW_COUNT}</td>
                            <td><a title="{PHP.L.Edit}" href="{ADMIN_ALLPFS_ROW_URL}">{PHP.R.icon_prefs}</a></td>
                        </tr>
                        <!-- END: ALLPFS_ROW -->
                    </tbody>
                </table>
            </div>
            <p>{PHP.L.Total}<span class="badge badge-info"> {ADMIN_ALLPFS_TOTALITEMS}</span> {PHP.L.Onpage}<span class="badge badge-info"> {ADMIN_ALLPFS_ON_PAGE}</span></p>
            <!-- IF {ADMIN_ALLPFS_PAGNAV} -->
            <div class="text-{PHP.R.admin-config-pagialign}">
                <ul class="pagination">{ADMIN_ALLPFS_PAGINATION_PREV}{ADMIN_ALLPFS_PAGNAV}{ADMIN_ALLPFS_PAGINATION_NEXT}</ul>
            </div>
            <!-- ENDIF -->
        </div>
    </div>
</div>
<!-- END: MAIN -->
