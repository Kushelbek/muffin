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
                <div class="media">
                    <h4>
                        <!-- IF {PRD_ROW_COST} > 0 -->
                        <div class="cost pull-right">{PRD_ROW_COST} {PHP.cfg.payments.valuta}</div><!-- ENDIF --><a href="{PRD_ROW_URL}">{PRD_ROW_SHORTTITLE}</a>
                    </h4>
                    <label><input type="checkbox" name="prd_arr[]" value="{PRD_ROW_ID}">Отметить</label>
                    <p class="owner">{PRD_ROW_OWNER_NAME} <span class="date">[{PRD_ROW_DATE}]</span> &nbsp;{PRD_ROW_COUNTRY} {PRD_ROW_REGION} {PRD_ROW_CITY} &nbsp; {PRD_ROW_ADMIN_EDIT}</p>
                    <div class="pull-right">
                        <!-- IF {PRD_ROW_STATE} == 2 -->
                        <a href="{PRD_ROW_VALIDATE_URL}" class="button btn btn-success">{PHP.L.Validate}</a>
                        <!-- ENDIF -->
                        <a href="{PRD_ROW_DELETE_URL}" class="button btn btn-warning">{PHP.L.Delete}</a>
                    </div>
                    <p class="text">{PRD_ROW_SHORTTEXT}</p>
                    <p class="type"><a href="{PRD_ROW_CATURL}">{PRD_ROW_CATTITLE}</a></p>
                </div>
                <!-- END: PRD_ROWS -->
                <table class="table product-overview">
                     <tbody>
                         <!-- BEGIN: PRD_ROWS -->
                        <tr>
                            <td><a href="{PRD_ROW_URL}" target="_blank">{PRD_ROW_SHORTTITLE}</a></td>
                            <!-- IF {PRD_ROW_ID|att_count('market',$this,'','images')} > 0 -->
                            <td>
                                <span class="image kw-prodimage">
                                    <img src="{PRD_ROW_ID|att_get('market',$this,'')|att_thumb($this,80,100,'crop',false)}" alt="{PRD_ROW_SHORTTITLE}">
                                </span>
                            </td>
                            <!-- ENDIF -->
                            <!-- IF {PRD_ROW_MAVATAR.1} -->
                            <td>
                                <span class="image kw-prodimage">
                                    <img src="{PRD_ROW_MAVATAR.1|cot_mav_thumb($this, 80, 100, crop)}" />
                                </span>
                            </td>
                            <!-- ENDIF -->
                             <!-- IF {PRD_ROW_COST} > 0 -->
                            <td>{PRD_ROW_COST} {PHP.cfg.payments.valuta}</td>
                            <!-- ENDIF -->
                            <td>{PRD_ROW_DATE}</td>
                            <td>
                                <span class="label label-success font-weight-100">Paid</span>
                            </td>
                            <td><a href="javascript:void(0)" class="text-inverse p-r-10" data-toggle="tooltip" title="" data-original-title="Edit"><i class="ti-marker-alt"></i></a> <a href="javascript:void(0)" class="text-inverse" title="" data-toggle="tooltip" data-original-title="Delete"><i class="ti-trash"></i></a></td>
                        </tr>
                          <!-- END: PRD_ROWS -->
                    </tbody>
                </table>

            </form>
        </div>
    </div>
</div>
<hr>
<div class="col-md-6">
    <div class="span3">
        <select name="prd_action" id="prd_action">
            <option value="0">---</option>
            <option value="delete">{PHP.L.Delete}</option>
            <option value="validate">{PHP.L.Validate}</option>
        </select>
    </div>
    <div class="span9">
        <button type="submit" class="btn btn-default">{PHP.L.Confirm}</button>
    </div>
</div>

<!-- IF {PAGENAV_COUNT} > 0 -->
<div class="pagination">
    <ul>{PAGENAV_PAGES}</ul>
</div>
<!-- ELSE -->
<div class="alert">{PHP.L.market_notfound}</div>
<!-- ENDIF -->
</form>
<!-- END: MAIN -->
