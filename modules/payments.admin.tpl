<!-- BEGIN: MAIN -->
<div class="col-md-12">
    <div class="card card-default">
        <div class="card-body">
            <h3><i class="mdi mdi-history"></i> {PHP.L.payments_history}</h3>

            <div class="button-group item-control">
                <div class="pull-right">
                    <a href="{PHP|cot_url('admin', 'm=payments')}" class="btn btn-<!-- IF !{PHP.p} -->primary<!-- ELSE -->outline-primary<!-- ENDIF -->">{PHP.L.payments_allusers}</a>
                    <a href="{PHP|cot_url('admin', 'm=payments&p=payouts')}" class="btn btn-<!-- IF {PHP.p} == 'payouts' -->primary<!-- ELSE -->outline-primary<!-- ENDIF -->">{PHP.L.payments_payouts}</a>
                    <a href="{PHP|cot_url('admin', 'm=payments&p=transfers')}" class="btn btn-<!-- IF {PHP.p} == 'transfers' -->primary<!-- ELSE -->outline-primary<!-- ENDIF -->">{PHP.L.payments_transfers}</a>
                </div>
                <div class="form-group row">
                    <form action="{PHP.p|cot_url('admin', 'm=payments&p='$this)}" method="post" class="form-inline">
                        <div class="form-group">
                            <input type="text" class="form-control mr-4" name="sq" value="{PHP.sq}">
                            <button type="submit" class="btn btn-primary">{PHP.L.Search}</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- BEGIN: PAYMENTS -->

<div class="col-md-12">
    <div class="card card-default">
        <div class="card-header">
            <div class="card-actions">
                <a class="" data-action="collapse"><i class="ti-minus"></i></a>
                <a class="btn-minimize" data-action="expand"><i class="mdi mdi-arrow-expand"></i></a>
                <a class="btn-close" data-action="close"><i class="ti-close"></i></a>
            </div>
             <h3 class="float-left"><i class="mdi mdi-wallet"></i> {PHP.L.payments_balance}</h3>
        </div>
        <div class="card-body collapse show">
            <ul class="list-unstyled row text-center">
                <!-- IF {PHP.cfg.payments.balance_enabled} -->
                <li class="col"><i class="mdi mdi-currency-eur"></i><span>{PHP.L.payments_siteinvoices}</span>
                    <h3>{PHP.L.payments_debet}: {INBALANCE} {PHP.cfg.payments.valuta}</h3>
                </li>
                <li class="col"><i class="mdi mdi-credit-card"></i><span>{PHP.L.payments_credit}</span>
                    <h3>{OUTBALANCE} {PHP.cfg.payments.valuta}</h3>
                </li>
                <li class="col"><i class="mdi mdi-wallet"></i><span>{PHP.L.payments_balance} </span>
                    <h3>{BALANCE} {PHP.cfg.payments.valuta}</h3>
                </li>
                <!-- ENDIF -->
                <li class="col"><i class="mdi mdi-sigma"></i><span>{PHP.L.payments_allpayments} </span>
                    <h3>{CREDIT} {PHP.cfg.payments.valuta}</h3>
                </li>
            </ul>
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
            <h3 class="float-left"><i class="mdi mdi-face"></i> {PHP.L.Users}</h3>
        </div>
        <div class="card-body collapse show">
            <div class="table-responsive">
                <table class="table table-bordered table-striped">
                    <thead>
                        <tr>
                            <th class="coltop">#</th>
                            <th class="coltop">{PHP.L.User}</th>
                            <th class="coltop">{PHP.L.Date}</th>
                            <th class="coltop"></th>
                            <th class="coltop">{PHP.L.payments_summ}</th>
                            <th class="coltop">{PHP.L.payments_desc}</th>
                            <th class="coltop">{PHP.L.payments_area}</th>
                            <th class="coltop">{PHP.L.payments_code}</th>
                            <th class="coltop">{PHP.L.Status}</th>
                        </tr>
                    </thead>
                    <tbody>
                        <!-- BEGIN: PAY_ROW -->
                        <tr>
                            <td>{PAY_ROW_ID}</td>
                            <td><a href="{PAY_ROW_USER_ID|cot_url('admin', 'm=payments&id='$this)}">{PAY_ROW_USER_NICKNAME}</a></td>
                            <td>{PAY_ROW_ADATE|date('d.m.Y H:i',$this)}</td>
                            <td class="centerall">
                                <!-- IF {PAY_ROW_AREA} == 'balance' -->+
                                <!-- ELSE -->-
                                <!-- ENDIF -->
                            </td>
                            <td style="text-align: right;">{PAY_ROW_SUMM|number_format($this, 2, '.', ' ')}</td>
                            <td>{PAY_ROW_DESC}</td>
                            <td>{PAY_ROW_AREA}</td>
                            <td>{PAY_ROW_CODE}</td>
                            <td>{PAY_ROW_STATUS}</td>
                        </tr>
                        <!-- END: PAY_ROW -->
                    </tbody>
                </table>
            </div>
            <div class="pagination">
                <ul>{PAGENAV_PREV}{PAGENAV_PAGES}{PAGENAV_NEXT}</ul>
            </div>
        </div>
    </div>
