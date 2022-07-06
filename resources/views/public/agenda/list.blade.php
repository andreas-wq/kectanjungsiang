@extends('public.layout.app', ['title' => 'Agenda'])
@section('meta')
  <meta name="description" content="Agenda Terbaru" />
  <meta name="keywords" content="Diskominfo Subang" />
  <meta property="og:title" content="Agenda Terbaru"/>
  <meta property="og:type" content="agenda"/>
  <meta property="og:image" content="{{asset('fontend/images/grid/1.jpg')}}"/>
@endsection
@section('content')
  <!-- === Page Title === -->
  

    <!-- === Postingan === -->
    <section id="content" class="pt-36 pb-16 ">
      <div class="container">
        <div class="flex flex-wrap">
        
          <div class="w-full lg:w-2/3 ">
            <div class="flex flex-wrap">
              <div class=" w-full   justify-center">
                <div class="mb-12 p-4">
                    {{-- artikel detail --}}
                    <div class="flex flex-wrap">
                      <div class=" w-full   justify-center">
                        <div class="mb-12 p-4">
                            {{-- artikel detail --}}
                            <div class="list">
                              @if(count($agendas)>0)
                              @foreach ($agendas as $agenda)
                                <div class="w-1/3">
                          
                                  <div class="widget-post-item flex ">
                                    <div class="widget__post-img">
                                      <a href="{{route('public.agenda.detail',['slug'=>$agenda->slug])}}"><img src="{{($agenda->img) ? asset('/announcement/images/'.$agenda->img) : asset('backend/img/default.png')}}" class="w-[100px] h-[100px] bg-cover bg-fixed rounded-full shadow-lg bg-left-top  overflow-hidden"></a>
                                    </div><!-- /.widget-post-img -->
                                    <div class="widget__post-content">
                                      <h6 class="text-center m-3">{{\Carbon\Carbon::parse($agenda->created_at)->translatedFormat('d F Y')}}</h6>
                                      <h6 class="widget__post-title text-center"><a href="{{route('public.article.detail',['slug'=>$agenda->slug])}}">{{$agenda->title}}</a></h6>
                                    </div><!-- /.widget-post-content -->
                                  </div><!-- /.widget-post-item -->
                                  @endforeach
                                @else
                                  - Belum ada data -
                                @endif
             
                               </div>
                            </div>
          
                        </div>
                      </div>
                    </div>

  
                </div>
              </div>
            </div>
          </div>
          <div class="w-full lg:w-1/3  p-10 rounded-lg shadow-lg bg-slate-300">
            <aside class="sidebar sidebar-wide">
              
  
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
  
      </div><!-- /.container -->
    </section>
    
    <!-- /.End Post -->

@endsection
@section('top-resource')
@endsection
@section('bottom-resource')
@endsection
