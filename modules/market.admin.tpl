<!-- BEGIN: MAIN -->
<div class="col-md-12">
    <div class="card">
        <div class="card-body">
            <h3><i class="mdi mdi-cart-outline"></i> {PHP.L.market}</h3>
            <form action="{SEARCH_ACTION_URL}" method="get">
                <input type="hidden" name="m" value="{PHP.m}" />
                <input type="hidden" name="p" value="{PHP.p}" />
                <input type="hidden" name="c" value="{PHP.c}" />
                <div class="table-responsive">
                    <table width="100%" cellpadding="5" cellspacing="0">
                        <tr>
                            <td>{PHP.L.Search}:</td>
                            <td>{SEARCH_SQ}</td>
                        </tr>
                        <tr>
                            <td>{PHP.L.Location}:</td>
                            <td>{SEARCH_LOCATION}</td>
                        </tr>
                        <tr>
                            <td>{PHP.L.Category}:</td>
                            <td>{SEARCH_CAT}</td>
                        </tr>
                        <tr>
                            <td>{PHP.L.Order}:</td>
                            <td>{SEARCH_SORTER}</td>
                        </tr>
                        <tr>
                            <td></td>
                            <td>{SEARCH_STATE}<br /></td>
                        </tr>
                        <tr>
                            <td></td>
                            <td><input type="submit" name="search" class="btn btn-success" value="{PHP.L.Search}" /></td>
                        </tr>
                    </table>
                </div>
            </form>
        </div>
    </div>
</div>
<div class="col-md-12">
    <div class="card card-default">
        <div class="card-header">
            <div class="card-actions">
                <a class="" data-action="collapse"><i class="ti-minus"></i></a>
                <a class="btn-minimize" data-action="expand"><i class="mdi mdi-arrow-expand"></i></a>
                <a class="btn-close" data-action="close"><i class="ti-close"></i></a>
            </div>
        </div>
        <div class="card-body collapse show">
            <form action="{PHP|cot_url('admin','m=market'),'',true}" id="prd_form" method="POST">
                <!-- BEGIN: PRD_ROWS -->
                <div class="col-lg-3 col-md-6">
                    <div class="card">
                        <div class="card-body">
                            <!-- IF {PRD_ROW_OWNER_AVATAR_SRC} -->
                            <img class="rounded-circle" width="40" height="40" src="{PRD_ROW_OWNER_AVATAR_SRC}">
                            <!-- ELSE -->
                            <img class="uk-border-circle" width="40" height="40" src="datas\defaultav\blank.png">
                            <!-- ENDIF -->
                            <h3 class="float-right">{PRD_ROW_OWNER_NICKNAME}</h3>
                        </div>
                        <!-- IF {PRD_ROW_ID|att_count('market',$this,'','images')} -->
                        <img class="card-img-top img-responsive" src="{PRD_ROW_ID|att_get('market',$this,'')|att_thumb($this,369,246,'crop',false)}" alt="{PRD_ROW_SHORTTITLE}">
                        <!-- ELSE -->
                        <img class="card-img-top img-responsive" src="{PHP.cfg.themes_dir}/admin/{PHP.cfg.admintheme}/img/noimage.png" alt="{PRD_ROW_SHORTTITLE}">
                        <!-- ENDIF -->
                        <!-- IF {PRD_ROW_MAVATAR.1}  -->
                        <img class="card-img-top img-responsive" src="{PRD_ROW_MAVATAR.1|cot_mav_thumb($this, 369, 246, crop)}" />
                        <!-- ELSE -->

                        <!-- ENDIF -->
                        <div class="card-body">
                            <h4 class="card-title"><a class="text-muted" href="{PRD_ROW_URL}">{PRD_ROW_SHORTTITLE}</a></h4>
                            <p class="card-text">{PRD_ROW_TEXT|strip_tags($this)|mb_substr($this, 0, 60, 'UTF-8')}...</p>
                            <div class="button-group item-control">
                                <a class="btn btn-success" href="{PRD_ROW_VALIDATE_URL}" class="text-inverse p-r-10" data-toggle="tooltip" title="{PHP.L.Validate}" data-original-title="{PHP.L.Validate}"><i class="ti-marker-alt"></i></a>
                                <a class="btn btn-danger" href="{PRD_ROW_DELETE_URL}" class="text-inverse" title="{PHP.L.Delete}" data-toggle="tooltip" data-original-title="{PHP.L.Delete}"><i class="ti-trash"></i></a>
                                <input type="checkbox" id="prd_arr[]" class="chk-col-green" name="prd_arr[]" />
                                <label for="prd_arr[]">Отметить</label>
                            </div>
                        </div>
                        <div class="card-body">
                            <p class="card-text"><small class="text-muted">{PRD_ROW_DATE}</small></p>
                        </div>
                    </div>
                </div>
                <!-- END: PRD_ROWS -->
                <div class="col-12">
                    <div class="card">
                        <div class="card-body">
                            <select name="prd_action" id="prd_action">
                                <option value="0">---</option>
                                <option value="delete">{PHP.L.Delete}</option>
                                <option value="validate">{PHP.L.Validate}</option>
                            </select>
                            <button type="submit" class="btn btn-default">{PHP.L.Confirm}</button>
                        </div>
                    </div>
                </div>
                <!-- IF {PAGENAV_COUNT} > 0 -->
                <ul>{PAGENAV_PAGES}</ul>
                <!-- ELSE -->
                <div class="col-12">
                    <div class="card">
                        <div class="card-body">
                            {PHP.L.market_notfound}
                        </div>
                    </div>
                </div>
                <!-- ENDIF -->
            </form>
        </div>
    </div>
</div>
<!-- END: MAIN -->
