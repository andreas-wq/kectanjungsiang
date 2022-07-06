@extends('public.layout.app', ['title' => $agenda->title])

@section('meta')
  <meta name="description" content="{{htmlspecialchars($agenda->description)}}" />
  <meta name="keywords" content="{{htmlspecialchars($agenda->title)}}" />
  <meta property="og:title" content="{{$agenda->title}} "/>
  <meta property="og:type" content="{{$agenda->title}}"/>
  <meta property="og:image" content="{{($agenda->img)?asset('/storage/agenda/images/'.$agenda->img):asset('fontend/images/grid/1.jpg')}}"/>
@endsection

@section('content')
  <!-- === Page Title === -->
 

<!-- === Blog Single === -->
<section id="content" class="pt-36 pb-16 ">
  <div class="container ">
    <div class="flex flex-wrap">
      
      <div class="w-full lg:w-2/3 ">
        <div class="flex flex-wrap">
          <div class=" w-full   justify-center">
            <div class="mb-12 p-4">
                {{-- artikel detail --}}
                <div class="img">
                  <img src="{{($agenda->img)? asset('/storage/agenda/images/'.$agenda->img) : asset('backend/img/default.png')}}" alt="blog image" class="w-full rounded-lg shadow-lg">
                </div>
                <div class="flex mt-3">
                  <p class="font-thin text-xs lg:font-medium text-secondary mb-1 flex">
                    <span>   <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" width="16" height="16"><path fill="none" d="M0 0h24v24H0z"/><path d="M4 22a8 8 0 1 1 16 0H4zm8-9c-3.315 0-6-2.685-6-6s2.685-6 6-6 6 2.685 6 6-2.685 6-6 6z"/></svg> </span><span class="flex"> &nbsp;&nbsp; {{$agenda->created_by}} &nbsp;&nbsp; </span>
                  </p>
                  <p class="font-thin text-xs lg:font-medium text-secondary mb-1 flex">
                    <span><svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" width="16" height="16"><path fill="none" d="M0 0h24v24H0z"/><path d="M9 1v2h6V1h2v2h4a1 1 0 0 1 1 1v16a1 1 0 0 1-1 1H3a1 1 0 0 1-1-1V4a1 1 0 0 1 1-1h4V1h2zm11 9H4v9h16v-9zm-4.964 1.136l1.414 1.414-4.95 4.95-3.536-3.536L9.38 12.55l2.121 2.122 3.536-3.536zM7 5H4v3h16V5h-3v1h-2V5H9v1H7V5z"/></svg></span> &nbsp;&nbsp; 	{{\Carbon\Carbon::parse($agenda->created_at)->translatedFormat('l, d F Y')}}
                  </p>
                </div>
              
         
              
             
                <h3 class="text-primary truncate text-xl font-semibold mt-3">{{ $agenda->title }}</h3>
                <p class="text-secondary mb-4 mt-3">   {!!$agenda->description !!} </p>
              

            </div>
          </div>
        </div>
      </div>
      <div class="w-full lg:w-1/3  p-10 rounded-lg shadow-lg bg-slate-300">
        <aside class="sidebar sidebar-wide">
          <div class="widget widget-posts  my-10">
            <h5 class="widget__title text-xl font-lora mb-5">Pengumuman Terbaru</h5>
            <div class="widget__content">
              <!-- post item -->
              @if(count($announcement) > 0)
              @foreach ($announcement as $list)
                  <div class="widget-post-item">
                    <div class="widget__post-content">
                      <span class="widget__post-date">{{\Carbon\Carbon::parse($list->created_at)->translatedFormat('d F Y')}}</span>
                      <h6 class="widget__post-title"><a href="{{route('public.agenda.detail',['slug'=>$list->slug])}}">{{$list->title}}</a></h6>
                    </div><!-- /.widget-post-content -->
                  </div><!-- /.widget-post-item -->
                @endforeach
              @else
                - Belum ada data -
              @endif
            </div><!-- /.widget-content -->
          </div><!-- /.widget-posts -->
          <div class="widget widget-posts my-10">
            <h5 class="widget__title text-xl font-lora mb-5">Pengumuman Terbaru</h5>
            <div class="widget__content">
              <!-- post item -->
              @if(count($announcement) > 0)
                @foreach ($announcement as $list)
                
                <div class="widget-post-item flex ">
                  <div class="widget__post-img">
                    <a href="#"><img src="{{($list->img) ? asset('/announcement/images/'.$list->img) : asset('backend/img/default.png')}}" class="w-[100px] h-[100px] bg-cover bg-fixed rounded-full shadow-lg bg-left-top  overflow-hidden"></a>
                  </div><!-- /.widget-post-img -->
                  <div class="widget__post-content">
                    <h6 class="text-center m-3">{{\Carbon\Carbon::parse($list->created_at)->translatedFormat('d F Y')}}</h6>
                    <h6 class="widget__post-title text-center"><a href="{{route('public.article.detail',['slug'=>$list->slug])}}">{{$list->title}}</a></h6>
                  </div><!-- /.widget-post-content -->
                </div><!-- /.widget-post-item -->
                @endforeach
              @else
                - Belum ada data -
              @endif
            </div><!-- /.widget-content -->
          </div><!-- /.widget-posts -->
          <div class="widget widget-posts  my-10">
            <h5 class="widget__title text-xl font-lora mb-5">Artikel Terbaru</h5>
            <div class="widget__content">
              <!-- post item -->
              @if(count($article) > 0)
                @foreach ($article as $list)
                  <div class="widget-post-item flex m-2">
                    <div class="widget__post-img">
                      <a href="#"><img src="{{($list->img) ? asset('/storage/article/images/'.$list->img) : asset('backend/img/default.png')}}" class="w-[100px] h-[100px] rounded-full shadow-lg bg-center"></a>
                    </div><!-- /.widget-post-img -->
                    <div class="widget__post-content">
                      <h6 class="text-center m-3">{{\Carbon\Carbon::parse($list->created_at)->translatedFormat('d F Y')}}</h6>
                      <h6 class="widget__post-title text-center"><a href="{{route('public.article.detail',['slug'=>$list->slug])}}">{{$list->title}}</a></h6>
                    </div><!-- /.widget-post-content -->
                  </div><!-- /.widget-post-item -->
                @endforeach
              @else
                - Belum ada data -
              @endif
            </div><!-- /.widget-content -->
          </div><!-- /.widget-posts -->
        </aside><!-- /.sidebar -->
      </div>

    </div>

   
  </div>
  <div class=" ">

  </div>

</section>
@endsection

@section('top-resource')
@endsection
@section('bottom-resource')
@endsection
