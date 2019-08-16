<!-- BEGIN: MAIN -->
<div class="col-md-12">
    {FILE "{PHP.cfg.themes_dir}/admin/{PHP.cfg.admintheme}/warnings.tpl"}
    <div class="card">
        <div class="card-body">
            <div class="social-widget">
                <div class="soc-header box-facebook"><i class="mdi mdi-image-area"></i> {PHP.L.att_attachments}</div>
                <div class="soc-content">
                    <a href="{PHP|cot_url('admin', 'm=other&p=attacher&a=cleanup')}" onclick="return confirm('{PHP.L.att_cleanup_confirm}')">
                        <div class="col-6 b-r">
                            <h3 class="font-medium"><i class="mdi mdi-delete-variant"></i></h3>
                            <h5 class="text-muted">{PHP.L.att_cleanup}</h5>
                        </div>
                    </a>
                    <a href="{PHP|cot_url('admin', 'm=other&p=attacher&a=allthumbsremove')}" onclick="return confirm('{PHP.L.att_allthumbs_remove_confirm}')">
                        <div class="col-6">
                            <h3 class="font-medium"><i class="ti-layout-list-large-image"></i></h3>
                            <h5 class="text-muted">{PHP.L.att_allthumbs_remove}</h5>
                        </div>
                    </a>
                </div>
            </div>
        </div>
        <!-- END: MAIN -->
