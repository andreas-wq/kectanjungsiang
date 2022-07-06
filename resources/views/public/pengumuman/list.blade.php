@extends('public.layout.app', ['title' => 'Pengumuman Terbaru'])

@section('meta')
  <meta name="description" content="Pengumuman Terbaru" />
  <meta name="keywords" content="Diskominfo Subang" />
  <meta property="og:title" content="Pengumuman Terbaru"/>
  <meta property="og:type" content="Pengumuman"/>
  <meta property="og:image" content="{{asset('fontend/images/grid/1.jpg')}}"/>
@endsection

@section('content')



<section id="about" class="pt-10 pb-10 bg-cover mt-36">
  <div class="container">
    <!-- <div class="flex flex-wrap"> -->
      <div class="w-full lg:w-l/2 self-center">
        <div class="flex flex-wrap">
          <div class="w-full lg:w-1/3 h-30 mx-auto text-center">
           <h1 class="font-bold text-xl">Artikel Terbaru</h1>
           <img src="./img/icon/Contract_Flat.svg" alt="">
          </div>
          <div class="w-full lg:w-2/3 h-30 mx-auto text-center">
            <div class="w-full  self-center">
              <div class="flex flex-wrap">
                @if(count($announcement)>0)
                @foreach ($announcement as $article)
                <div
                   class="w-full lg:w-1/3 bg-white rounded-xl shadow-lg overflow-hidden m-[30px]"  >
           
                  <img src="{{($article->img) ? asset('/storage/announcement/images/'.$article->img) : asset('backend/img/default.png')}}" class="w-full" alt="">
                  
                  <div class="py-8 px-6">
                  
                    <p class="font-thin text-xs lg:font-medium text-secondary mb-0 flex">
                      <span>   <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" width="16" height="16"><path fill="none" d="M0 0h24v24H0z"/><path d="M4 22a8 8 0 1 1 16 0H4zm8-9c-3.315 0-6-2.685-6-6s2.685-6 6-6 6 2.685 6 6-2.685 6-6 6z"/></svg> </span><span class="flex"> &nbsp;&nbsp; admin </span>
                    </p>
                    <p class="font-thin text-xs lg:font-medium text-secondary mb-0 flex">
                      <span><svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" width="16" height="16"><path fill="none" d="M0 0h24v24H0z"/><path d="M9 1v2h6V1h2v2h4a1 1 0 0 1 1 1v16a1 1 0 0 1-1 1H3a1 1 0 0 1-1-1V4a1 1 0 0 1 1-1h4V1h2zm11 9H4v9h16v-9zm-4.964 1.136l1.414 1.414-4.95 4.95-3.536-3.536L9.38 12.55l2.121 2.122 3.536-3.536zM7 5H4v3h16V5h-3v1h-2V5H9v1H7V5z"/></svg></span> &nbsp;&nbsp; 	 Rabu, 06 April 2022
                    </p>
                    <p class="font-thin text-xs lg:font-medium text-secondary mb-0 flex">
                    <span> <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" width="16" height="16"><path fill="none" d="M0 0h24v24H0z"/><path d="M1.181 12C2.121 6.88 6.608 3 12 3c5.392 0 9.878 3.88 10.819 9-.94 5.12-5.427 9-10.819 9-5.392 0-9.878-3.88-10.819-9zM12 17a5 5 0 1 0 0-10 5 5 0 0 0 0 10zm0-2a3 3 0 1 1 0-6 3 3 0 0 1 0 6z"/></svg></span> &nbsp;&nbsp;   31
                    </p>
              
                  <h3 class="text-primary truncate text-xl font-semibold">{{$article->title}}</h3>
                  <p class="text-secondary mb-4">{{$article->short_description}}</p>
                  <a href="{route('public.announcement.detail',['slug'=>$data->slug])}}" class="text-white bg-primary font-medium text-sm py-2 px-4 rounded-lg hover:opacity-80">Baca Selengkapnya</a>
                </div>
                </div>
              
                @endforeach
                @else
                  <span style="text-align:center;font-weight:bold;"><h4>- Belum ada data -</h4></span>
                @endif
              </div>
             </div>
          
          </div>
        
        
        </div>
      </div>
    
    <!-- </div> -->
  </div>
</section >

 

@endsection

@section('top-resource')
@endsection
@section('bottom-resource')
@endsection
