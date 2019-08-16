<!-- BEGIN: MAIN -->
<div class="col-md-12">
    {FILE "{PHP.cfg.themes_dir}/admin/{PHP.cfg.admintheme}/warnings.tpl"}
    <script type="text/javascript">
        //<![CDATA[
        $(document).ready(function() {
            $('input[type=text], input[type=password], select, textarea').addClass('form-control');
            $('.table select').css('display', 'inline-block');
        });
        //]]>

    </script>
    <!-- BEGIN: CREATE -->
    <div class="row">
        <div class="col-md-12">
            <!-- BEGIN: UM_AJAXBLOCK -->
            <div id="MyajaxBlock">
                <div class="card">
                    <h5><i class="mdi mdi-account-multiple"></i> {PHP.L.um_usermanager}</h5>
                    <div class="card-body">
                        <div class="button-group item-control">
                            <a href="{PHP|cot_url('admin','m=other&p=userman&a=profile')}" class="btn btn-primary"><i class="mdi mdi-account-key"></i> {PHP.L.Profile}</a>
                            <a href="{PHP|cot_url('admin','m=config&n=edit&o=module&p=users')}" class="btn btn-primary"><i class="mdi mdi-settings"></i> {PHP.L.um_settings}</a>
                            <a href="{PHP|cot_url('admin','m=rightsbyitem&ic=users&io=a')}" class="btn btn-primary"><i class="mdi mdi-lock-plus"></i> {PHP.L.um_userrights}</a>
                            <a href="{PHP|cot_url('admin','m=extrafields&n=cot_users')}" class="btn btn-primary"><i class="mdi mdi-hexagon-multiple"></i> {PHP.L.um_extrafields}</a>
                        </div>
                        <div class="table-responsive">
                            <table class="table table-bordered table-hover">
                                <thead>
                                    <tr>
                                        <th>PM</th>
                                        <th>TGA</th>
                                        <th>{UM_TOP_NAME}</th>
                                        <th>{PHP.L.Email}</th>
                                        <th>{UM_TOP_GRPTITLE}</th>
                                        <th>{UM_TOP_GRPLEVEL}</th>
                                        <th>{UM_TOP_REGDATE}</th>
                                        <th>{PHP.L.Action}</th>
                                    </tr>
                                </thead>
                                <!-- BEGIN: UM_ROW -->
                                <tr>
                                    <td>{UM_ROW_PM}</td>
                                    <td>{UM_ROW_ACCESS}</td>
                                    <td>{UM_ROW_NAME}</td>
                                    <td>{UM_ROW_EMAIL}</td>
                                    <td>{UM_ROW_MAINGRP}</td>
                                    <td>{UM_ROW_MAINGRPSTARS}</td>
                                    <td>{UM_ROW_REGDATE}</td>
                                    <td>
                                        <div class="button-group item-control">
                                            <a data-toggle="tooltip" data-placement="top" data-original-title="{PHP.L.Edit}" title="{PHP.L.Edit}" href="{PHP.id|cot_url('admin','m=other&p=userman&a=edit&id=$this')}" class="btn btn-primary"><i class="mdi mdi-feather"></i></a>
                                            <a data-toggle="tooltip" data-placement="top" data-original-title="TGA" title="TGA" href="{PHP.id|cot_url('admin','m=other&p=userman&a=access&id=$this')}" class="btn btn-primary"><i class="mdi mdi-account-convert"></i></a>
                                            <a data-toggle="tooltip" data-placement="top" data-original-title="{PHP.L.Delete}" title="{PHP.L.Delete}" href="{PHP.url_del}" class="confirmLink btn btn-danger"><i class="mdi mdi-delete"></i></a>
                                        </div>
                                    </td>
                                </tr>
                                <!-- END: UM_ROW -->
                            </table>
                        </div>
                    </div>
                </div>
                <!-- BEGIN: UM_PAGENAV -->
                <div>
                    <ul class="pagination">{UM_TOP_PAGEPREV}{UM_TOP_PAGNAV}{UM_TOP_PAGENEXT}</ul>
                </div>
                <!-- END: UM_PAGENAV -->
            </div>
            <!-- END: UM_AJAXBLOCK -->
        </div>
    </div>
    <div class="row">
        <div class="col-md-7">
            <div class="card">
                <div class="card-body">
                    <h5><i class="mdi mdi-account-plus"></i> {PHP.L.um_adduser}</h5>
                    <form action="{UM_USERS_CREATE_SEND}" method="post" name="um_useredit" enctype="multipart/form-data">
                        <input type="hidden" name="id" value="{UM_USERS_CREATE_ID}" />
                        <div class="table-responsive">
                            <table class="table table-bordered">
                                <tr>
                                    <td>{PHP.L.Username}</td>
                                    <td>{UM_NAME}</td>
                                </tr>
                                <tr>
                                    <td>{PHP.L.Email}:</td>
                                    <td>{UM_USERS_CREATE_EMAIL}</td>
                                </tr>
                                <tr>
                                    <td>{PHP.L.Maingroup}:</td>
                                    <td>{UM_USERS_CREATE_GROUPS}</td>
                                </tr>
                                <!-- IF {UM_USERS_CREATE_SIGNATURE} -->
                                <tr>
                                    <td>{PHP.L.Signature}:</td>
                                    <td>{UM_USERS_CREATE_SIGNATURE}</td>
                                </tr>
                                <!-- ENDIF -->
                                <tr>
                                    <td>{PHP.L.users_newpass}:</td>
                                    <td>
                                        {UM_USERS_DEFAULT_PASS}
                                        <p>{UM_USERS_HELPPASS}</p>
                                    </td>
                                </tr>
                                <tr>
                                    <td>{PHP.L.users_confirmpass}:</td>
                                    <td>{UM_USERS_PASSWORDREPEAT}</td>
                                </tr>
                                <tr>
                                    <td colspan="2"><button type="submit" class="btn btn-success">{PHP.L.um_createuser}</button></td>
                                </tr>
                            </table>
                        </div>
                    </form>
                </div>
            </div>
        </div>
        <div class="col-md-5">
            <div class="card">
                <div class="card-body">
                    <h5><i class="mdi mdi-filter"></i> {PHP.L.Filters}</h5>
                    <form action="{UM_TOP_FILTER_ACTION}" method="post">
                        <p>{UM_TOP_FILTERS_COUNTRY}</p>
                        <p>{UM_TOP_FILTERS_MAINGROUP}</p>
                        <p>{UM_TOP_FILTERS_GROUP}</p>
                        <p>{UM_TOP_FILTERS_SEARCH}</p>
                        <p><button type="submit" class="btn btn-primary">{PHP.L.Submit}</button></p>
                    </form>
                </div>
            </div>
        </div>
    </div>
    <!-- END: CREATE -->

    <!-- BEGIN: UM_EDIT -->
    <div class="card">
        <div class="card-body">
            <h5><i class="mdi mdi-account-edit"></i> {PHP.L.um_edituser}</h5>
            <div class="button-group item-control">
                <a href="{PHP|cot_url('admin','m=other&p=userman')}" class="btn btn-primary"><i class="mdi mdi-account-multiple"></i> {PHP.L.um_usermanager}</a>
                <a href="{UM_EDIT_ID|cot_url('admin','m=other&p=userman&a=access&id=$this')}" class="btn btn-primary"><i class="mdi mdi-account-convert"></i> TGA</a>
            </div>
            <form action="{UM_EDIT_SEND}" method="post" name="um_edit" enctype="multipart/form-data">
                <input type="hidden" name="id" value="{UM_EDIT_ID}" />
                <table class="table table-bordered">
                    <tr>
                        <td class="width30">{PHP.L.users_id}:</td>
                        <td class="width70">#{UM_EDIT_ID}</td>
                    </tr>
                    <tr>
                        <td>{PHP.L.Username}:</td>
                        <td>{UM_EDIT_NAME}</td>
                    </tr>
                    <tr>
                        <td>{PHP.L.Groupsmembership}:</td>
                        <td>{UM_EDIT_GROUPS}</td>
                    </tr>
                    <tr>
                        <td>{PHP.L.Country}:</td>
                        <td>{UM_EDIT_COUNTRY}</td>
                    </tr>
                    <tr>
                        <td>{PHP.L.Timezone}:</td>
                        <td>{UM_EDIT_TIMEZONE}</td>
                    </tr>
                    <tr>
                        <td>{PHP.L.Theme}:</td>
                        <td>{UM_EDIT_THEME}</td>
                    </tr>
                    <tr>
                        <td>{PHP.L.Language}:</td>
                        <td>{UM_EDIT_LANG}</td>
                    </tr>
                    <!-- IF {UM_EDIT_AVATAR} -->
                    <tr>
                        <td>{PHP.L.Avatar}:</td>
                        <td>{UM_EDIT_AVATAR}</td>
                    </tr>
                    <!-- ENDIF -->
                    <!-- IF {UM_EDIT_SIGNATURE} -->
                    <tr>
                        <td>{PHP.L.Signature}:</td>
                        <td>{UM_EDIT_SIGNATURE}</td>
                    </tr>
                    <!-- ENDIF -->
                    <!-- IF {UM_EDIT_PHOTO} -->
                    <tr>
                        <td>{PHP.L.Photo}:</td>
                        <td>{UM_EDIT_PHOTO}</td>
                    </tr>
                    <!-- ENDIF -->
                    <tr>
                        <td>{PHP.L.users_newpass}:</td>
                        <td>
                            {UM_EDIT_NEWPASS}
                            <p>{PHP.L.users_newpasshint1}</p>
                        </td>
                    </tr>
                    <tr>
                        <td>{PHP.L.Email}:</td>
                        <td>{UM_EDIT_EMAIL}</td>
                    </tr>
                    <tr>
                        <td>{PHP.L.users_hideemail}:</td>
                        <td>{UM_EDIT_HIDEEMAIL}</td>
                    </tr>
                    <!-- IF {PHP.cot_modules.pm} -->
                    <tr>
                        <td>{PHP.L.users_pmnotify}:</td>
                        <td>{UM_EDIT_PMNOTIFY}<br />{PHP.themelang.usersedit.PMnotifyhint}</td>
                    </tr>
                    <!-- ENDIF -->
                    <tr>
                        <td>{PHP.L.Birthdate}:</td>
                        <td>{UM_EDIT_BIRTHDATE}</td>
                    </tr>
                    <tr>
                        <td>{PHP.L.Gender}:</td>
                        <td>{UM_EDIT_GENDER}</td>
                    </tr>
                    <tr>
                        <td>{PHP.L.Signature}:</td>
                        <td>{UM_EDIT_TEXT}</td>
                    </tr>
                    <tr>
                        <td>{PHP.L.Registered}:</td>
                        <td>{UM_EDIT_REGDATE}</td>
                    </tr>
                    <tr>
                        <td>{PHP.L.Lastlogged}:</td>
                        <td>{UM_EDIT_LASTLOG}</td>
                    </tr>
                    <tr>
                        <td>{PHP.L.users_lastip}:</td>
                        <td>{UM_EDIT_LASTIP}</td>
                    </tr>
                    <tr>
                        <td>{PHP.L.users_logcounter}:</td>
                        <td>{UM_EDIT_LOGCOUNT}</td>
                    </tr>
                    <tr>
                        <td>{PHP.L.users_deleteuser}:</td>
                        <td>{UM_EDIT_DELETE}</td>
                    </tr>
                    <tr>
                        <td colspan="2" class="valid">
                            <button type="submit" class="btn btn-primary">{PHP.L.Update}</button>
                        </td>
                    </tr>
                </table>
            </form>
        </div>
    </div>
    <!-- END: UM_EDIT -->

    <!-- BEGIN: UM_PROFILE -->
    <div class="card">
        <div class="card-body">
            <h5><i class="mdi mdi-account-multiple"></i> {PHP.L.Profile}</h5>
            <div class="button-group item-control">
                <a href="{PHP|cot_url('admin','m=other&p=userman')}" class="btn btn-primary"><i class="mdi mdi-account-multiple"></i> {PHP.L.um_usermanager}</a>
            </div>
            <form action="{UM_PROFILE_FORM_SEND}" method="post" enctype="multipart/form-data" name="profile">
                <input type="hidden" name="userid" value="{UM_PROFILE_ID}" />
                <div class="table-responsive">
                    <table class="table table-bordered">
                        <tr>
                            <td>{PHP.L.Username}:</td>
                            <td>{UM_PROFILE_NAME}</td>
                        </tr>
                        <tr>
                            <td>{PHP.L.Groupsmembership}:</td>
                            <td>
                                <div>
                                    {UM_PROFILE_GROUPS}
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td>{PHP.L.Registered}:</td>
                            <td>{UM_PROFILE_REGDATE}</td>
                        </tr>
                        <!-- BEGIN: USERS_PROFILE_EMAILCHANGE -->
                        <tr>
                            <td>{PHP.L.Email}:</td>
                            <td id="emailtd">
                                <div class="width50 floatleft">
                                    {PHP.L.Email}:<br />{UM_PROFILE_EMAIL}
                                </div>
                                <!-- BEGIN: USERS_PROFILE_EMAILPROTECTION -->
                                <script type="text/javascript">
                                    //<![CDATA[
                                    $(document).ready(function() {
                                        $("#emailnotes").hide();
                                        $("#emailtd").click(function() {
                                            $("#emailnotes").slideDown();
                                        });
                                    });
                                    //]]>

                                </script>
                                <div>
                                    {PHP.themelang.usersprofile.Emailpassword}:<br />{UM_PROFILE_EMAILPASS}
                                </div>
                                <div id="emailnotes">{PHP.themelang.usersprofile.Emailnotes}</div>
                                <!-- END: USERS_PROFILE_EMAILPROTECTION -->
                            </td>
                        </tr>
                        <!-- END: USERS_PROFILE_EMAILCHANGE -->
                        <tr>
                            <td>{PHP.L.users_hideemail}:</td>
                            <td>{UM_PROFILE_HIDEEMAIL}</td>
                        </tr>
                        <!-- IF {PHP.cot_modules.pm} -->
                        <tr>
                            <td>{PHP.L.users_pmnotify}:</td>
                            <td>
                                {UM_PROFILE_PMNOTIFY}
                                <p>{PHP.L.users_pmnotifyhint}</p>
                            </td>
                        </tr>
                        <!-- ENDIF -->
                        <tr>
                            <td>{PHP.L.Theme}:</td>
                            <td>{UM_PROFILE_THEME}</td>
                        </tr>
                        <tr>
                            <td>{PHP.L.Language}:</td>
                            <td>{UM_PROFILE_LANG}</td>
                        </tr>
                        <tr>
                            <td>{PHP.L.Timezone}:</td>
                            <td>{UM_PROFILE_TIMEZONE}</td>
                        </tr>
                        <tr>
                            <td>{PHP.L.Country}:</td>
                            <td>{UM_PROFILE_COUNTRY}</td>
                        </tr>
                        <tr>
                            <td>{PHP.L.Birthdate}:</td>
                            <td>{UM_PROFILE_BIRTHDATE}</td>
                        </tr>
                        <tr>
                            <td>{PHP.L.Gender}:</td>
                            <td>{UM_PROFILE_GENDER}</td>
                        </tr>
                        <!-- IF {UM_PROFILE_AVATAR} -->
                        <tr>
                            <td>{PHP.L.Avatar}:</td>
                            <td>{UM_PROFILE_AVATAR}</td>
                        </tr>
                        <!-- ENDIF -->
                        <!-- IF {UM_PROFILE_PHOTO} -->
                        <tr>
                            <td>{PHP.L.Photo}:</td>
                            <td>{UM_PROFILE_PHOTO}</td>
                        </tr>
                        <!-- ENDIF -->
                        <tr>
                            <td>{PHP.L.Signature}:</td>
                            <td>{UM_PROFILE_TEXT}</td>
                        </tr>
                        <tr>
                            <td>
                                <p>
                                    {PHP.L.users_newpass}:
                                    <span>{PHP.L.users_newpasshint1}</span>
                                </p>
                            </td>
                            <td>
                                <p>
                                    {UM_PROFILE_OLDPASS}
                                    <span>{PHP.L.users_oldpasshint}</span>
                                </p>
                                <p>
                                    {UM_PROFILE_NEWPASS1}
                                </p>
                                <p>
                                    {UM_PROFILE_NEWPASS2}
                                    <span>{PHP.L.users_newpasshint2}</span>
                                </p>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2" class="valid">
                                <button type="submit" class="btn btn-primary">{PHP.L.Update}</button>
                            </td>
                        </tr>
                    </table>
                </div>
            </form>
        </div>
    </div>
    <!-- END: UM_PROFILE -->

    <!-- BEGIN: UM_TIME_ACCESS -->
    <div class="card">
        <div class="card-body">
            <h5><i class="mdi mdi-account-convert"></i> {PHP.L.um_tga}</h5>
            <div class="button-group item-control">
                <a href="{PHP|cot_url('admin','m=other&p=userman')}" class="btn btn-primary"><i class="mdi mdi-account-multiple"></i> {PHP.L.um_usermanager}</a>
                <a href="{UM_ACCESS_ID|cot_url('admin','m=other&p=userman&a=edit&id=$this')}" class="btn btn-primary"><i class="mdi mdi-account-edit"></i> {PHP.L.um_edituser}</a>
            </div>
            <form action="{UM_TIME_ACCESS_SEND}" method="post" name="um_useredit" enctype="multipart/form-data">
                <input type="hidden" name="id" value="{UM_ACCESS_ID}" />
                <div class="table-responsive">
                    <table class="table table-bordered">
                        <tr>
                            <td>{PHP.L.users_id}:</td>
                            <td>#{UM_ACCESS_ID}</td>
                        </tr>
                        <tr>
                            <td>{PHP.L.Username}:</td>
                            <td>{UM_ACCESS_NAME}</td>
                        </tr>
                        <tr>
                            <td>{PHP.L.Email}:</td>
                            <td>{UM_ACCESS_EMAIL}</td>
                        </tr>
                        <tr>
                            <td>{PHP.L.Maingroup}:</td>
                            <td>{UM_ACCESS_GROUPS}</td>
                        </tr>
                        <tr>
                            <td>{PHP.L.um_access_start}</td>
                            <td>{UM_ACCESS_START}</td>
                        </tr>
                        <tr>
                            <td>{PHP.L.um_access_start_reason}</td>
                            <td>{UM_ACCESS_START_REASON}</td>
                        </tr>
                        <tr>
                            <td>{PHP.L.um_access_stop}</td>
                            <td>{UM_ACCESS_STOP}</td>
                        </tr>
                        <tr>
                            <td>{PHP.L.um_access_stop_reason}</td>
                            <td>{UM_ACCESS_STOP_REASON}</td>
                        </tr>
                        <tr>
                            <td>{PHP.L.Lastlogged}:</td>
                            <td>{UM_ACCESS_LASTDATE}</td>
                        </tr>
                        <tr>
                            <td>{PHP.L.um_active}</td>
                            <td>{UM_ACCESS_ACTIVE}</td>
                        </tr>
                        <tr>
                            <td colspan="2" class="valid">
                                <button type="submit" class="btn btn-primary">{PHP.L.Update}</button>
                            </td>
                        </tr>
                    </table>
                </div>
            </form>
        </div>
    </div>
    <!-- END: UM_TIME_ACCESS -->
</div>
<!-- END: MAIN -->
