<?php

$manifest = array(
    'key' => '05171967',
    'name' => 'sqlViewer',
    'description' => 'Formats prepared SQL to be readable',
    'author' => 'Kenneth Brill [ken.brill@gmail.com]',
    'version' => '1.0',
    'is_uninstallable' => true,
    'published_date' => '01/24/2021 14:15:12',
    'type' => 'module',
    'readme' => '',
    'icon' => 'sqlViewer.png',
    'remove_tables' => '',
    'uninstall_before_upgrade' => false,
);

$installdefs = array(
    'id' => 'sqlViewer',
    'administration' => array(
        array(
            'from' => '<basepath>/custom/Extension/modules/Administration/Ext/Administration/sqlViewer.php'
        )
    ),
    'language' => array(
        array(
            'from' => '<basepath>/custom/Extension/modules/Administration/Ext/Language/en_us.sqlViewer.php',
            'to_module' => 'Administration',
            'language' =>'en_us'
        )
    ),
    'copy' => array(
        array(
            'from' => '<basepath>/custom/modules/Administration/sqlViewer.php',
            'to' => 'custom/modules/Administration/sqlViewer.php',
        ),
        array(
            'from' => '<basepath>/custom/modules/Administration/sqlViewer.tpl',
            'to' => 'custom/modules/Administration/sqlViewer.tpl',
        ),
    )
);