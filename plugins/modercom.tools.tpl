<!-- BEGIN: MAIN -->
<div class="col-md-12">
    {FILE "{PHP.cfg.themes_dir}/{PHP.cfg.defaulttheme}/warnings.tpl"}
    <div class="card">
        <div class="card-body">
            <h5><i class="mdi mdi-comment-multiple-outline"></i> {PHP.L.comments_comments} {PHP.L.viewdeleteentries}:</h5>
            <div class="button-group item-control">
                <a title="{PHP.L.Configuration}" href="{ADMIN_COMMENTS_CONFIG_URL}" class="btn btn-primary"><i class="mdi mdi-settings"></i> <span>{PHP.L.Configuration}</span></a>
            </div>
            <div class="table-responsive">
                <table class="table table-bordered">
                    <thead>
                        <tr>
                            <th>#</th>
                            <th>{PHP.L.adm_area}</th>
                            <th>{PHP.L.Code}</th>
                            <th>{PHP.L.Author}</th>
                            <th>{PHP.L.Date}</th>
                            <th>{PHP.L.comments_comment}</th>
                            <th>{PHP.L.Action}</th>
                        </tr>
                    </thead>
                    <!-- BEGIN: ADMIN_COMMENTS_ROW -->
                    <tr>
                        <td>{ADMIN_COMMENTS_ITEM_ID}</td>
                        <td>{ADMIN_COMMENTS_AREA}</td>
                        <td>{ADMIN_COMMENTS_CODE}</td>
                        <td>{ADMIN_COMMENTS_AUTHOR}</td>
                        <td>{ADMIN_COMMENTS_DATE}</td>
                        <td>{ADMIN_COMMENTS_TEXT}</td>
                        <td>
                            <div class="button-group item-control">
                                <!-- IF {PHP.row.com_state} == 1 -->
                                <a data-toggle="tooltip" data-placement="top" data-original-title="{PHP.L.Validate}" title="{PHP.L.Validate}" href="{ADMIN_COMMENTS_ITEM_VALIDATE_URL}" class="btn btn-success"><i class="mdi mdi-check"></i></a>
                                <!-- ENDIF -->
                                <!-- IF {PHP.row.com_state} == 0 -->
                                <a data-toggle="tooltip" data-placement="top" data-original-title="{PHP.L.Lock}" title="{PHP.L.Lock}" href="{ADMIN_COMMENTS_ITEM_UNVALIDATE_URL}" class="btn btn-success"><i class="mdi mdi-lock"></i></a>
                                <!-- ENDIF -->
                                <a data-toggle="tooltip" data-placement="top" data-original-title="{PHP.L.Open}" title="{PHP.L.Open}" target="_blank" href="{ADMIN_COMMENTS_URL}" class="btn btn-success"><i class="mdi mdi-folder"></i></a>
                                <a data-toggle="tooltip" data-placement="top" data-original-title="{PHP.L.Delete}" title="{PHP.L.Delete}" href="{ADMIN_COMMENTS_ITEM_DEL_URL}" class="btn btn-danger"><i class="mdi mdi-delete"></i></a>
                            </div>
                        </td>
                    </tr>
                    <!-- END: ADMIN_COMMENTS_ROW -->
                </table>
            </div>
            <div>
                <p>{PHP.L.Total} <span class="badge badge-info">&nbsp;&nbsp;{ADMIN_COMMENTS_TOTALITEMS}&nbsp;&nbsp;</span> {PHP.L.Onpage}<span class="badge badge-info">&nbsp;&nbsp;{ADMIN_COMMENTS_COUNTER_ROW}&nbsp;&nbsp;</span></p>
                <ul class="pagination">
                    {ADMIN_COMMENTS_PAGINATION_PREV}{ADMIN_COMMENTS_PAGNAV}{ADMIN_COMMENTS_PAGINATION_NEXT}
                </ul>
            </div>
        </div>
        <!-- END: MAIN -->
