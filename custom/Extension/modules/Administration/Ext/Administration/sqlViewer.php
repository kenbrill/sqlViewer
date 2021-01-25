<?php
$exists = false;
$count = 0;
foreach ($admin_group_header as $header) {
    if ($header[0] == 'LBL_ADMINISTRATION_HOME_TITLE') {
        $exists = true;
        $admin_group_header[$count][3]['Administration']['sqlViewer'] = array(
            'EmailMan',
            'LBL_SQLVIEWER_LINK_NAME',
            'LBL_SQLVIEWER_LINK_DESCRIPTION',
            './index.php?module=Administration&action=sqlViewer'
        );
        break;
    }
    $count++;
}
