<!-- BEGIN: MAIN -->

<!-- BEGIN: STAT -->
	<div class="col-md-12 p-r-40 m-t-30 m-b-30">
		<h5 class="card-title"><i class="mdi mdi-chart-pie"></i> {PHP.L.hits_hits}</h5>
		<div class="card-body">
<!-- BEGIN: ADMIN_HOME_ROW -->
            <h5 class="m-t-30">{ADMIN_HOME_DAY}<span class="pull-right">  | {ADMIN_HOME_PERCENTBAR}%</span><span class="pull-right">{ADMIN_HOME_HITS|cot_declension($this,'Hits')}&nbsp;</span></h5>
                                        <div class="progress ">
						<div class="progress-bar active progress-bar-striped bg-danger" style="width: {ADMIN_HOME_PERCENTBAR}%; height:6px;" role="progressbar"> <span class="sr-only">{ADMIN_HOME_PERCENTBAR}% Complete</span> </div>
                                        </div>
<!-- END: ADMIN_HOME_ROW -->
			<p class="clearfix"><a href="{ADMIN_HOME_MORE_HITS_URL}" class="btn btn-info waves-effect waves-light pull-right m-t-10"><span class="btn-label"><i class="mdi mdi-reply-all"></i></span>{PHP.L.ReadMore}</a></p>
			
		</div>
	</div>
<!-- END: STAT -->

<!-- BEGIN: NOPARSE -->
<!-- BEGIN: ACTIVITY -->
	<div class="col-md-12 p-r-40 m-t-30 m-b-30">
		<h5><i class="fa fa-bar-chart-o"></i> {PHP.L.hits_activity}</h5>
		<div class="card-body">
			<table class="table table-striped">
				<tr>
					<td><a href="{ADMIN_HOME_NEWUSERS_URL}">{PHP.L.home_newusers}</a></td>
					<td class="text-right width20">{ADMIN_HOME_NEWUSERS}</td>
				</tr>
				<tr>
					<td><a href="{ADMIN_HOME_NEWPAGES_URL}">{PHP.L.home_newpages}</a></td>
					<td class="text-right">{ADMIN_HOME_NEWPAGES}</td>
				</tr>
<!-- IF {PHP.cot_modules.forums} -->
				<tr>
					<td><a href="{ADMIN_HOME_NEWTOPICS_URL}">{PHP.L.home_newtopics}</a></td>
					<td class="text-right">{ADMIN_HOME_NEWTOPICS}</td>
				</tr>
				<tr>
					<td><a href="{ADMIN_HOME_NEWPOSTS_URL}">{PHP.L.home_newposts}</a></td>
					<td class="text-right">{ADMIN_HOME_NEWPOSTS}</td>
				</tr>
<!-- ENDIF -->
<!-- IF {PHP.cot_modules.pm} -->
				<tr>
					<td>{PHP.L.home_newpms}</td>
					<td class="text-right">{ADMIN_HOME_NEWPMS}</td>
				</tr>
<!-- ENDIF -->
			</table>
		</div>
	</div>
<!-- END: ACTIVITY -->
<!-- END: NOPARSE -->
<!-- END: MAIN -->