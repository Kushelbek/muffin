<!-- BEGIN: MAIN -->
<script type="text/javascript">
    $(document).ready(function() {
        $('.moreinfo').hide();
        $(".mor_info_on_off").click(function() {
            var kk = $(this).attr('id');
            $('#' + kk).children('.moreinfo').slideToggle(100);
        });
    });

</script>
<div class="col-md-12">
    {FILE "{PHP.cfg.themes_dir}/admin/{PHP.cfg.admintheme}/warnings.tpl"}
    <div class="card">
        <div class="card-body">
            <h5><i class="mdi mdi-tag"></i> {PHP.L.tags_All}</h5>
            <div class="button-group item-control">
                <a title="{PHP.L.Configuration}" href="{ADMIN_TAGS_CONFIG_URL}" class="btn btn-primary"><i class="mdi mdi-settings"></i> {PHP.L.Configuration}</a>
            </div>
            <div class="table-responsive">
                <table class="table table-bordered">
                    <thead>
                        <tr>
                            <td colspan="5">
                                <form name="sortfiltertag" action="{ADMIN_TAGS_FORM_ACTION}" method="post">
                                    <!-- IF {ADMIN_TAGS_TOTALITEMS} > 1 -->{PHP.L.adm_sort} {ADMIN_TAGS_ORDER} {ADMIN_TAGS_WAY}
                                    <!-- ENDIF --> {PHP.L.Show} {ADMIN_TAGS_FILTER} {PHP.L.Search} <input name="tag" type="text" value="" />
                                    <hr />
                                    <input class="btn btn-primary" name="paction" type="submit" value="{PHP.L.Filter}" />
                                </form>
                            </td>
                        </tr>
                        <tr>
                            <th>{PHP.L.Code}</th>
                            <th>{PHP.L.adm_area}</th>
                            <th>{PHP.L.Count}</th>
                            <th> {PHP.L.adm_tag_item_area}</th>
                            <th>{PHP.L.Action}</th>
                        </tr>
                    </thead>
                    <tbody>
                        <!-- BEGIN: ADMIN_TAGS_ROW -->
                        <tr>
                            <td><b>{ADMIN_TAGS_CODE}</b></td>
                            <td>{ADMIN_TAGS_AREA}</td>
                            <td>{ADMIN_TAGS_COUNT}</td>
                            <td>
                                <div id="mor_{PHP.ii}" class='mor_info_on_off'>
                                    <span style="cursor:pointer;">{ADMIN_TAGS_ITEMS}</span><br />
                                    <div class="moreinfo">
                                        <!-- BEGIN: ADMIN_TAGS_ROW_ITEMS -->
                                        {ADMIN_TAGS_ITEM_TITLE}<br />
                                        <!-- END: ADMIN_TAGS_ROW_ITEMS -->
                                    </div>
                                </div>
                            </td>
                            <td class="centerall action">
                                <form name="tagedit{PHP.ii}" action="{ADMIN_TAGS_FORM_ACTION}" method="post">
                                    <input name="old_tag" type="hidden" value="{ADMIN_TAGS_CODE|htmlspecialchars($this)}" />
                                    <input name="d" type="hidden" value="{PHP.d}" />
                                    <input name="sorttype" type="hidden" value="{PHP.sorttype}" />
                                    <input name="sortway" type="hidden" value="{PHP.sortway}" />
                                    <input name="filter" type="hidden" value="{PHP.filter}" />
                                    {ADMIN_TAGS_TAG}
                                    <input name="action" type="submit" value="{PHP.L.Edit}" class="btn btn-primary">
                                    <!--//<a title="{PHP.L.Edit}" href="{ADMIN_TAGS_URL_FOR_EDIT}" target="_blank" class="button">{PHP.L.Edit}</a>//-->
                                    <input name="action" type="submit" value="{PHP.L.Delete}" class="confirmLink btn btn-danger">
                                    <!--//<a title="{PHP.L.Delete}" href="{ADMIN_TAGS_DEL_URL}" class="ajax button">{PHP.L.Delete}</a>//-->
                                </form>
                            </td>
                        </tr>
                        <!-- END: ADMIN_TAGS_ROW -->
                    </tbody>
                </table>
            </div>
            <p>{PHP.L.Total}<span class="badge badge-info"> {ADMIN_TAGS_TOTALITEMS}</span> {PHP.L.Onpage}<span class="badge badge-info"> {ADMIN_TAGS_COUNTER_ROW}</span></p>
            <!-- IF {ADMIN_TAGS_PAGNAV} -->
            <div>
                <ul class="pagination">{ADMIN_TAGS_PAGINATION_PREV}{ADMIN_TAGS_PAGNAV}{ADMIN_TAGS_PAGINATION_NEXT}</ul>
            </div>
            <!-- ENDIF -->
        </div>
    </div>
</div>
<!-- END: MAIN -->
