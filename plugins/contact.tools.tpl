<!-- BEGIN: MAIN -->
<div class="col-md-6 col-sm-12">
    {FILE "{PHP.cfg.themes_dir}/admin/{PHP.cfg.admintheme}/warnings.tpl"}
    <div class="card">
        <div class="card-body">
            <h3><i class="mdi mdi-contact-mail"></i> {PHP.L.contact_title}</h3>
            <div class="comment-widgets m-b-20">
                <!-- BEGIN: DATA -->
                <div class="d-flex flex-row comment-row ">
                    <div class="p-2"><span class="round">
                            <img src="datas/defaultav/blank.png" width="50" alt="{PHP.L.Avatar}" />
                        </span></div>
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
        <form action="{CONTACT_FORM_SEND}" method="post" name="contact_form">
            <div class="card-body">
                <center class="m-t-30">
                    <h4 class="card-title m-t-10">{CONTACT_USER} | {CONTACT_EMAIL}</h4>
                    <h6 class="card-subtitle">
                        <!-- IF {CONTACT_SUBJECT} -->{CONTACT_SUBJECT}
                        <!-- ELSE -->{PHP.L.contact_nosubject}
                        <!-- ENDIF -->
                    </h6>
                </center>
            </div>
            <div>
                <hr>
            </div>
            <div class="card-body">
                <small class="text-muted">{PHP.L.Date}</small>
                <h6>{CONTACT_DATE}</h6>
                <small class="text-muted p-t-30 db">{PHP.L.Email}</small>
                <h6>{CONTACT_EMAIL}</h6>
                <!-- BEGIN: EXTRAFLD -->
                <small class="text-muted p-t-30 db">{CONTACT_EXTRAFLD_TITLE}</small>
                <h6>{CONTACT_EXTRAFLD}</h6>
                <!-- END: EXTRAFLD -->
                <!-- IF {CONTACT_REPLY} -->
                <div class="alert alert-info">
                    <button type="button" class="close" data-dismiss="alert" aria-label="Close"> <span aria-hidden="true">×</span> </button>
                    <h3 class="text-info"><i class="fa fa-exclamation-circle"></i> {PHP.L.contact_sent}</h3> {CONTACT_REPLY}
                </div>
                <!-- ENDIF -->
                <div class="m-t-10">
                    {CONTACT_TEXT}
                </div>
                <div class="m-t-10 col-sm-12">
                    {CONTACT_FORM_TEXT}
                </div>
                <br>
                <button class="btn btn-primary" type="submit">{PHP.L.Submit}</button>
            </div>
        </form>
    </div>
</div>
<!-- END: VIEW -->
<!-- END: MAIN -->
