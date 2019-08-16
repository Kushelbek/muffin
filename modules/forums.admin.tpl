<!-- BEGIN: MAIN -->
<div class="col-md-12">
    <div class="card">
        <div class="card-body">
            <h5><i class="mdi mdi-forum"></i> {PHP.L.Forums}</h5>
            <div class="button-group">
                <a title="{PHP.L.Configuration}" href="{ADMIN_FORUMS_URL_CONFIG}" class="btn btn-primary"><i class="mdi mdi-settings"></i> {PHP.L.Configuration}</a>
                <a href="{ADMIN_FORUMS_URL_STRUCTURE}" class="btn btn-primary"><i class="mdi mdi-view-module"></i> {PHP.L.Categories}</a>
            </div>
        </div>
    </div>
</div>
<div class="col-md-6">
    <div class="card">
        <div class="card-body">
            <h5><i class="mdi mdi-chart-areaspline"></i> {PHP.L.Statistics}</h5>
            <div class="table-responsive">
                <table class="table table-bordered">
                    <tr>
                        <td>{PHP.L.forums_topics}:</td>
                        <td>{ADMIN_FORUMS_TOTALTOPICS}</td>
                    </tr>
                    <tr>
                        <td>{PHP.L.forums_posts}:</td>
                        <td>{ADMIN_FORUMS_TOTALPOSTS}</td>
                    </tr>
                    <tr>
                        <td>{PHP.L.Views}:</td>
                        <td>{ADMIN_FORUMS_TOTALVIEWS}</td>
                    </tr>
                </table>
            </div>
        </div>
    </div>
</div>
<div class="col-md-6">
    <div class="card">
        <div class="card-body">
            <h5><i class="mdi mdi-new-box"></i> {PHP.L.home_newtopics}</h5>
            <div class="table-responsive">
                <table class="table table-bordered">
                    <!-- BEGIN: ADMIN_FORUMS_ROW_USER -->
                    <tr>
                        <td>{ADMIN_FORUMS_ROW_II}.</td>
                        <td>{ADMIN_FORUMS_ROW_FORUMS} {PHP.cfg.separator} <a href="{ADMIN_FORUMS_ROW_URL}">{ADMIN_FORUMS_ROW_TITLE}</a></td>
                        <td>{ADMIN_FORUMS_ROW_POSTCOUNT}</td>
                    </tr>
                    <!-- END: ADMIN_FORUMS_ROW_USER -->
                </table>
            </div>
        </div>
    </div>
</div>
<!-- END: MAIN -->
