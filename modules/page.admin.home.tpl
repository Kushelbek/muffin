<!-- BEGIN: MAIN -->
	<h5><i class="mdi mdi-book-open-page-variant"></i> {PHP.L.Pages}</h5>
	<ul class="list-unstyled">
		<li class="list-group-item"><i class="mdi mdi-plus"></i><a href="{ADMIN_HOME_URL}">{PHP.L.adm_valqueue}: <span class="badge badge-info">{ADMIN_HOME_PAGESQUEUED}</span></a></li>
		<li class="list-group-item"><i class="mdi mdi-plus"></i><a href="{PHP|cot_url('page','m=add')}">{PHP.L.Add}</a></li>
		<li class="list-group-item"><i class="mdi mdi-plus"></i><a href="{PHP.db_pages|cot_url('admin','m=extrafields&n=$this')}">{PHP.L.home_ql_b2_2}</a></li>
	</ul>
<!-- END: MAIN -->