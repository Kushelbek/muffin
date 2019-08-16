<!-- BEGIN: MAIN -->
<div class="col-md-12">
    {FILE "{PHP.cfg.themes_dir}/admin/{PHP.cfg.admintheme}/warnings.tpl"}
    <div class="card">
        <div class="card-body">
            <h5><i class="mdi mdi-star-circle"></i> {PHP.L.Ratings}</h5>
            <div class="button-group item-control">
                <a title="{PHP.L.Configuration}" href="{ADMIN_RATINGS_URL_CONFIG}" class="btn btn-primary btn-{PHP.R.admin-config-buttonsize1}"><i class="mdi mdi-settings"></i> {PHP.L.Configuration}</a>
            </div>
            <div class="table-responsive">
                <table class="table table-bordered">
                    <thead>
                        <tr>
                            <th>{PHP.L.adm_area}</th>
                            <th>{PHP.L.Code}</th>
                            <th>{PHP.L.Date} (GMT)</th>
                            <th>{PHP.L.Votes}</th>
                            <th>{PHP.L.Rating}</th>
                            <th>{PHP.L.Action}</th>
                        </tr>
                    </thead>
                    <!-- BEGIN: RATINGS_ROW -->
                    <tr>
                        <td>{ADMIN_RATINGS_ROW_RATING_AREA}</td>
                        <td>{ADMIN_RATINGS_ROW_RATING_CODE}</td>
                        <td>{ADMIN_RATINGS_ROW_CREATIONDATE}</td>
                        <td>{ADMIN_RATINGS_ROW_VOTES}</td>
                        <td>{ADMIN_RATINGS_ROW_RATING_AVERAGE}</td>
                        <td>
                            <div class="button-group item-control">
                                <a data-toggle="tooltip" data-placement="top" data-original-title="{PHP.L.Delete}" title="{PHP.L.Delete}" href="{ADMIN_RATINGS_ROW_URL_DEL}" class="btn btn-danger"><i class="mdi mdi-delete"></i></a>
                                <a data-toggle="tooltip" data-placement="top" data-original-title="{PHP.L.Open}" title="{PHP.L.Open}" href="{ADMIN_RATINGS_ROW_RAT_URL}" class="btn btn-success"><i class="mdi mdi-folder"></i></a>
                            </div>
                        </td>
                    </tr>
                    <!-- END: RATINGS_ROW -->
                </table>
            </div>
            <!-- IF {ADMIN_RATINGS_PAGNAV} -->
            <div>
                <ul class="pagination">{ADMIN_RATINGS_PAGINATION_PREV}{ADMIN_RATINGS_PAGNAV}{ADMIN_RATINGS_PAGINATION_NEXT}</ul>
            </div>
            <!-- ENDIF -->
            <p>{PHP.L.adm_ratings_totalitems} <span class="badge badge-info">{ADMIN_RATINGS_TOTALITEMS}</span> {PHP.L.Onpage} <span class="badge badge-info">{ADMIN_RATINGS_ON_PAGE}</span> {PHP.L.adm_ratings_totalvotes} <span class="badge badge-info">{ADMIN_RATINGS_TOTALVOTES}</span></p>

        </div>
    </div>
</div>
<!-- END: MAIN -->
