<!-- BEGIN: MAIN -->
<div class="card">
    <div class="card-body">
        <h4 class="card-title">{PHP.L.comments_comments}</h4>
    </div>
    <div class="comment-widgets m-b-20">
        <!-- BEGIN: ADMIN_COMMENTS_ROW -->
        <div class="d-flex flex-row comment-row">
            <div class="comment-text active w-100">
                <h5> {ADMIN_COMMENTS_AUTHOR}</h5>
                <div class="comment-footer">
                    <span class="date">{ADMIN_COMMENTS_DATE}</span>
                    <span class="action-icons active">
                <a href="{ADMIN_COMMENTS_URL}" class="text-inverse" title="{PHP.L.Open}" data-toggle="tooltip" data-original-title="{PHP.L.Open}"><i class="mdi mdi-comment-text-outline text-success"></i></a>
                <a href="{ADMIN_COMMENTS_ITEM_DEL_URL}" class="text-inverse" title="{PHP.L.Delete}" data-toggle="tooltip" data-original-title="{PHP.L.Delete}"><i class="ti-trash"></i></a>
                    </span>
                </div>
                <p class="m-b-5 m-t-10">{ADMIN_COMMENTS_TEXT}</p>
            </div>
        </div>
        <!-- END: ADMIN_COMMENTS_ROW -->
    </div>
</div>
<p class="paging"><a class="btn btn-success" href="{ADMIN_COMMENTS_URL}">{PHP.L.More}</a></p>
<!-- END: MAIN -->
