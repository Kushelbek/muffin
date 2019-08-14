<!-- BEGIN: MAIN -->
<div class="col-md-6 col-sm-12">
    {FILE "{PHP.cfg.themes_dir}/admin/{PHP.cfg.admintheme}/warnings.tpl"}
    <div class="card">
        <div class="card-body">
            <h3><i class="mdi mdi-contact-mail"></i> {PHP.L.contact_title}</h3>
            <div class="comment-widgets m-b-20">
                <!-- BEGIN: DATA -->
                <div class="d-flex flex-row comment-row ">
                    <div class="p-2"><span class="round"><img src="../assets/images/users/2.jpg" alt="user" width="50"></span></div>
                    <div class="comment-text active w-100">
                        <h5>{CONTACT_USER} | {CONTACT_EMAIL}</h5>
                        <div class="comment-footer">
                            <span class="date">{CONTACT_DATE}</span>
                            <!-- IF {CONTACT_VAL} == val -->
                            <span class="label label-danger">{PHP.L.contact_shortnew}</span>
                            <!-- ENDIF -->
                                    <span class="button-group item-control">
                                        <a data-toggle="tooltip" data-placement="top" data-original-title="{PHP.L.View}" title="{PHP.L.View}" href="{CONTACT_VIEWLINK}" class="btn btn-success"><i class="mdi mdi-book-open-page-variant"></i></a>
                                        <!-- IF {CONTACT_VAL} == val -->
                                        <a data-toggle="tooltip" data-placement="top" data-original-title="{PHP.L.contact_markread}" title="{PHP.L.contact_markread}" href="{CONTACT_READLINK}" class="btn btn-success"><i class="mdi mdi-eye-off"></i></a>
                                         <!-- ELSE -->
                                        <a data-toggle="tooltip" data-placement="top" data-original-title="{PHP.L.contact_markunread}" title="{PHP.L.contact_markunread}" href="{CONTACT_UNREADLINK}" class="btn btn-success"><i class="mdi mdi-eye"></i></a>
                                          <!-- ENDIF -->
                                        <a data-toggle="tooltip" data-placement="top" data-original-title="{PHP.L.Delete}" title="{PHP.L.Delete}" href="{CONTACT_DELLINK}" target="_blank" class="btn btn-danger"><i class="mdi mdi-delete"></i></a>
                                    </span>
                        </div>
                        <p class="m-b-5 m-t-10">{CONTACT_TEXTSHORT}</p>
                    </div>
                </div>
                <!-- END: DATA -->
                <!-- IF {CONTACT_PAGINATION} -->
                <div>
                    <ul class="pagination">{CONTACT_PREV}{CONTACT_PAGINATION}{CONTACT_NEXT}</ul>
                </div>
                <!-- ENDIF -->
            </div>
        </div>
    </div>
</div>

<!-- BEGIN: VIEW -->
<div class="col-md-6 col-sm-12">
    <div class="card">
        <div class="card-body">
            <h2 class="users">{PHP.L.contact_view} #{CONTACT_ID} <span class="badge badge-info">
                    <!-- IF {CONTACT_SUBJECT} -->{CONTACT_SUBJECT}
                    <!-- ELSE -->{PHP.L.contact_nosubject}
                    <!-- ENDIF --></span></h2>
            <form action="{CONTACT_FORM_SEND}" method="post" name="contact_form">
                <div class="table-responsive">
                    <table class="table table-hover">
                        <tr>
                            <td>{PHP.L.Username}:</td>
                            <td>{CONTACT_USER}</td>
                        </tr>
                        <tr>
                            <td>{PHP.L.Date}:</td>
                            <td>{CONTACT_DATE}</td>
                        </tr>
                        <tr>
                            <td>{PHP.L.Email}:</td>
                            <td>{CONTACT_EMAIL} </td>
                        </tr>
                        <tr>
                            <td>{PHP.L.Subject}:</td>
                            <td>
                                <!-- IF {CONTACT_SUBJECT} -->{CONTACT_SUBJECT}
                                <!-- ELSE -->{PHP.L.contact_nosubject}
                                <!-- ENDIF -->
                            </td>
                        </tr>
                        <tr>
                            <td>{PHP.L.Message}:</td>
                            <td>{CONTACT_TEXT}</td>
                        </tr>
                        <!-- BEGIN: EXTRAFLD -->
                        <tr>
                            <td>{CONTACT_EXTRAFLD_TITLE}</td>
                            <td>{CONTACT_EXTRAFLD}</td>
                        </tr>
                        <!-- END: EXTRAFLD -->
                        <!-- IF {CONTACT_REPLY} -->
                        <tr>
                            <td colspan="2">
                                <div class="alert alert-info">
                                    <button type="button" class="close" data-dismiss="alert" aria-label="Close"> <span aria-hidden="true">×</span> </button>
                                    <h3 class="text-info"><i class="fa fa-exclamation-circle"></i> {PHP.L.contact_sent}</h3> {CONTACT_REPLY}
                                </div>
                            </td>

                        </tr><!-- ENDIF -->
                        <tr>
                            <td>{PHP.L.Reply}:</td>
                            <td>{CONTACT_FORM_TEXT}</td>
                        </tr>
                        <tr>
                            <td colspan="2" class="valid"><button class="btn btn-primary" type="submit">{PHP.L.Submit}</button></td>
                        </tr>
                    </table>
                </div>
            </form>
        </div>
    </div>
</div>
<!-- END: VIEW -->





<!-- END: MAIN -->
