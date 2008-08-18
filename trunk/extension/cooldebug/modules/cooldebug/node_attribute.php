<?php
include_once( 'kernel/common/template.php' );

$Module =& $Params['Module'];
$NodeID = $Params['NodeID'];
$LevelDeep = $Params['LevelDeep'];
if ( !is_numeric( $NodeID ) or $NodeID==15)
$NodeID = NULL;

$tpl =& templateInit();
$tpl->setVariable( 'node_id', $NodeID );
$tpl->setVariable( 'level_deep', $LevelDeep );

$Result = array();
$Result['content'] =& $tpl->fetch( 'design:cooldebug/node_attribute.tpl' );
header('Content-Type: text/html; charset=UTF-8');
$Result['path'] = array( array( 'url' => false,
'text' => ezi18n( 'extension/cooldebug', 'Node tree browser' ) ) );
?>
