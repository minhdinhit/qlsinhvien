<?php 
    $page = 'ql-sinhvien';
    if (isset($_GET['page'])){
        $page = $_GET['page'];
    }
?>
<section class="menu-area">
    <h3 class="title-area"><span class="fa fa-bars"></span>&nbsp;Danh mục</h3>
    <ul class="parent-menu">
        <li <?=$page=='ql-hedaotao' ? 'class="active"':''?>><a href="<?=base_url('ql-hedaotao')?>">Hệ đào tạo</a></li>
        <li <?=$page=='ql-khoahoc' ? 'class="active"':''?>><a href="<?=base_url('ql-khoahoc')?>">Khóa học</a></li>
        <li <?=$page=='ql-khoa' ? 'class="active"':''?>><a href="<?=base_url('ql-khoa')?>">Khoa</a></li>
        <li <?=$page=='ql-nganhhoc' ? 'class="active"':''?>><a href="<?=base_url('ql-nganhhoc')?>">Ngành học</a></li>
        <li <?=$page=='ql-lop' ? 'class="active"':''?>><a href="<?=base_url('ql-lop')?>">Lớp học</a></li>
        <li <?=$page=='ql-sinhvien' ? 'class="active"':''?>><a href="<?=base_url('ql-sinhvien')?>">Sinh viên</a></li>
    </ul>
</section>
<section class="menu-area">
    <h3 class="title-area"><span class="fa fa-cog"></span>&nbsp;Hệ thống</h3>
    <ul class="parent-menu">
        <li><a href="">Menu</a></li>
        <li><a href="">Menu</a></li>
    </ul>
</section>