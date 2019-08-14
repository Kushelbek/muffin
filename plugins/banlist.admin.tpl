<!-- BEGIN: MAIN -->
<div class="col-md-12">
    {FILE "{PHP.cfg.themes_dir}/admin/{PHP.cfg.admintheme}/warnings.tpl"}
    <div class="card">
        <div class="card-body">
            <h5><i class="mdi mdi-do-not-disturb"></i> {PHP.L.banlist_title}</h5>
            <div class="table-responsive">
                <table class="table table-bordered">
                    <thead>
                        <tr>
                            <th>{PHP.L.banlist_ipmask}</th>
                            <th>{PHP.L.banlist_emailmask}</th>
                            <th>{PHP.L.banlist_reason}</th>
                            <th>{PHP.L.banlist_duration}</th>
                            <th>{PHP.L.Action}</th>
                        </tr>
                    </thead>
                    <!-- BEGIN: ADMIN_BANLIST_ROW -->
                    <form name="savebanlist_{ADMIN_BANLIST_ROW_ID}" id="savebanlist_{ADMIN_BANLIST_ROW_ID}" action="{ADMIN_BANLIST_ROW_URL}" method="post">
                        <tr>
                            <td>{ADMIN_BANLIST_ROW_IP}</td>
                            <td>{ADMIN_BANLIST_ROW_EMAIL}</td>
                            <td>{ADMIN_BANLIST_ROW_REASON}</td>
                            <td>{ADMIN_BANLIST_ROW_EXPIRE}</td>
                            <td>
                                <div class="button-group item-control">
                                    <button type="submit" class="btn btn-default"><i class="mdi mdi-reload"></i> <span>{PHP.L.Update}</span></button>
                                    <button type="submit" onclick="parent.location='{ADMIN_BANLIST_ROW_DELURL}'" class="btn btn-default"><i class="mdi mdi-delete"></i> <span>{PHP.L.Delete}</span></button>
                                </div>
                            </td>
                        </tr>
                    </form>
                    <!-- END: ADMIN_BANLIST_ROW -->
                </table>
            </div>
            <p>{PHP.L.Total} <span class="badge badge-info">&nbsp;&nbsp;{ADMIN_BANLIST_TOTALITEMS}&nbsp;&nbsp;</span> {PHP.L.Onpage} <span class="badge badge-info">&nbsp;&nbsp;{ADMIN_BANLIST_COUNTER_ROW}&nbsp;&nbsp;</span></p>
            <!-- IF {ADMIN_BANLIST_PAGNAV} -->
            <div class="text-{PHP.R.admin-config-pagialign}">
                <ul class="pagination">{ADMIN_BANLIST_PAGINATION_PREV}{ADMIN_BANLIST_PAGNAV}{ADMIN_BANLIST_PAGINATION_NEXT}</ul>
            </div>
            <!-- ENDIF -->
        </div>
    </div>
    <div class="card">
        <div class="card-body">
            <h5><i class="mdi mdi-plus"></i> {PHP.L.Add}:</h5>
            <form name="addbanlist" id="addbanlist" action="{ADMIN_BANLIST_URLFORMADD}" method="post" class="ajax">
                <table class="table table-bordered">
                    <tr>
                        <td>{PHP.L.banlist_ipmask}:</td>
                        <td>{ADMIN_BANLIST_IP}</td>
                    </tr>
                    <tr>
                        <td>{PHP.L.banlist_emailmask}:</td>
                        <td>{ADMIN_BANLIST_EMAIL}</td>
                    </tr>
                    <tr>
                        <td>{PHP.L.banlist_reason}:</td>
                        <td>{ADMIN_BANLIST_REASON}</td>
                    </tr>
                    <tr>
                        <td>{PHP.L.banlist_duration}:</td>
                        <td>{ADMIN_BANLIST_EXPIRE}</td>
                    </tr>
                    <tr>
                        <td class="valid" colspan="2">
                            <button type="submit" class="btn btn-primary"><i class="mdi mdi-plus"></i> {PHP.L.Add}</button>
                        </td>
                    </tr>
                </table>
            </form>
        </div>
    </div>
</div>
<!-- END: MAIN -->
