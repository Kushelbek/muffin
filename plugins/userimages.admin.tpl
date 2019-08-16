<!-- BEGIN: MAIN -->
<div class="col-md-12">
    {FILE "{PHP.cfg.themes_dir}/admin/{PHP.cfg.admintheme}/warnings.tpl"}
    <div class="card">
        <div class="card-body">
            <h5><i class="icon-picture"></i> {PHP.L.userimages_title}</h5>
            <div class="table-responsive">
                <table class="table table-bordered table-hover">
                    <thead>
                        <tr>
                            <th>{PHP.L.Code}</th>
                            <th>{PHP.L.userimages_width}</th>
                            <th>{PHP.L.userimages_height}</th>
                            <th>{PHP.L.userimages_cropratio}</th>
                            <th></th>
                        </tr>
                    </thead>
                    <tbody>
                        <!-- BEGIN: USERIMG_LIST -->
                        <form action="{EDIT_URL}" method="post">
                            <tr>
                                <td>{CODE}</td>
                                <td><input  class="form-control" type="text" name="userimg_width" size="10" value="{WIDTH}" /> px</td>
                                <td><input  class="form-control" type="text" name="userimg_height" size="10" value="{HEIGHT}" /> px</td>
                                <td>
                                    <select class="form-control custom-select" name="userimg_crop">
                                        <option value="">{PHP.L.userimages_cropnone}</option>
                                        <option<!-- IF {CROP}=='fit' --> selected="selected"
                                            <!-- ENDIF --> value="fit">{PHP.L.userimages_cropfit}</option>
                                            <option<!-- IF {CROP}=='1:1' --> selected="selected"
                                                <!-- ENDIF --> value="1:1">1:1</option>
                                                <option<!-- IF {CROP}=='1:2' --> selected="selected"
                                                    <!-- ENDIF --> value="1:2">1:2</option>
                                                    <option<!-- IF {CROP}=='2:3' --> selected="selected"
                                                        <!-- ENDIF --> value="2:3">2:3</option>
                                                        <option<!-- IF {CROP}=='3:4' --> selected="selected"
                                                            <!-- ENDIF --> value="3:4">3:4</option>
                                                            <option<!-- IF {CROP}=='4:5' --> selected="selected"
                                                                <!-- ENDIF --> value="4:5">4:5</option>
                                                                <option<!-- IF {CROP}=='5:6' --> selected="selected"
                                                                    <!-- ENDIF --> value="5:6">5:6</option>
                                                                    <option<!-- IF {CROP}=='2:1' --> selected="selected"
                                                                        <!-- ENDIF --> value="2:1">2:1</option>
                                                                        <option<!-- IF {CROP}=='3:2' --> selected="selected"
                                                                            <!-- ENDIF --> value="3:2">3:2</option>
                                                                            <option<!-- IF {CROP}=='4:3' --> selected="selected"
                                                                                <!-- ENDIF --> value="4:3">4:3</option>
                                                                                <option<!-- IF {CROP}=='5:4' --> selected="selected"
                                                                                    <!-- ENDIF --> value="5:4">5:4</option>
                                                                                    <option<!-- IF {CROP}=='6:5' --> selected="selected"
                                                                                        <!-- ENDIF --> value="6:5">6:5</option>
                                                                                        <option<!-- IF {CROP}=='16:9' --> selected="selected"
                                                                                            <!-- ENDIF --> value="16:9">16:9</option>
                                                                                            <option<!-- IF {CROP}=='16:10' --> selected="selected"
                                                                                                <!-- ENDIF --> value="16:10">16:10</option>
                                    </select>
                                </td>
                                <td>
                                    <div class="button-group item-control">
                                        <button class="btn btn-primary " type="submit"><i class="mdi mdi-reload"></i> <span>{PHP.L.Update}</span></button>
                                        <a class="btn btn-danger" href="{CODE|cot_url('admin','m=other&p=userimages&a=remove&code=$this')}"><i class="mdi mdi-delete"></i> {PHP.L.Delete}</a>
                                    </div>
                                </td>
                            </tr>
                        </form>
                        <!-- END: USERIMG_LIST -->
                    </tbody>
                    <tfoot>
                        <form action="{PHP|cot_url('admin','m=other&p=userimages&a=add')}" method="post">
                            <tr>
                                <td><strong>{PHP.L.userimages_addnew}:</strong> <input  class="form-control" type="text" name="userimg_code" size="30" /></td>
                                <td><input  class="form-control" type="text" name="userimg_width" size="10" /> px</td>
                                <td><input  class="form-control" type="text" name="userimg_height" size="10" /> px</td>
                                <td>
                                    <select class="form-control custom-select" name="userimg_crop">
                                        <option value="">{PHP.L.userimages_cropnone}</option>
                                        <option value="fit">{PHP.L.userimages_cropfit}</option>
                                        <option value="1:1">1:1</option>
                                        <option value="1:2">1:2</option>
                                        <option value="2:3">2:3</option>
                                        <option value="3:4">3:4</option>
                                        <option value="4:5">4:5</option>
                                        <option value="5:6">5:6</option>
                                        <option value="2:1">2:1</option>
                                        <option value="3:2">3:2</option>
                                        <option value="4:3">4:3</option>
                                        <option value="5:4">5:4</option>
                                        <option value="6:5">6:5</option>
                                        <option value="16:9">16:9</option>
                                        <option value="16:10">16:10</option>
                                    </select>
                                </td>
                                <td class="action centerall">
                                    <button type="submit" class="btn btn-primary"><i class="mdi mdi-plus"></i> <span>{PHP.L.Add}</span></button>
                                </td>
                            <tr>
                        </form>
                    </tfoot>
                </table>
            </div>
        </div>
    </div>
</div>
<!-- END: MAIN -->
