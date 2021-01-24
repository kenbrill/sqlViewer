<?php

$admin_option_defs = array();

$admin_option_defs['Administration']['sqlViewer'] = array(
    //Icon name. Available icons are located in ./themes/default/images
    'Administration',
    //Link name label
    'LBL_SQLVIEWER_LINK_NAME',
    //Link description label
    'LBL_SQLVIEWER_LINK_DESCRIPTION',
    //Link URL - For Sidecar modules
    './index.php?module=Administration&action=sqlViewer'
);
