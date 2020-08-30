<?php
    date_default_timezone_set('Asia/Ho_chi_minh');

    $config['host']     ='localhost';
    $config['user']     ='root';
    $config['password'] ='';
    $config['refix']    ='db_';
    $config['database'] ='ql_sinhvien';

    function lang($str){
        echo $str;
    }
    function timestamp(){
        return date('d-m-Y H:i');
    }
    function randId($str=''){
        return $str.rand(1000,9999);
    }
    function tojson($data){
        $json = json_encode($data);
        $json = str_replace('"',"'",$json);
        return $json;
    }
?>