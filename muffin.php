<?php

defined('COT_CODE') or die('Wrong URL');

// Redefine Pagination

$R['link_pagenav_main'] = '<li><a href="{$url}"{$event}{$rel}>{$num}</a></li>';
$R['link_pagenav_current'] = '<li class="active"><a href="{$url}"{$event}{$rel}>{$num}</a></li>';
$R['link_pagenav_prev'] = '<li class="previous"><a href="{$url}"{$event}{$rel}>'.$L['pagenav_prev'].'</a></li>';
$R['link_pagenav_next'] = '<li class="next"><a href="{$url}"{$event}{$rel}>'.$L['pagenav_next'].'</a></li>';
$R['link_pagenav_first'] = '<li class=""><a href="{$url}"{$event}{$rel}>'.$L['pagenav_first'].'</a></li>';
$R['link_pagenav_last'] = '<li class=""><a href="{$url}"{$event}{$rel}>'.$L['pagenav_last'].'</a></li>';
$R['link_pagenav_gap'] = '<li><span>...</span></li>';

$R['input_text_metatitle'] = '<textarea name="{$name}" rows="2" cols="64" maxlength="255" class="input-block-level">{$value}</textarea>';
$R['input_text_metadesc'] = '<textarea name="{$name}" rows="2" cols="64" maxlength="255" class="input-block-level">{$value}</textarea>';

//Form
$R['input_radio'] = '<input name="{$name}" type="radio" id="{$value}-{$name}" class="with-gap radio-col-deep-purple" value="{$value}"{$checked}{$attrs} /><label for="{$value}-{$name}">{$title}</label>';

$R['input_textarea'] = '<textarea name="{$name}" rows="{$rows}" cols="{$cols}"{$attrs}>{$value}</textarea>{$error}';

$R['input_checkbox'] = '<input type="hidden" name="{$name}" value="{$value_off}" /><label for="{$name}-{$value}"><input type="checkbox" name="{$name}" value="{$value}" {$checked}{$attrs} id="фкф" class="chk-col-green" />{$title}</label>';

$R['input_select'] = '<div class="form-group"><select id="inlineFormCustomSelect" class="custom-select col-12" name="{$name}"{$attrs}>{$options}</select>{$error}</div>';

$R['input_text'] = '<div class="form-group"><input class="form-control col-12" type="text" name="{$name}" value="{$value}" {$attrs} id="{$name}-{$value}" />{$error}</div>';

// Misc
$R['admin_icon_blank'] = '';

// Status indicators
$R['admin_code_missing'] = '<span class="badge badge-danger">'.$L['adm_missing'].'</span>';
$R['admin_code_paused'] = '<span class="badge badge-warning">'.$L['adm_paused'].'</span>';
$R['admin_code_running'] = '<span class="badge badge-success">'.$L['adm_running'].'</span>';
$R['admin_code_partrunning'] = '<span class="badge badge-warning">'.$L['adm_partrunning'].'</span>';
$R['admin_code_notinstalled'] = '<span class="badge badge-danger">'.$L['adm_notinstalled'].'</span>';
$R['admin_code_present'] = '<span class="badge badge-successt">'.$L['adm_present'].'</span>';

//	Template Settings
$R['admin-config-icons'] = '1';	// Display item icons (global: config, extensions, users, other)
$R['admin-config-descs'] = '1';	// Display item descriptions (global: config, extensions, users, other)

// Recent Activities
$R['Recent'] = '14';

// Top Lists @ Home Page
$R['Topbest'] = '10';
$R['Toprecent'] = '10';

// User manager settings

$R['Usermanager'] = '';

//Theme function

function str_level($code) {
    $code = str_replace(".", "<p></p>", $code);
    return $code;
}


