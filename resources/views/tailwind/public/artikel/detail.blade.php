@extends('public.layout.app', ['title' => $article->title])

@section('meta')
  <meta name="description" content="{{htmlspecialchars($article->short_description)}}" />
  <meta name="keywords" content="{{htmlspecialchars($article->title)}}" />
  <meta property="og:title" content="{{$article->title}} "/>
  <meta property="og:type" content="{{$article->title}}"/>
  <meta property="og:image" content="{{($article->img)?asset('/storage/article/images/'.$article->img):asset('fontend/images/grid/1.jpg')}}"/>
@endsection

@section('content')
  <!-- === Page Title === -->
 <!-- content start -->
 <section id="about" class="pt-5 pb-10 bg-cover mt-36">
  <div class="container">
    <!-- <div class="flex flex-wrap"> -->
      <div class="flex flex-wrap">
        <div class="w-full  self-center">
          <div class="flex flex-wrap">
            <div
            class="w-full lg:w-2/3 bg-white rounded-xl shadow-lg overflow-hidden m-[30px]"  >
     
            <img src="https://source.unsplash.com/1000x600?computer" class="w-full" alt="" >
            
            <div class="py-8 px-6">
            
            <div class="flex">
              <p class="font-thin text-xs lg:font-medium text-secondary mb-0 flex">
                <span>   <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" width="16" height="16"><path fill="none" d="M0 0h24v24H0z"/><path d="M4 22a8 8 0 1 1 16 0H4zm8-9c-3.315 0-6-2.685-6-6s2.685-6 6-6 6 2.685 6 6-2.685 6-6 6z"/></svg> </span><span class="flex"> &nbsp;&nbsp; admin </span>
              </p> &nbsp;&nbsp;
              <p class="font-thin text-xs lg:font-medium text-secondary mb-0 flex">
                <span><svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" width="16" height="16"><path fill="none" d="M0 0h24v24H0z"/><path d="M9 1v2h6V1h2v2h4a1 1 0 0 1 1 1v16a1 1 0 0 1-1 1H3a1 1 0 0 1-1-1V4a1 1 0 0 1 1-1h4V1h2zm11 9H4v9h16v-9zm-4.964 1.136l1.414 1.414-4.95 4.95-3.536-3.536L9.38 12.55l2.121 2.122 3.536-3.536zM7 5H4v3h16V5h-3v1h-2V5H9v1H7V5z"/></svg></span> &nbsp;&nbsp; 	 Rabu, 06 April 2022
              </p> &nbsp;&nbsp;
              <p class="font-thin text-xs lg:font-medium text-secondary mb-0 flex">
              <span> <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" width="16" height="16"><path fill="none" d="M0 0h24v24H0z"/><path d="M1.181 12C2.121 6.88 6.608 3 12 3c5.392 0 9.878 3.88 10.819 9-.94 5.12-5.427 9-10.819 9-5.392 0-9.878-3.88-10.819-9zM12 17a5 5 0 1 0 0-10 5 5 0 0 0 0 10zm0-2a3 3 0 1 1 0-6 3 3 0 0 1 0 6z"/></svg></span> &nbsp;&nbsp;   31
              </p>
            </div>
        
            <h3 class="text-primary truncate text-xl font-semibold">{{$article->category->name}}</h3>
            <p class="text-secondary mb-4">      {!!$article->content !!}</p>
         
          </div>
          </div>
           
           
          </div>
         </div>
      
     
      </div>
    

  </div>
</section >
{{-- content --}}

@endsection

@section('top-resource')
@endsection
@section('bottom-resource')
@endsection
