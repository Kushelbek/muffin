<!-- BEGIN: MAIN -->
<div class="col-md-12">
    {FILE "{PHP.cfg.themes_dir}/admin/{PHP.cfg.admintheme}/warnings.tpl"}
    <div class="card">
        <div class="card-body">
            <h5><i class="mdi mdi-delete"></i> {PHP.L.Trashcan}</h5>
            <div class="button-group item-control">
                <a title="{PHP.L.Configuration}" href="{ADMIN_TRASHCAN_CONF_URL}" class="btn btn-primary btn-{PHP.R.admin-config-buttonsize1}"><i class="mdi mdi-settings"></i> <span>{PHP.L.Configuration}</span></a>
                <a title="{PHP.L.Wipeall}" href="{ADMIN_TRASHCAN_WIPEALL_URL}" class="btn btn-danger btn-{PHP.R.admin-config-buttonsize1}"><i class="mdi mdi-delete-variant"></i> <span>{PHP.L.Wipeall}</span></a>
            </div>
            <div class="table-responsive">
                <table class="table table-bordered">
                    <thead>
                        <tr>
                            <th>{PHP.L.Type}</th>
                            <th>{PHP.L.Date}</th>
                            <th>{PHP.L.Title}</th>
                            <th>{PHP.L.adm_setby}</th>
                            <th>{PHP.L.Action}</th>
                        </tr>
                    </thead>
                    <!-- BEGIN: TRASHCAN_ROW -->
                    <tr>
                        <td>{ADMIN_TRASHCAN_TYPESTR_ICON}</td>
                        <td>{ADMIN_TRASHCAN_DATE}</td>
                        <td><a href="{ADMIN_TRASHCAN_ROW_INFO_URL}">{ADMIN_TRASHCAN_TITLE}</a></td>
                        <td>{ADMIN_TRASHCAN_TRASHEDBY}</td>
                        <td>
                            <div class="button-group item-control">
                                <!-- IF {ADMIN_TRASHCAN_ROW_RESTORE_ENABLED} -->
                                <a title="{PHP.L.Restore}" href="{ADMIN_TRASHCAN_ROW_RESTORE_URL}" class="btn btn-success"><i class="mdi mdi-backup-restore"></i> <span>{PHP.L.Restore}</span></a>
                                <!-- ENDIF -->
                                <a title="{PHP.L.Wipe}" href="{ADMIN_TRASHCAN_ROW_WIPE_URL}" class="btn btn-danger"><i class="mdi mdi-delete"></i> <span>{PHP.L.Wipe}</span></a>
                            </div>
                        </td>
                    </tr>
                    <!-- END: TRASHCAN_ROW -->
                </table>
            </div>
            <!-- IF {ADMIN_TRASHCAN_PAGNAV} -->
            <div>
                <ul class="pagination">{ADMIN_TRASHCAN_PAGINATION_PREV}{ADMIN_TRASHCAN_PAGNAV}{ADMIN_TRASHCAN_PAGINATION_NEXT}</ul>
            </div>
            <!-- ENDIF -->
            <p>{PHP.L.Total} <span class="badge badge-info"> {ADMIN_TRASHCAN_TOTALITEMS}</span> {PHP.L.Onpage} <span class="badge badge-info"> {ADMIN_TRASHCAN_COUNTER_ROW}</span></p>

        </div>
    </div>
</div>
<!-- END: MAIN -->
