<!-- BEGIN: MAIN -->
<div class="col-md-12">
    {FILE "{PHP.cfg.themes_dir}/admin/{PHP.cfg.admintheme}/warnings.tpl"}
    <div class="card">
        <div class="card-body">
            <h5><i class="mdi mdi-code-array"></i> BBCodes</h5>
            <div class="button-group item-control">
                <button onclick="" class="btn btn-success" type="submit"><i class="mdi mdi-reload"></i> {PHP.L.Refresh}</button>
            </div>
            <form action="{ADMIN_BBCODE_UPDATE_URL}" method="post">
                <div class="table-responsive">
                    <table class="table table-bordered">
                        <thead>
                            <tr>
                                <th>{PHP.L.Name} / {PHP.L.adm_bbcodes_mode} / {PHP.L.Enabled} / {PHP.L.adm_bbcodes_container}</th>
                                <th>{PHP.L.adm_bbcodes_pattern}</th>
                                <th>{PHP.L.adm_bbcodes_replacement}</th>
                                <th>{PHP.L.Plugin} / {PHP.L.adm_bbcodes_priority} / {PHP.L.adm_bbcodes_postrender}</th>
                                <th>{PHP.L.Action}</th>
                            </tr>
                        </thead>
                        <!-- BEGIN: ADMIN_BBCODE_ROW -->
                        <tr>
                            <td>
                                {ADMIN_BBCODE_ROW_NAME} {ADMIN_BBCODE_ROW_MODE} {ADMIN_BBCODE_ROW_ENABLED} {ADMIN_BBCODE_ROW_CONTAINER}
                            </td>
                            <td>
                                {ADMIN_BBCODE_ROW_PATTERN}
                            </td>
                            <td>
                                {ADMIN_BBCODE_ROW_REPLACEMENT}
                            </td>
                            <td>
                                {ADMIN_BBCODE_ROW_PLUG}
                                {ADMIN_BBCODE_ROW_PRIO}
                                {ADMIN_BBCODE_ROW_POSTRENDER}
                            </td>
                            <td>
                                <button class="btn btn-primary" type="button" onclick="if(confirm('{PHP.L.adm_bbcodes_confirm}')) location.href='{ADMIN_BBCODE_ROW_DELETE_URL}'">
                                    <i class="mdi mdi-delete"></i> <span>{PHP.L.Delete}</span>
                                </button>
                            </td>
                        </tr>
                        <!-- END: ADMIN_BBCODE_ROW -->
                    </table>
                </div>
            </form>

            <!-- IF {ADMIN_BBCODE_PAGNAV} -->
            <div>
                <ul class="pagination">{ADMIN_BBCODE_PAGINATION_PREV}{ADMIN_BBCODE_PAGNAV}{ADMIN_BBCODE_PAGINATION_NEXT}</ul>
            </div>
            <!-- ENDIF -->
            <p>{PHP.L.Total}<span class="badge badge-info">&nbsp;&nbsp;{ADMIN_BBCODE_TOTALITEMS}&nbsp;&nbsp;</span> {PHP.L.Onpage}<span class="badge badge-info">&nbsp;&nbsp;{ADMIN_BBCODE_COUNTER_ROW}&nbsp;&nbsp;</span></p>

        </div>
    </div>

    <div class="card">
        <div class="card-body">
            <h5>{PHP.L.adm_bbcodes_new}:</h5>
            <form action="{ADMIN_BBCODE_FORM_ACTION}" method="post">
                <div class="table-responsive">
                    <table class="table table-bordered">
                        <thead>
                            <tr>
                                <th>{PHP.L.Name} / {PHP.L.adm_bbcodes_mode} / {PHP.L.adm_bbcodes_container}</th>
                                <th>{PHP.L.adm_bbcodes_pattern}</th>
                                <th>{PHP.L.adm_bbcodes_replacement}</th>
                                <th>{PHP.L.adm_bbcodes_priority} / {PHP.L.adm_bbcodes_postrender}</th>
                                <th>{PHP.L.Action}</th>
                            </tr>
                        </thead>
                        <tr>
                            <td>
                                {ADMIN_BBCODE_NAME} &nbsp;{ADMIN_BBCODE_MODE} &nbsp;{ADMIN_BBCODE_CONTAINER}
                            </td>
                            <td>{ADMIN_BBCODE_PATTERN}</td>
                            <td>{ADMIN_BBCODE_REPLACEMENT}</td>
                            <td>{ADMIN_BBCODE_PRIO} &nbsp;{ADMIN_BBCODE_POSTRENDER}</td>
                            <td><input type="submit" value="{PHP.L.Add}" /></td>
                        </tr>
                    </table>
                </div>
            </form>
        </div>
    </div>

    <div class="block">
        <div class="card-body">
            <h5>{PHP.L.adm_bbcodes_other}:</h5>
            <ul class="list-unstyled">
                <li><a href="{ADMIN_BBCODE_URL_CLEAR_CACHE}" onclick="return confirm('{PHP.L.adm_bbcodes_clearcache_confirm}')">{PHP.L.adm_bbcodes_clearcache}</a></li>
                <!-- BEGIN: ADMIN_BBCODE_CONVERT -->
                <li><a href="{ADMIN_BBCODE_CONVERT_URL}" onclick="return confirm('{PHP.L.adm_bbcodes_convert_confirm}')">{ADMIN_BBCODE_CONVERT_TITLE}</a></li>
                <!-- END: ADMIN_BBCODE_CONVERT -->
            </ul>
        </div>
    </div>
</div>
<!-- END: MAIN -->
