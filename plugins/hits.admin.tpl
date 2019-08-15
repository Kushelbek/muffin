<!-- BEGIN: MAIN -->
<div class="col-md-12">
    <h2><i class="mdi mdi-eye"></i> {PHP.L.Hits}</h2>

    <!-- BEGIN: YEAR_OR_MONTH -->
    <div class="row">
        <!-- BEGIN: ROW -->
        <div class="col-md-3 col-sm-12">
            <h5><i class="mdi mdi-calendar-multiple"></i> {PHP.v}</h5>
            <div class="card">
                <div class="card-body">
                    <h4 class="card-title">{ADMIN_HITS_ROW_DAY}</h4>
                    <div class="text-right"> <span class="text-muted">{PHP.L.Hits}</span>
                        <h1 class="font-light">{ADMIN_HITS_ROW_HITS} ({ADMIN_HITS_ROW_PERCENTBAR}%)</h1>
                    </div>
                    <span class="text-success">{ADMIN_HITS_ROW_PERCENTBAR}%</span>
                    <div class="progress">
                        <div class="progress-bar bg-success" role="progressbar" style="width: {ADMIN_HITS_ROW_PERCENTBAR}%; height: 6px;" aria-valuenow="{ADMIN_HITS_ROW_PERCENTBAR}" aria-valuemin="0" aria-valuemax="100"></div>
                    </div>
                </div>
            </div>
        </div>
        <!-- END: ROW -->
    </div>
    <!-- END: YEAR_OR_MONTH -->
    <!-- BEGIN: DEFAULT -->
    <div class="card">
        <div class="card-body">
            <ul class="nav nav-tabs customtab" role="tablist">
                <li class="nav-item"> <a class="nav-link active show" data-toggle="tab" href="#year" role="tab" aria-selected="true"><span class="hidden-sm-up"><i data-icon="N" class="linea-icon linea-software"></i></span> <span class="hidden-xs-down">{PHP.L.hits_byyear}</span></a> </li>
                <li class="nav-item"> <a class="nav-link" data-toggle="tab" href="#month" role="tab" aria-selected="false"><span class="hidden-sm-up"><i data-icon="O" class="linea-icon linea-software"></i></span> <span class="hidden-xs-down">{PHP.L.hits_bymonth}</span></a> </li>
                <li class="nav-item"> <a class="nav-link" data-toggle="tab" href="#week" role="tab" aria-selected="false"><span class="hidden-sm-up"><i data-icon="P" class="linea-icon linea-software"></i></span> <span class="hidden-xs-down">{PHP.L.hits_byweek}</span></a> </li>
            </ul>
        </div>
    </div>
    <div class="tab-content">
        <div class="tab-pane active show" id="year" role="tabpanel">
            <div class="p-20">
                <h3><i class="mdi mdi-calendar-multiple"></i> {PHP.L.hits_byyear}</h3>
                <div class="row">
                    <!-- BEGIN: ROW_YEAR -->
                    <div class="col-md-3 col-sm-12">
                        <div class="card">
                            <div class="card-body">
                                <h4 class="card-title"><a href="{ADMIN_HITS_ROW_YEAR_URL}">{ADMIN_HITS_ROW_YEAR}</a></h4>
                                <div class="text-right"> <span class="text-muted">{PHP.L.Hits}</span>
                                    <h1 class="font-light"> {ADMIN_HITS_ROW_YEAR_HITS}</h1>
                                </div>
                                <span class="text-success">{ADMIN_HITS_ROW_YEAR_PERCENTBAR}%</span>
                                <div class="progress">
                                    <div class="progress-bar bg-success" role="progressbar" style="width: {ADMIN_HITS_ROW_YEAR_PERCENTBAR}%; height: 6px;" aria-valuenow="{ADMIN_HITS_ROW_YEAR_PERCENTBAR}" aria-valuemin="0" aria-valuemax="100"></div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- END: ROW_YEAR -->
                </div>
            </div>
        </div>

        <div class="tab-pane p-20" id="month" role="tabpanel">
            <h3><i class="mdi mdi-calendar-multiple"></i> {PHP.L.hits_bymonth}:</h3>
            <div class="row">
                <!-- BEGIN: ROW_MONTH -->
                <div class="col-md-3 col-sm-12">
                    <div class="card">
                        <div class="card-body">
                            <h4 class="card-title"><a href="{ADMIN_HITS_ROW_MONTH_URL}">{ADMIN_HITS_ROW_MONTH}</a></h4>
                            <div class="text-right"> <span class="text-muted">{PHP.L.Hits}</span>
                                <h1 class="font-light"> {ADMIN_HITS_ROW_MONTH_HITS}</h1>
                            </div>
                            <span class="text-success">{ADMIN_HITS_ROW_MONTH_PERCENTBAR}%</span>
                            <div class="progress">
                                <div class="progress-bar bg-success" role="progressbar" style="width: {ADMIN_HITS_ROW_MONTH_PERCENTBAR}%; height: 6px;" aria-valuenow="{ADMIN_HITS_ROW_MONTH_PERCENTBAR}" aria-valuemin="0" aria-valuemax="100"></div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- END: ROW_MONTH -->
            </div>
        </div>
        <div class="tab-pane p-20" id="week" role="tabpanel">
            <h3><i class="mdi mdi-calendar-multiple"></i> {PHP.L.hits_byweek}:</h3>
            <div class="row">
                <!-- BEGIN: ROW_WEEK -->
                <div class="col-md-3 col-sm-12">
                    <div class="card">
                        <div class="card-body">
                            <h4 class="card-title">{ADMIN_HITS_ROW_WEEK}</h4>
                            <div class="text-right"> <span class="text-muted">{PHP.L.Hits}</span>
                                <h1 class="font-light"> {ADMIN_HITS_ROW_WEEK_HITS}</h1>
                            </div>
                            <span class="text-success">{ADMIN_HITS_ROW_WEEK_PERCENTBAR}%</span>
                            <div class="progress">
                                <div class="progress-bar bg-success" role="progressbar" style="width: {ADMIN_HITS_ROW_WEEK_PERCENTBAR}%; height: 6px;" aria-valuenow="{ADMIN_HITS_ROW_WEEK_PERCENTBAR}" aria-valuemin="0" aria-valuemax="100"></div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- END: ROW_WEEK -->
            </div>
        </div>
    </div>
    <!-- END: DEFAULT -->
    <!-- IF {ADMIN_HITS_MAXHITS} -->
    <div class="alert alert-info">{ADMIN_HITS_MAXHITS}</div>
    <!-- ENDIF -->
</div>
<!-- END: MAIN -->
