@extends('public.layout.app', ['title' => 'Data Pegawai'])

@section('meta')
  <meta name="description" content="Data Pegawai" />
  <meta name="keywords" content="Data Pegawai" />
  <meta property="og:title" content="Data Pegawai"/>
  <meta property="og:type" content="Data Pegawai"/>
  <meta property="og:image" content="{{asset('fontend/images/grid/1.jpg')}}"/>
@endsection

@section('content')
<div class="w-full lg:w-l/2 self-center">
  <div class="flex flex-wrap">
    <div class="w-full lg:w-1/3 h-30 mx-auto text-center">
     <h1 class="font-bold text-xl">Artikel Terbaru</h1>
     <img src="./img/icon/Contract_Flat.svg" alt="">
    </div>
    <div class="w-full lg:w-2/3 h-30 mx-auto text-center">
      <div class="w-full  self-center">
        <div class="flex flex-wrap">
          @if(count($fetch) > 0)
          <!-- Member -->
          @foreach($fetch as $list)
          <div
             class="w-full lg:w-1/3 bg-white rounded-xl shadow-lg overflow-hidden m-[30px]"  >
     
            <img src="{{asset('/storage/staff/images/'.$list->photo)}}" class="w-full" alt="">
            
            <div class="py-8 px-6">
            
              <h5 class="member__name">{{$list->name}}</h5>
                  <p class="member__desc">{{$list->position}}</p>
        
            {{-- <h3 class="text-primary truncate text-xl font-semibold">{{$article->title}}</h3> --}}
          
          </div>
          </div>
        
          @endforeach
          @else
          <div
          class="w-full bg-white rounded-xl shadow-lg overflow-hidden m-[30px]"  >
            <span style="text-align:center;font-weight:bold;"><h4>- Belum ada data -</h4></span>
          </div>
          @endif
        </div>
       </div>
    
    </div>
  
  
  </div>
</div>

  
@endsection

@section('top-resource')
@endsection
@section('bottom-resource')
@endsection
