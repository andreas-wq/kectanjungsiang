@extends('public.layout.app', ['title' => 'Dashboard'])
@section('meta')
<meta name="description" content="Dashboard" />
<meta name="keywords" content="Diskominfo Subang" />
<meta property="og:title" content="Dashboard" />
<meta property="og:type" content="Dashboard" />
<meta property="og:image" content="{{asset('fontend/images/grid/1.jpg')}}" />
@endsection
@section('content')
<!-- === Page Title === --><section id="page-title" class="page-title page-title-layout1  text-center">
    <div class="bg-img"><img src="{{asset('frontend/images/page-titles/DLH.png')}}" alt="background"></div>
    <div class="container">
        <div class="row">
            <div class="col-sm-12 col-md-12 col-lg-12">
                <h1 class="pagetitle__heading ">DISKETPAN</h1>
            </div><!-- /.col-lg-12 -->
        </div><!-- /.row -->
    </div><!-- /.container -->
</section><!-- /.page-title -->

<!-- === Postingan === -->
<section id="blogGridRightSidebar" class="blog">
    <div class="container">
        <div class="row">
            <div class="col-lg-12 col-12">
                <div class="float-left">
                    <a href="{{route('public.dashboard.list')}}" class="btn btn-success mb-3 "><i class="fas fa-arrow-left"></i> Kembali</a>
                </div>
                <!-- small box -->
               
                        @if($fetch->file)
                        <iframe src="{{asset('/storage/dashboard_publik/files/'.$fetch->file)}}" frameborder="0" width="100%" height="600px"></iframe>  
                        @endif 
                
            </div>
          

        </div><!-- /.row -->
        
        
    </div><!-- /.container -->
</section>
<!-- /.End Post -->

@endsection
@section('top-resource')

  <!-- Font Awesome -->
  <link rel="stylesheet" href="{{asset('backend/plugins/fontawesome-free/css/all.min.css')}}">
@endsection
@section('bottom-resource')


@endsection