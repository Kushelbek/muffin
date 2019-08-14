<!-- BEGIN: MAIN -->
<div class="col-md-12">
	{FILE "{PHP.cfg.themes_dir}/admin/{PHP.cfg.admintheme}/warnings.tpl"}
	<div class="card">
		<div class="card-body">
			<h5><i class="mdi mdi-hexagon-multiple"></i> {PHP.L.adm_extrafields}</h5>

			<!-- BEGIN: TABLELIST -->
			<div class="table-responsive">
				<table class="table table-striped">
					<!-- BEGIN: ROW -->
					<tr>
						<td><img src="<!-- IF {ADMIN_EXTRAFIELDS_ROW_ICO} -->{ADMIN_EXTRAFIELDS_ROW_ICO}<!-- ELSE -->system/admin/img/plugins32.png<!-- ENDIF -->"></td>
						<td>{ADMIN_EXTRAFIELDS_ROW_ITEMNAME}</td>
						<td>{ADMIN_EXTRAFIELDS_ROW_TABLE}</td>
						<td>{ADMIN_EXTRAFIELDS_ROW_TYPE}</td>
						<td>
							<div class="btn-group">
								<a href="{ADMIN_EXTRAFIELDS_ROW_TABLEURL}" class="btn btn-success"><i class="mdi mdi-folder"></i> {PHP.L.Open}</a>
							</div>
						</td>
					</tr>
					<!-- END: ROW -->
				</table>
			</div>
			<div class="button-group item-control">
				<a class="btn btn-success" href="{ADMIN_EXTRAFIELDS_ALLTABLES}">{PHP.L.adm_extrafields_all}</a>
			</div>
			<!-- END: TABLELIST -->

			<!-- BEGIN: TABLE -->
			<form action="{ADMIN_EXTRAFIELDS_URL_FORM_EDIT}" method="post">
				<table class="table table-bordered">
					<thead>
						<tr>
							<th>#</th>
							<th>{PHP.L.extf_Name}</th>
							<th>{PHP.L.extf_Type}</th>
							<th>{PHP.L.adm_extrafield_params}</th>
							<th>{PHP.L.Action}</th>
						</tr>
					</thead>
					<!-- BEGIN: EXTRAFIELDS_ROW -->
					<tr id="ex{ADMIN_EXTRAFIELDS_ROW_ID}">
						<td>
							{ADMIN_EXTRAFIELDS_ROW_ENABLED}
						</td>
						<td>
							{ADMIN_EXTRAFIELDS_ROW_NAME}
							<p>{PHP.L.extf_Description}</p>
							{ADMIN_EXTRAFIELDS_ROW_DESCRIPTION}
							<p>{PHP.L.extf_Base_HTML}</p>
							{ADMIN_EXTRAFIELDS_ROW_HTML}
						</td>
						<td>
							{ADMIN_EXTRAFIELDS_ROW_SELECT}
							<p>{PHP.L.adm_extrafield_parse}</p>
							{ADMIN_EXTRAFIELDS_ROW_PARSE}
							<p>{ADMIN_EXTRAFIELDS_ROW_REQUIRED}{PHP.L.adm_extrafield_required}</p>

						</td>
						<td>
							{ADMIN_EXTRAFIELDS_ROW_PARAMS}
							<p>{PHP.L.adm_extrafield_selectable_values}</p>
							{ADMIN_EXTRAFIELDS_ROW_VARIANTS}
							<p>{PHP.L.adm_extrafield_default}</p>
							{ADMIN_EXTRAFIELDS_ROW_DEFAULT}
						</td>
						<td>
							<a title="{PHP.L.Delete}" href="{ADMIN_EXTRAFIELDS_ROW_DEL_URL}" class="ajax btn btn-success"><i class="mdi mdi-delete"></i> {PHP.L.Delete}</a>
						</td>
					</tr>
					<!-- END: EXTRAFIELDS_ROW -->
					<tr>
						<td class="valid" colspan="5">
							<button type="submit" onclick="location.href='{ADMIN_EXTRAFIELDS_ROW_FORM_URL}'" class="confirm btn btn-success"><i class="mdi mdi-reload"></i> {PHP.L.Update}</button>
						</td>
					</tr>
				</table>
			</form>
			<!-- IF {ADMIN_EXTRAFIELDS_PAGNAV} -->
			<div>
				<ul class="pagination pagination-{PHP.R.admin-config-pagisize}">{ADMIN_EXTRAFIELDS_PAGINATION_PREV}{ADMIN_EXTRAFIELDS_PAGNAV}{ADMIN_EXTRAFIELDS_PAGINATION_NEXT}</ul>
			</div>
			<!-- ENDIF -->
			<p>{PHP.L.Total}: {ADMIN_EXTRAFIELDS_TOTALITEMS}, <span class="lower">{PHP.L.Onpage}:</span> {ADMIN_EXTRAFIELDS_COUNTER_ROW}</p>
		</div>
	</div>
	
	<div class="card">
		<div class="card-body">
			<h5><i class="mdi mdi-plus"></i> {PHP.L.adm_extrafield_new}:</h5>
			<div class="wrapper">
				<form action="{ADMIN_EXTRAFIELDS_URL_FORM_ADD}" method="post">
					<table class="table table-bordered">
						<thead>
							<tr>
								<th class="width40">{PHP.L.extf_Name}</th>
								<th class="width20">{PHP.L.extf_Type}</th>
								<th class="width40">{PHP.L.adm_extrafield_params}</th>
							</tr>
						</thead>
						<tr id="exnew">
							<td>
								{ADMIN_EXTRAFIELDS_NAME}
								<p>{PHP.L.extf_Description}</p>
								{ADMIN_EXTRAFIELDS_DESCRIPTION}
								<p>{PHP.L.extf_Base_HTML}</p>
								{ADMIN_EXTRAFIELDS_HTML}
							</td>
							<td>
								{ADMIN_EXTRAFIELDS_SELECT}
								<p>{PHP.L.adm_extrafield_parse}</p>
								{ADMIN_EXTRAFIELDS_PARSE}
								<p>{ADMIN_EXTRAFIELDS_REQUIRED}{PHP.L.adm_extrafield_required}</p>
							</td>
							<td>
								{ADMIN_EXTRAFIELDS_PARAMS}
								<p>{PHP.L.adm_extrafield_selectable_values}</p>
								{ADMIN_EXTRAFIELDS_VARIANTS}
								<p>{PHP.L.adm_extrafield_default}</p>
								{ADMIN_EXTRAFIELDS_DEFAULT}
							</td>
						</tr>
						<tr>
							<td class="valid" colspan="3">
								<p><input type="checkbox" name="field_noalter" /> {PHP.L.adm_extrafield_noalter}</p>
								<button type="submit" class="btn btn-success"><i class="mdi mdi-plus"></i> {PHP.L.Add}</button>
							</td>
						</tr>
					</table>
				</form>
				<!-- END: TABLE -->
			</div>
		</div>
	</div>
