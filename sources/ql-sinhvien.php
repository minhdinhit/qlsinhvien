<br>
<section class="form">
    <form action="" method="post">
        <table class="">
            <tr>
                <th>Mã sinh viên</th>
                <td>
                    <input type="hidden" id="id">
                    <input id="ma_sv" type="text" class="form-control">
                </td>
                <td>&nbsp;&nbsp;</td>
                <th>Quê quán</th>
                <td>
                    <input id="que_quan" type="text" class="form-control">
                </td>
            </tr>
            <tr>
                <th>Họ tên</th>
                <td>
                    <input id="ho_ten" type="text" class="form-control">
                </td>
                <td>&nbsp;&nbsp;</td>
                <th>Dân tộc</th>
                <td>
                    <input id="dan_toc" type="text" class="form-control">
                </td>
            </tr>
            <tr>
                <th>Ngày sinh</th>
                <td>
                    <input id="ngay_sinh" type="date" data-date-format="DD MMMM YYYY" class="form-control">
                </td>
                <td>&nbsp;&nbsp;</td>
                <th>Tôn giáo</th>
                <td>
                    <input id="ton_giao" type="text" class="form-control">
                </td>
            </tr>
            <tr>
                <th>Điện thoại</th>
                <td>
                    <input id="dien_thoai" type="phone" class="form-control">
                </td>
                <td>&nbsp;&nbsp;</td>
                <th>Họ tên cha</th>
                <td>
                    <input id="hoten_cha" type="text" class="form-control">
                </td>
            </tr>
            <tr>
                <th>Giới tính</th>
                <td>
                    <select name="" id="gioi_tinh" class="form-control">
                        <option value="0">Nam</option>
                        <option value="1">Nữ</option>
                    </select>
                </td>
                <td>&nbsp;&nbsp;</td>
                <th>Họ tên mẹ</th>
                <td>
                    <input id="hoten_me" type="text" class="form-control">
                </td>
            </tr>
            <tr>
                <th>Địa chỉ</th>
                <td>
                    <input id="dia_chi" type="text" class="form-control">
                </td>
                <td>&nbsp;&nbsp;</td>
                <th>Chọn khoa</th>
                <td>
                    <?php 
                        $khoa_hoc = $d->o_fet("select * from #_khoahoc")
                    ?>
                    <select name="" id="ma_khoahoc" class="form-control">
                        <option value="0">Chọn khóa</option>
                        <?php foreach ($khoa_hoc as $item){ ?>
                            <option value="<?=$item['ma_khoahoc']?>"><?=$item['ten_khoahoc']?></option>
                        <?php } ?>
                    </select>
                </td>
            </tr>
            <tr>
                <th>Nơi sinh</th>
                <td>
                    <input id="noi_sinh" type="text" class="form-control">
                </td>
                <td>&nbsp;&nbsp;</td>
                <th>Chọn lớp</th>
                <td>
                    <?php 
                        $lop = $d->o_fet("select * from #_lop")
                    ?>
                    <select name="" id="ma_lop" class="form-control">
                        <option value="0">Chọn lớp</option>
                        <?php foreach ($lop as $item){ ?>
                            <option value="<?=$item['ma_lop']?>"><?=$item['ten_lop']?></option>
                        <?php } ?>
                    </select>
                </td>
            </tr>
            <tr>
                <tr>
                    <th></th>
                    <td class="02">
                        <button style="width:49%" class="btn btn-danger">Reset</button>
                        <button style="width:49%" class="btn btn-primary">Thêm</button>
                    </td>
                </tr>
            </tr>
        </table>
    </form>
    <br>
    <?php 
        $data = $d->o_fet("select * from #_sinhvien order by ho_ten asc");
    ?>
    <table class="data-table" border>
        <thead>
            <tr>
                <th>Mã SV</th>
                <th>Họ tên</th>
                <th>Ngày sinh</th>
                <th>Ngày tạo</th>
                <th>Todo</th>
            </tr>
        </thead>
        <tbody>
            <?php 
                foreach ($data as $item){
            ?>
                <tr>
                    <td><?=$item['ma_sv']?></td>
                    <td><?=$item['ho_ten']?></td>
                    <td><?=$item['ngay_sinh']?></td>
                    <td><?=$item['ngay_tao']?></td>
                    <td>
                        <button onclick="onUpdate(<?=tojson($item)?>)"  class="btn btn-primary"><span class="pointer fa fa-edit"></span></button>
                        <button onclick="onDelete('<?=$item['id']?>')" class="btn btn-danger"><span class="pointer fa fa-trash"></span></button>
                    </td>
                </tr>
            <?php 
                } 
            ?>    
        </tbody>
    </table>
</section>

<script>
    $('form').submit(function (e) { 
        e.preventDefault();
        var id = $('#id').val();
        var payload = {
            'id'         :id,
            'ma_sv'      :$('#ma_sv').val(),
            'ho_ten'     :$('#ho_ten').val(),
            'ngay_sinh'  :$('#ngay_sinh').val(),
            'gioi_tinh'  :$('#gioi_tinh').val(),
            'dien_thoai' :$('#dien_thoai').val(),
            'dia_chi'    :$('#dia_chi').val(),
            'noi_sinh'   :$('#noi_sinh').val(),
            'que_quan'   :$('#que_quan').val(),
            'dan_toc'    :$('#dan_toc').val(),
            'ton_giao'   :$('#ton_giao').val(),
            'hoten_cha'  :$('#hoten_cha').val(),
            'hoten_me'   :$('#hoten_me').val(),
            'ma_khoahoc' :$('#ma_khoahoc').val(),
            'ma_lop'     :$('#ma_lop').val(),
        };
        if (id>0){
            payload['where'] = {'id':payload.id};
            postData('update','db_sinhvien',payload,true);
        }else{
            postData('add','db_sinhvien',payload,true);
        }
    });
    function onDelete(id){
        var payload ={
            'id':id
        };
        if (confirm('Xóa khỏi danh sách ?')){
            postData('delete','db_sinhvien',payload,true);
        }
    }
    function onUpdate(json){
        $('#id').val(json.id);
        $('#ma_sv').val(json.ma_sv);
        $('#ho_ten').val(json.ho_ten);
        $('#ngay_sinh').val(json.ngay_sinh);
        $('#dien_thoai').val(json.dien_thoai);
        $('#gioi_tinh').val(json.gioi_tinh);
        $('#dia_chi').val(json.dia_chi);
        $('#noi_sinh').val(json.noi_sinh);
        $('#que_quan').val(json.que_quan);
        $('#dan_toc').val(json.dan_toc);
        $('#ton_giao').val(json.ton_giao);
        $('#hoten_cha').val(json.hoten_cha);
        $('#hoten_me').val(json.hoten_me);
        $('#ma_khoahoc').val(json.ma_khoahoc);
        $('#ma_lop').val(json.ma_lop);
    }
</script>