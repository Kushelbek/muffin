<!-- BEGIN: MAIN -->
<div class="col-md-12">
    {FILE "{PHP.cfg.themes_dir}/admin/{PHP.cfg.admintheme}/warnings.tpl"}
    <div class="card">
        <div class="card-body">

            <!-- Nav tabs -->
            <ul class="nav nav-tabs customtab" role="tablist">
                <li class="nav-item"> <a class="nav-link active show" data-toggle="tab" href="#contactmain" role="tab" aria-selected="true"><span class="hidden-sm-up"><i class="ti-home"></i></span> <span class="hidden-xs-down">{PHP.L.contact_title}</span></a> </li>
                <li class="nav-item"> <a class="nav-link" data-toggle="tab" href="#{CONTACT_VIEWLINK}" role="tab" aria-selected="false"><span class="hidden-sm-up"><i class="mdi mdi-contact-mail"></i></span> <span class="hidden-xs-down"><i class="mdi mdi-contact-mail"></i></span></a> </li>
            </ul>
            <!-- Tab panes -->
            <div class="tab-content">
                <div class="tab-pane active show" id="contactmain" role="tabpanel">
                    <div class="p-20">
                        <h3>{PHP.L.contact_title}</h3>
                        <div class="table-responsive">
                            <table class="table table-bordered">
                                <tr>
                                    <td>{PHP.L.Date}</td>
                                    <td>{PHP.L.User}</td>
                                    <td>{PHP.L.Message}</td>
                                    <td>{PHP.L.Action}</td>
                                </tr>
                                <!-- BEGIN: DATA -->
                                <tr>
                                    <td class="{CONTACT_ODDEVEN}">{CONTACT_DATE}
                                        <!-- IF {CONTACT_VAL} == val --><br /><span class="badge badge-danger"> {PHP.L.contact_shortnew} </span><!-- ENDIF -->
                                    </td>
                                    <td class="{CONTACT_ODDEVEN}">{CONTACT_USER}<br />{CONTACT_EMAIL}</td>
                                    <td class="{CONTACT_ODDEVEN}">{CONTACT_TEXTSHORT}</td>
                                    <td class="{CONTACT_ODDEVEN}">
                                        <div class="button-group item-control">
                                            <a href="{CONTACT_VIEWLINK}" title="{PHP.L.View}" class="btn btn-success" onclick="windows.href='#detailcontact'">{PHP.L.short_open}</a>
                                            <!-- IF {CONTACT_VAL} == val --><a href="{CONTACT_READLINK}" title="{PHP.L.contact_markread}" class="btn btn-success">{PHP.L.contact_read}</a>
                                            <!-- ELSE --><a href="{CONTACT_UNREADLINK}" title="{PHP.L.contact_markunread}" class="btn btn-success">{PHP.L.contact_unread}</a><!-- ENDIF --><a href="{CONTACT_DELLINK}" title="{PHP.L.Delete}" class="btn btn-success">{PHP.L.Delete}</a>
                                        </div>
                                    </td>
                                </tr>
                                <!-- END: DATA -->
                            </table>
                        </div>
                        <!-- IF {CONTACT_PAGINATION} -->
                        <div>
                            <ul class="pagination">{CONTACT_PREV}{CONTACT_PAGINATION}{CONTACT_NEXT}</ul>
                        </div>
                        <!-- ENDIF -->
                    </div>
                </div>
                <div class="tab-pane p-20" id="{CONTACT_VIEWLINK}" role="tabpanel">
                    <!-- BEGIN: VIEW -->
                    <h2 class="users">{PHP.L.contact_view} #{CONTACT_ID} (
                        <!-- IF {CONTACT_SUBJECT} -->{CONTACT_SUBJECT}
                        <!-- ELSE -->{PHP.L.contact_nosubject}
                        <!-- ENDIF -->)</h2>
                    <form action="{CONTACT_FORM_SEND}" method="post" name="contact_form">
                        <table class="cells">
                            <tr>
                                <td class="width15">{PHP.L.Username}:</td>
                                <td class="width85">{CONTACT_USER}</td>
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
                            <tr style="color:#900;">
                                <td>{PHP.L.contact_sent}:</td>
                                <td>{CONTACT_REPLY}</td>
                            </tr><!-- ENDIF -->
                            <tr>
                                <td>{PHP.L.Reply}:</td>
                                <td>{CONTACT_FORM_TEXT}</td>
                            </tr>
                            <tr>
                                <td colspan="2" class="valid"><button type="submit">{PHP.L.Submit}</button></td>
                            </tr>
                        </table>
                    </form>
                    <!-- END: VIEW -->
                </div>

            </div>
        </div>
    </div>



</div>

<!-- END: MAIN -->
