@extends('admin.layouts.app')

@section('title', 'Tambah Data Profil')

@section('content')
<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
  <!-- Content Header (Page header) -->
  <section class="content-header">
    <div class="container-fluid">
      <div class="row mb-2">
        <div class="col-sm-6">
          <h1>Profiles</h1>
        </div>
        <div class="col-sm-6">
          <ol class="breadcrumb float-sm-right">
            <li class="breadcrumb-item"><small><strong>Content</strong></small></li>
            <li class="breadcrumb-item"><small><strong>Profiles</strong></small></li>
            <li class="breadcrumb-item text-green"><small><strong>Add</strong></small></li>
          </ol>
        </div>
      </div>
    </div><!-- /.container-fluid -->
  </section>

      <!-- Main content -->
      <section class="content">
        <div class="container-fluid">
          <div class="row">
            <!-- left column -->
            <div class="col-md-12">
              <!-- jquery validation -->
              <div class="card card-success">
                <div class="card-header">
                  <h3 class="card-title"><strong>Tambahkan Data Profil</strong></h3>
                </div>
                <!-- /.card-header -->
                <!-- form start -->
                <form id="quickForm" action="{{route('admin.profile.add')}}" method="post" enctype="multipart/form-data">
                  @csrf
                  <div class="card-body">                    
                    <div class="form-group">
                      <label for="">Judul</label>
                      <input type="text" name="title" class="form-control" id="title" placeholder="Masukkan Judul" required>
                    </div>                                                   
                    <div class="form-group">
                      <label for="img">Gambar</label>
                      <div class="custom-file">
                          <input type="file" class="custom-file-input" name="img" id="img">
                          <label class="custom-file-label" for="img">Unggah Gambar</label>
                      </div>
                    </div>   
                    <div class="form-group">
                        <label for="img">File</label>
                        <div class="custom-file">
                            <input type="file" class="custom-file-input" name="file" id="file">
                            <label class="custom-file-label" for="file">Unggah File</label>
                        </div>
                      </div>                  
                    <div class="form-group">
                      <label for="">Deskripsi</label>
                      <textarea name="description" id="description" class="form-control" required></textarea>
                    </div>                    
                    <div class="form-group">
                      <label for="status">Tampilkan</label>
                      <div class="select2-green">
                        <select class="form-control select2bs4" name="status" style="width: 100%;">
                          <option value="show">Ya</option>
                          <option value="hide">Tidak</option>
                        </select>
                      </div>
                    </div>
                  </div>
                  <!-- /.card-body -->
                  <div class="card-footer">
                    <button type="submit" id="submit" class="btn btn-success float-right"><i class="fas fa-plus-square"></i>&nbsp;&nbsp;Tambah</button>
                  </div>
                </form>
              </div>
              <!-- /.card -->
              </div>
            <!--/.col (left) -->
            <!-- right column -->
            <div class="col-md-6">

            </div>
            <!--/.col (right) -->
          </div>
          <!-- /.row -->
        </div><!-- /.container-fluid -->
      </section>
      <!-- /.content -->
</div>
@endsection

@section('top-resource')
<!-- Select2 -->
<link rel="stylesheet" href="{{asset('backend/plugins/select2/css/select2.min.css')}}">
<link rel="stylesheet" href="{{asset('backend/plugins/select2-bootstrap4-theme/select2-bootstrap4.min.css')}}">
@endsection

@section('bottom-resource')
<!-- Select2 -->
<script src="{{asset('backend/plugins/select2/js/select2.full.min.js')}}"></script>
<!-- jquery-validation -->
<script src="{{asset('backend/plugins/jquery-validation/jquery.validate.min.js')}}"></script>
<script src="{{asset('backend/plugins/jquery-validation/additional-methods.min.js')}}"></script>
<script type="text/javascript">
  $(document).ready(function () {
    $('#quickForm').validate({
      rules: {
        name: {
          required: true,
        },
        birthplace: {
          required: true,
        },
        birthday: {
          required: true,
        },
        phone: {
          required: true,
        },
        address: {
          required: true,
        },
      },
      messages: {
        name: {
          required: "&nbsp;"+"Kolom tidak boleh kosong, masukkan nama siswa",
        },
        address: {
          required: "&nbsp;"+"Kolom tidak boleh kosong, masukkan alamat siswa",
        },
        birthplace: {
          required: "&nbsp;"+"Kolom tidak boleh kosong, masukkan tempat lahir siswa",
        },
        birthday: {
          required: "&nbsp;"+"Kolom tidak boleh kosong, masukkan tanggal lahir siswa",
        },
        phone: {
          required: "&nbsp;"+"Kolom tidak boleh kosong, masukkan nomor telepon siswa",
        },
      },
      errorElement: 'span',
      errorPlacement: function (error, element) {
        error.addClass('invalid-feedback');
        element.closest('.form-group').append(error);
      },
      highlight: function (element, errorClass, validClass) {
        $(element).addClass('is-invalid');
      },
      unhighlight: function (element, errorClass, validClass) {
        $(element).removeClass('is-invalid');
      },
      submitHandler: function (form) {
         $('#submit').attr('disabled','disabled');
         form.submit();
      }
    });
  });
</script>

<!-- TinyMCE init -->
<script src="https://cdn.tiny.cloud/1/no-api-key/tinymce/5/tinymce.min.js" referrerpolicy="origin"></script>
<script>
tinymce.init({
  selector: 'textarea',  // change this value according to the HTML    
  height: 600,
  plugins: [
      'advlist autolink link image lists charmap print preview hr anchor pagebreak',
      'searchreplace wordcount visualblocks visualchars code fullscreen insertdatetime media nonbreaking',
      'table emoticons template paste help'
  ],  
  toolbar: 'undo redo | styleselect | bold italic | alignleft aligncenter alignright alignjustify | bullist numlist outdent indent | link | print preview media fullpage | forecolor backcolor emoticons'
});
</script>

<!-- Page script -->
<script>
    $(".custom-file-input").on("change", function () {
        var fileName = $(this).val().split("\\").pop();
        $(this).siblings(".custom-file-label").addClass("selected").html(fileName);
    });
</script>
<script>
  $(function () {
    //Initialize Select2 Elements
    $('.select2').select2()

    //Initialize Select2 Elements
    $('.select2bs4').select2({
      theme: 'bootstrap4'
    })
  });
</script>
@endsection