</div>

<script type="text/javascript">
	//<![CDATA[
	var exFLDHELPERS = "{ADMIN_EXTRAFIELDS_TAGS}";
	var exnovars = "{PHP.L.adm_extrafields_help_notused}";
	var exvariants = "{PHP.L.adm_extrafields_help_variants}";
	var exrange = "{PHP.L.adm_extrafields_help_range}";
	var exdata = "{PHP.L.adm_extrafields_help_data}";
	var exregex = "{PHP.L.adm_extrafields_help_regex}";
	var exfile = "{PHP.L.adm_extrafields_help_file}";
	var exseparator = "{PHP.L.adm_extrafields_help_separator}";
	$(document).ready(function() {
		$('.exfldtype').live("change", function() {
			var exParent = $(this).closest('tr');
			var exvalid = $(this).attr('value');
			if (exvalid == 'select' || exvalid == 'radio' || exvalid == 'checklistbox') {
				$(exParent).find('.exfldvariants').attr('title', exvariants);
				$(exParent).find('.exfldvariants').removeAttr("disabled");
			} else {
				$(exParent).find('.exfldvariants').attr('title', exnovars);
				$(exParent).find('.exfldvariants').attr('disabled', 'disabled');

			}
			switch (exvalid) {
				case 'input':
					$(exParent).find('.exfldparams').attr('title', exregex);
					$(exParent).find('.exfldparams').removeAttr("disabled");
					break;
				case 'inputint':
					$(exParent).find('.exfldparams').attr('title', exrange);
					$(exParent).find('.exfldparams').removeAttr("disabled");
					break;
				case 'currency':
					$(exParent).find('.exfldparams').attr('title', exrange);
					$(exParent).find('.exfldparams').removeAttr("disabled");
					break;
				case 'double':
					$(exParent).find('.exfldparams').attr('title', exrange);
					$(exParent).find('.exfldparams').removeAttr("disabled");
					break;
				case 'textarea':
					$(exParent).find('.exfldparams').attr('title', exnovars);
					$(exParent).find('.exfldparams').attr('disabled', 'disabled');
					break;
				case 'select':
					$(exParent).find('.exfldparams').attr('title', exnovars);
					$(exParent).find('.exfldparams').attr('disabled', 'disabled');
					break;
				case 'checkbox':
					$(exParent).find('.exfldparams').attr('title', exnovars);
					$(exParent).find('.exfldparams').attr('disabled', 'disabled');
					break;
				case 'radio':
					$(exParent).find('.exfldparams').attr('title', exnovars);
					$(exParent).find('.exfldparams').attr('disabled', 'disabled');
					break;
				case 'datetime':
					$(exParent).find('.exfldparams').attr('title', exdata);
					$(exParent).find('.exfldparams').removeAttr("disabled");
					break;
				case 'file':
					$(exParent).find('.exfldparams').attr('title', exfile);
					$(exParent).find('.exfldparams').removeAttr("disabled");
					break;
				case 'country':
					$(exParent).find('.exfldparams').attr('title', exnovars);
					$(exParent).find('.exfldparams').attr('disabled', 'disabled');
					break;
				case 'range':
					$(exParent).find('.exfldparams').attr('title', exrange);
					$(exParent).find('.exfldparams').removeAttr("disabled");
					break;
				case 'checklistbox':
					$(exParent).find('.exfldparams').attr('title', exseparator);
					$(exParent).find('.exfldparams').removeAttr("disabled");
					break;
			}
			if ($(exParent).find('.exfldname').attr('value') != '') {
				var exhelper = $(exParent).find('.exfldname').attr('value').toUpperCase();
				exhelper = exFLDHELPERS.replace(/XXXXX/g, exhelper);
				$(exParent).find('.exfldname').attr('title', exhelper);
				$(exParent).find('.exflddesc').attr('title', exhelper);
			} else {
				$(exParent).find('.exfldname').removeAttr("title");
				$(exParent).find('.exflddesc').removeAttr("title");
			}
		});
		$(".exfldtype").change();
	});;
	//]]>

</script>
<!-- END: MAIN -->
