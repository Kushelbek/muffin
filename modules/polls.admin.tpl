<!-- BEGIN: MAIN -->
<div class="col-md-12">
    {FILE "{PHP.cfg.themes_dir}/admin/{PHP.cfg.admintheme}/warnings.tpl"}
    <div class="card">
        <div class="card-body">
            <h5><i class="mdi mdi-poll-box"></i> {PHP.L.Polls}</h5>
            <div class="button-group item-control">
                <a title="{PHP.L.Configuration}" href="{ADMIN_POLLS_CONF_URL}" class="btn btn-primary btn-{PHP.R.admin-config-buttonsize1}"><i class="mdi mdi-settings"></i> {PHP.L.Configuration}</a>
            </div>
            <h6>{PHP.L.poll}:</h6>

            <select name="jumpbox" size="1" onchange="redirect(this)" class="form-control">
                <!-- BEGIN: POLLS_ROW_FILTER -->
                <option value="{ADMIN_POLLS_ROW_FILTER_VALUE}" {ADMIN_POLLS_ROW_FILTER_CHECKED}>{ADMIN_POLLS_ROW_FILTER_NAME}</option>
                <!-- END: POLLS_ROW_FILTER -->
            </select>
            <div class="table-responsive">
                <table class="table table-bordered">
                    <thead>
                        <tr>
                            <th>{PHP.L.Date}</th>
                            <th>{PHP.L.Type}</th>
                            <th>{PHP.L.Poll} {PHP.L.adm_clicktoedit}</th>
                            <th>{PHP.L.Votes}</th>
                            <th>{PHP.L.Action}</th>
                        </tr>
                    </thead>
                    <!-- BEGIN: POLLS_ROW -->
                    <tr>
                        <td>{ADMIN_POLLS_ROW_POLL_CREATIONDATE}</td>
                        <td>{ADMIN_POLLS_ROW_POLL_TYPE}</td>
                        <td>{ADMIN_POLLS_ROW_POLL_LOCKED}
                            <a href="{ADMIN_POLLS_ROW_POLL_URL}">{ADMIN_POLLS_ROW_POLL_TEXT}</a>
                        </td>
                        <td>{ADMIN_POLLS_ROW_POLL_TOTALVOTES}</td>
                        <td>
                            <div class="button-group item-control">
                                <!-- IF !{ADMIN_POLLS_ROW_POLL_LOCKED} -->
                                <a data-toggle="tooltip" data-placement="top" data-original-title="{PHP.L.Lock}" title="{PHP.L.Lock}" href="{ADMIN_POLLS_ROW_POLL_URL_LCK}" class="btn btn-primary"><i class="mdi mdi-lock-plus"></i></a>
                                <!-- ELSE -->
                                <a data-toggle="tooltip" data-placement="top" data-original-title="{PHP.L.Unlock}" title="{PHP.L.Unlock}" href="{ADMIN_POLLS_ROW_POLL_URL_LCK}" class="btn btn-primary"><i class="mdi mdi-lock-open"></i></a>
                                <!-- ENDIF -->
                                <a data-toggle="tooltip" data-placement="top" data-original-title="{PHP.L.Delete}" title="{PHP.L.Delete}" href="{ADMIN_POLLS_ROW_POLL_URL_DEL}" class="btn btn-danger"><i class="mdi mdi-delete"></i></a>
                                <a data-toggle="tooltip" data-placement="top" data-original-title="{PHP.L.Reset}" title="{PHP.L.Reset}" href="{ADMIN_POLLS_ROW_POLL_URL_RES}" class="btn btn-primary"><i class="mdi mdi-reload"></i> {PHP.L.Reset}</a>
                                <a data-toggle="tooltip" data-placement="top" data-original-title="{PHP.L.adm_polls_bump}" title="{PHP.L.adm_polls_bump}" href="{ADMIN_POLLS_ROW_POLL_URL_BMP}" class="btn btn-primary"><i class="mdi mdi-arrow-up-bold"></i></a>
                                <a data-toggle="tooltip" data-placement="top" data-original-title="{PHP.L.Open}" title="{PHP.L.Open}" href="{ADMIN_POLLS_ROW_POLL_URL_OPN}" class="btn btn-primary"><i class="mdi mdi-folder"></i> {PHP.L.Open}</a>
                            </div>
                        </td>
                    </tr>
                    <!-- END: POLLS_ROW -->
                    <!-- BEGIN: POLLS_ROW_EMPTY -->
                    <tr>
                        <td colspan="5">{PHP.L.adm_polls_nopolls}</td>
                    </tr>
                    <!-- END: POLLS_ROW_EMPTY -->
                </table>
            </div>
            <p>{PHP.L.Total}<span class="badge badge-info"> {ADMIN_POLLS_TOTALITEMS}</span> {PHP.L.Onpage}<span class="badge badge-info"> {ADMIN_POLLS_ON_PAGE}</span></p>
            <!-- IF {ADMIN_POLLS_PAGNAV} -->
            <div>
                <ul class="pagination">{ADMIN_POLLS_PAGINATION_PREV}{ADMIN_POLLS_PAGNAV}{ADMIN_POLLS_PAGINATION_NEXT}</ul>
            </div>
            <!-- ENDIF -->
        </div>
    </div>

    <div class="card">
        <div class="card-body">
            <h5><i class="mdi mdi-plus"></i> {ADMIN_POLLS_FORMNAME}:</h5>
            <form id="addpoll" action="{ADMIN_POLLS_FORM_URL}" method="post">
                <!-- IF {PHP.cfg.jquery} -->
                <script type="text/javascript" src="{PHP.cfg.modules_dir}/polls/js/polls.js"></script>
                <script type="text/javascript">
                    var ansMax = {
                        PHP.cfg.polls.max_options_polls
                    };

                </script>
                <!-- ENDIF -->
                <div class="table-responsive">
                    <table class="table table-bordered">
                        <tr>
                            <td class="width15">{PHP.L.poll}:</td>
                            <td class="width85">{EDIT_POLL_IDFIELD}{EDIT_POLL_TEXT}</td>
                        </tr>
                        <tr>
                            <td>{PHP.L.Options}:</td>
                            <td>
                                <!-- BEGIN: OPTIONS -->
                                <div class="polloptiondiv">
                                    {EDIT_POLL_OPTION_TEXT}
                                    <button name="deloption" type="button" class="deloption btn btn-primary btn-sm" style="display:none;"><i class="mdi mdi-delete"></i></button>
                                </div>
                                <!-- END: OPTIONS -->
                                <hr/>
                                <button id="addoption" name="addoption" type="button" class="btn btn-primary" style="display:none;"><i class="mdi mdi-plus"></i> {PHP.L.Add}</button>
                            </td>
                        </tr>
                        <tr>
                            <td></td>
                            <td>
                                {EDIT_POLL_MULTIPLE}
                                <!-- BEGIN: EDIT -->
                                {EDIT_POLL_LOCKED}
                                {EDIT_POLL_RESET}
                                {EDIT_POLL_DELETE}
                                <!-- END: EDIT -->
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2"><button type="submit" class="confirm btn btn-primary"><i class="mdi mdi-check-all"></i> {ADMIN_POLLS_SEND_BUTTON}</button></td>
                        </tr>
                    </table>
                </div>
            </form>
        </div>
    </div>
</div>
<!-- END: MAIN -->
