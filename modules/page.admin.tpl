<!-- BEGIN: MAIN -->
			<script type="text/javascript">
				$(document).ready(function()
				{
					$('.moreinfo').hide();
					$(".mor_info_on_off").click(function()
					{
						var kk = $(this).attr('id');
						$('#'+kk).children('.moreinfo').slideToggle(100);
					});
				});
			</script>


				<div class="col-md-12">
{FILE "{PHP.cfg.themes_dir}/admin/{PHP.cfg.admintheme}/warnings.tpl"}
					<div class="card">
						<div class="card-body">
                            <h5>{PHP.L.Pages} ({ADMIN_PAGE_TOTALDBPAGES})</h5>
							<div class="button-group item-control">
								<a title="{PHP.L.Configuration}" href="{ADMIN_PAGE_URL_CONFIG}" class="btn btn-primary"><i class="mdi mdi-settings"></i> {PHP.L.Configuration}</a>
								<a href="{ADMIN_PAGE_URL_EXTRAFIELDS}" class="btn btn-primary"><i class="mdi mdi-hexagon-multiple"></i> {PHP.L.adm_extrafields}</a>
								<a href="{ADMIN_PAGE_URL_STRUCTURE}" class="btn btn-primary"><i class="mdi mdi-view-module"></i> {PHP.L.Categories}</a>
								<a href="{ADMIN_PAGE_URL_ADD}" class="btn btn-primary"><i class="mdi mdi-plus"></i> {PHP.L.page_addtitle}</a>
							</div>
						</div>
					</div>

					<div class="card">
						<div class="card-body">
                            <h5>{PHP.L.Pages}:</h5>
							<form id="form_valqueue" name="form_valqueue" method="post" action="{ADMIN_PAGE_FORM_URL}">
                                <div class="table-responsive">
								<table class="table table-bordered table-hover">
									<thead>
										<tr>
											<th>
												<input type="hidden" name="paction" value="" />
												<!-- IF {ADMIN_PAGE_TOTALITEMS} > 1 -->{PHP.L.adm_sort} {ADMIN_PAGE_ORDER} {ADMIN_PAGE_WAY}<!-- ENDIF --> {PHP.L.Show} {ADMIN_PAGE_FILTER}
												<button name="paction" type="submit" onclick="this.form.paction.value=this.value" class="btn btn-primary"><i class="fa fa-filter"></i> {PHP.L.Filter}</button>
											</th>
										</tr>
										<tr>
											<th>
												<!-- IF {PHP.cfg.jquery} -->
												<input name="allchek" class="filled-in" type="checkbox" value="" onclick="$('.checkbox').attr('checked', this.checked);" id="basic_checkbox_all"/>
                                                <label for="basic_checkbox_all"></label>
												<!-- ENDIF -->
											</th>
											<th>{PHP.L.Id}</th>
											<th>{PHP.L.Title}</th>
											<th>{PHP.L.Action}</th>
										</tr>
									</thead>
<!-- BEGIN: PAGE_ROW -->
									<tr>
										<td class="{ADMIN_PAGE_ODDEVEN}">
                                            <input type="checkbox" id="basic_checkbox_[{ADMIN_PAGE_ID}]" class="filled-in checkbox">
                                    <label for="basic_checkbox_[{ADMIN_PAGE_ID}]"></label>
										</td>
										<td class="{ADMIN_PAGE_ODDEVEN}">
											{ADMIN_PAGE_ID}
										</td>
										<td class="{ADMIN_PAGE_ODDEVEN}">
											<div id="mor_{PHP.ii}" class='mor_info_on_off'>
												<span class="strong" style="cursor:hand;">{ADMIN_PAGE_SHORTTITLE} ({ADMIN_PAGE_COUNT})</span>
												<div class="moreinfo">
													<hr />
													<table class="flat">
														<tr>
															<td>{PHP.L.Category}:</td>
															<td>{ADMIN_PAGE_CATPATH_SHORT}</td>
														</tr>
														<tr>
															<td>{PHP.L.Description}:</td>
															<td>{ADMIN_PAGE_DESC}</td>
														</tr>
														<tr>
															<td>{PHP.L.Text}:</td>
															<td>{ADMIN_PAGE_TEXT}</td>
														</tr>
													</table>
												</div>
											</div>
										</td>
										<td class="{ADMIN_PAGE_ODDEVEN}">
											<div class="button-group item-control">
<!-- IF {PHP.row.page_state} == 1 -->
												<a data-toggle="tooltip" data-placement="top" data-original-title="{PHP.L.Validate}" title="{PHP.L.Validate}" href="{ADMIN_PAGE_URL_FOR_VALIDATED}" class="btn btn-success"><i class="mdi mdi-playlist-check"></i></a>
<!-- ENDIF -->
												<a data-toggle="tooltip" data-placement="top" data-original-title="{PHP.L.Delete}" title="{PHP.L.Delete}" href="{ADMIN_PAGE_URL_FOR_DELETED}" class="btn btn-danger"><i class="mdi mdi-delete"></i></a>
												<a data-toggle="tooltip" data-placement="top" data-original-title="{PHP.L.Open}" title="{PHP.L.Open}" href="{ADMIN_PAGE_ID_URL}" target="_blank" class="btn btn-success"><i class="mdi mdi-folder"></i></a>
												<a data-toggle="tooltip" data-placement="top" data-original-title="{PHP.L.Edit}" title="{PHP.L.Edit}" href="{ADMIN_PAGE_URL_FOR_EDIT}" target="_blank" class="btn btn-success"><i class="mdi mdi-feather"></i></a>
											</div>
										</td>
									</tr>
<!-- END: PAGE_ROW -->
<!-- IF {PHP.is_row_empty} -->
									<tr>
										<td>{PHP.L.None}</td>
									</tr>
<!-- ENDIF -->
									<tr>
										<td>
											<div class="button-group item-control">
<!-- IF {PHP.filter} != {PHP.L.adm_validated} -->
												<button name="paction" type="submit" onclick="this.form.paction.value=this.value" class="confirm btn btn-primary">
                                                    <i class="mdi mdi-playlist-check"></i><span>{PHP.L.Validate}</span>
												</button>
<!-- ENDIF -->
												<button name="paction" type="submit" onclick="this.form.paction.value=this.value" class="btn btn-danger"><i class="mdi mdi-delete"></i> <span>{PHP.L.Delete}</span></button>
											</div>
										</td>
									</tr>
								</table>
                                </div>
								<p>{PHP.L.Total} <span class="badge badge-info">&nbsp;&nbsp;{ADMIN_PAGE_TOTALITEMS}&nbsp;&nbsp;</span> {PHP.L.Onpage} <span class="badge badge-info">&nbsp;&nbsp;{ADMIN_PAGE_ON_PAGE}&nbsp;&nbsp;</span> </p>
<!-- IF {ADMIN_PAGE_PAGNAV} -->
								<div class="text-{PHP.R.admin-config-pagialign}">
									<ul class="pagination pagination-{PHP.R.admin-config-pagisize}">{ADMIN_PAGE_PAGINATION_PREV}{ADMIN_PAGE_PAGNAV}{ADMIN_PAGE_PAGINATION_NEXT}</ul>
								</div>
<!-- ENDIF -->
							</form>
						</div>
					</div>
				</div>
<!-- END: MAIN -->