</div>

<!-- END: PAYMENTS -->

<!-- BEGIN: PAYOUTS -->
<div class="col-md-12">
    <div class="card card-default">
        <div class="card-header">
            <div class="card-actions">
                <a class="" data-action="collapse"><i class="ti-minus"></i></a>
                <a class="btn-minimize" data-action="expand"><i class="mdi mdi-arrow-expand"></i></a>
                <a class="btn-close" data-action="close"><i class="ti-close"></i></a>
            </div>
            <h3 class="float-left"><i class="mdi mdi-face"></i> {PHP.L.Users}</h3>
        </div>
        <div class="card-body collapse show">
            <div class="table-responsive">
                <table class="table table-bordered table-striped">
                    <thead>
                        <tr>
                            <th>{PHP.L.User}</th>
                            <th>{PHP.L.payments_summ}</th>
                            <th>{PHP.L.Description}</th>
                            <th>{PHP.L.Date}</th>
                            <th>{PHP.L.Status}</th>
                            <th>{PHP.L.Action}</th>
                        </tr>
                    </thead>
                    <!-- BEGIN: PAYOUT_ROW -->
                    <tr>
                        <td>{PAYOUT_ROW_USER_NAME}</td>
                        <td>{PAYOUT_ROW_SUMM}</td>
                        <td>{PAYOUT_ROW_DETAILS}</td>
                        <td>
                            <!-- IF {PAYOUT_ROW_DATE} > 0 -->{PAYOUT_ROW_DATE|cot_date('d.m.Y H:i',$this)}
                            <!-- ELSE -->&mdash;
                            <!-- ENDIF -->
                        </td>
                        <td>{PAYOUT_ROW_LOCALSTATUS}</td>
                        <td>
                            <!-- IF {PAYOUT_ROW_STATUS} == 'process' -->
                            <a href="{PAYOUT_ROW_DONE_URL}">{PHP.L.Confirm}</a>
                            <a href="{PAYOUT_ROW_CANCEL_URL}">{PHP.L.Cancel}</a>
                            <!-- ENDIF -->
                        </td>
                    </tr>
                    <!-- END: PAYOUT_ROW -->
                </table>
            </div>
        </div>
    </div>
</div>
<!-- END: PAYOUTS -->

<!-- BEGIN: TRANSFERS -->
<div class="col-md-12">
    <div class="card card-default">
        <div class="card-header">
            <div class="card-actions">
                <a class="" data-action="collapse"><i class="ti-minus"></i></a>
                <a class="btn-minimize" data-action="expand"><i class="mdi mdi-arrow-expand"></i></a>
                <a class="btn-close" data-action="close"><i class="ti-close"></i></a>
            </div>
            <h3 class="float-left"><i class="mdi mdi-face"></i> {PHP.L.Users}</h3>
        </div>
        <div class="card-body collapse show">
            <div class="table-responsive">
                <table class="table table-bordered table-striped">
                    <thead>
                        <tr>
                            <th>{PHP.L.payments_balance_transfers_from}</th>
                            <th>{PHP.L.payments_balance_transfers_for}</th>
                            <th>{PHP.L.payments_summ}</th>
                            <th>{PHP.L.Description}</th>
                            <th>{PHP.L.Date}</th>
                            <th>{PHP.L.Done}</th>
                            <th>{PHP.L.Status}</th>
                            <th>{PHP.L.Action}</th>
                        </tr>
                    </thead>
                    <!-- BEGIN: TRANSFER_ROW -->
                    <tr>
                        <td><a href="{TRANSFER_ROW_FROM_DETAILSLINK}">{TRANSFER_ROW_FROM_FULL_NAME}</a></td>
                        <td><a href="{TRANSFER_ROW_FOR_DETAILSLINK}">{TRANSFER_ROW_FOR_FULL_NAME}</a></td>
                        <td>{TRANSFER_ROW_SUMM}</td>
                        <td>{TRANSFER_ROW_COMMENT}</td>
                        <td>{TRANSFER_ROW_DATE|cot_date('d.m.Y H:i',$this)}</td>
                        <td>
                            <!-- IF {TRANSFER_ROW_DONE} > 0 -->{TRANSFER_ROW_DONE|cot_date('d.m.Y H:i',$this)}
                            <!-- ELSE -->&mdash;
                            <!-- ENDIF -->
                        </td>
                        <td>{TRANSFER_ROW_LOCALSTATUS}</td>
                        <td>
                            <!-- IF {TRANSFER_ROW_STATUS} == 'process' -->
                            <a href="{TRANSFER_ROW_DONE_URL}">{PHP.L.Confirm}</a>
                            <a href="{TRANSFER_ROW_CANCEL_URL}">{PHP.L.Cancel}</a>
                            <!-- ENDIF -->
                        </td>
                    </tr>
                    <!-- END: TRANSFER_ROW -->
                </table>
            </div>
        </div>
    </div>
</div>
<!-- END: TRANSFERS -->

<!-- END: MAIN -->
