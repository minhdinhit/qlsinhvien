<?php
    include ('database.php');
    include ('../config.php');

    $d       = new database ($config);
    $post    = $_POST['data'];
    $type    = $post['type'];
    $table   = $post['table'];
    $payload = $post['payload'];

    if ($type == 'add'){
        $payload['ngay_tao']=timestamp();
        $d->setTable($table);
        $d->insert($payload);
    }
    else if ($type == 'delete'){
        $d->setTable($table);
        $d->setWhere($payload);
        $d->delete();
    }
    else if ($type == 'update'){
        $payload['ngay_tao']=timestamp();
        $d->setTable($table);
        $d->setWhere($payload['where']);
        unset($payload['where']);
        $d->update($payload);
    }