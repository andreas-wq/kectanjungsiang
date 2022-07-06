
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link
      href="https://fonts.googleapis.com/css2?family=Inter:wght@200;400;600;900&family=Lora:wght@400;500;600;700&display=swap"
      rel="stylesheet"
    />
    <link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/fontawesome.min.css"
      integrity="sha512-xX2rYBFJSj86W54Fyv1de80DWBq7zYLn2z0I9bIhQG+rxIF6XVJUpdGnsNHWRa6AvP89vtFupEPDP8eZAtu9qA=="
      crossorigin="anonymous"
      referrerpolicy="no-referrer"
    />
    <link rel="stylesheet" href="{{ asset('css/style.css') }}">
    <style>
      #particles-js {
        position: absolute;
        margin-top: -300px;
        width: 100%;
        height: 100%;
        /* background: #000;  */
        /* background: linear-gradient(45deg#e91e63,#ff9800); */
      }
    </style>
  </head>
  <body>
    
    <!-- header start -->
    <header
      class="bg-transparent absolute top-0 left-0 w-full flex text-center z-10"
    >
      <div class="container">
        <div class="flex items-center justify-between relative">
          <div class="px-4">
            <a href="#home" class="font-bold text-lg text-primary block py-6"
              ><img src="{{ asset('img/logo.png') }}" class="h-1/2 w-[150px]" alt=""
            /></a>
          </div>
          <div class="flex items-center justify-center px-4">
            <button
              id="hamburger"
              name="hamburger"
              type="button"
              class="block absolute right-4 lg:hidden"
            >
              <span
                class="origin-top-left hamburger-line transition duration-300 ease-in-out"
              ></span>
              <span
                class="hamburger-line transition duration-300 ease-in-out"
              ></span>
              <span
                class="origin-bottom-left hamburger-line transition duration-300 ease-in-out"
              ></span>
            </button>
            <nav
              id="nav-menu"
              class="hidden absolute py-5 bg-white shadow-lg rounded-lg max-w-[250px] w-full right-4 top-full text-left lg:block lg:static lg:bg-transparent lg:max-w-full lg:shadow-none lg:rounded-none"
            >
              <ul class="block lg:flex">
                <li class="group">
                  <a
                    href="#body"
                    class="text-dark py-2 mx-8 flex group-hover:text-primary lg:group-hover:text-secondary font-lora font-bold"
                    >Beranda</a
                  >
                </li>
                <li class="group relative">
                  <a
                    href="#"
                   id="menu1" class="menu text-base text-dark py-2 mx-8 flex group-hover:text-primary font-bold lg:group-hover:text-secondary"
                    >Profile <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" width="24" height="24"><path fill="none" d="M0 0h24v24H0z"/><path d="M12 14l-4-4h8z"/></svg></a
                  >
                  <ul id="submenu1"
                    class=" absolute py-1 bg-white shadow-lg rounded-lg max-w-[250px] right-4 text-left z-[1000]"
                  >
                  @foreach($profils as $profil)
                  <li class="nav__item">
                   
                    <li
                    class="  relative text-base text-dark py-2 mx-8 flex hover:text-primary"
                  >
                  <a href="{{route('public.profile', ['slug'=>$profil->slug])}}" class="">{{$profil->title}}</a>
                  </li>
                  </li>
                  @endforeach
                
                   
                  </ul>
                </li>
                <li class="group relative">
                  <a
                    href="#profile" id="menu2"
                    class="menu text-base text-dark py-2 mx-8 flex group-hover:text-primary font-bold lg:group-hover:text-secondary"
                    >Jajaran <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" width="24" height="24"><path fill="none" d="M0 0h24v24H0z"/><path d="M12 14l-4-4h8z"/></svg></a
                  >
                  <ul
                    id="submenu2" class="submenu absolute py-1 bg-white shadow-lg rounded-lg max-w-[250px] right-4 text-left z-[1000]"
                  >
                  @foreach($profils as $profil)
                  <li class="nav__item">
                   
                    <li
                    class="  relative text-base text-dark py-2 mx-8 flex hover:text-primary"
                  >
                  <a href="{{route('public.profile', ['slug'=>$profil->slug])}}" class="">{{$profil->title}}</a>
                  </li>
                  </li>
                  @endforeach
                
                   
                  </ul>
                </li>

             
                
                <li class="group relative">
                  <a
                    href="#portfolio" id="menu2"
                    class="text-base text-dark py-2 mx-8 flex group-hover:text-primary font-bold lg:group-hover:text-secondary"
                    >Informasi Publik <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" width="24" height="24"><path fill="none" d="M0 0h24v24H0z"/><path d="M12 14l-4-4h8z"/></svg></a
                  >
                  <ul
                    class="absolute py-1 bg-white shadow-lg rounded-lg max-w-[250px] right-4 text-left z-[1000]"
                  >
                    <li
                      class="relative text-base text-dark py-2 mx-8 flex hover:text-primary"
                    >
                    <a href="{{route('public.agenda.list')}}" class="nav__item-link {{ Request::routeIs('public.agenda.*') ? 'active' : '' }}">Agenda</a>
                    </li>
                    <li
                      class="relative text-base text-dark py-2 mx-8 flex hover:text-primary"
                    >
                    <a href="{{route('public.announcement.list')}}" class="nav__item-link {{ Request::routeIs('public.announcement.*') ? 'active' : '' }}">Pengumuman</a>
                    </li>
                    <li
                      class="relativetext-base text-dark py-2 mx-8 flex hover:text-primary"
                    >
                    <a href="{{route('public.article.list')}}" class="nav__item-link {{ Request::routeIs('public.article.*') ? 'active' : '' }}">Artikel</a>
                    </li>
                    <li
                      class="relativetext-base text-dark py-2 mx-8 flex hover:text-primary"
                    >
                    <a href="#" data-toggle="dropdown" class="dropdown-toggle nav__item-link {{ Request::routeIs('public.album.*')||Request::routeIs('public.video.*')||Request::routeIs('public.infographic.*') ? 'active' : '' }}">Galeri</a>
                    </li>
                  </ul>
                </li>
                <li class="group">
                  <a
                    href="#clients"
                    class="text-base text-dark py-2 mx-8 flex group-hover:text-primary font-bold lg:group-hover:text-secondary"
                    >Unit</a
                  >
                </li>
                <!-- <li class="group">
               <a
                 href="#blog"
                 class="text-base text-dark py-2 mx-8 flex group-hover:text-primary"
                 >Blog</a
               >
             </li> -->
                <li class="group">
                  <a
                    href="#contact"
                    class="text-base text-dark py-2 mx-8 flex group-hover:text-primary font-bold lg:group-hover:text-secondary"
                    >Kontak</a
                  >
                </li>
              </ul>
            </nav>
          </div>
        </div>
      </div>
    </header>
    <!-- header end -->
    <!-- hero section start -->
   
   
    <!-- end artikel -->
    <div class="content pt-36 pb-36 h-96">

    </div>
    
    <!-- section footer start-->
    <section id="footer" class="pt-36  w-full " style="">
      <div class="container bg-primary max-h-96">
        <div class="flex flex-wrap">
          <div class="w-full  lg:w-1/2 mt-10  px-4">
          
            <img src="{{ asset('img/logo.png') }}" class=" w-[100px] lg:w-[150px]" alt=""
            />
     
            <p class="font-thin text-xs lg:font-medium text-white mb-0 flex">
              <span><svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" width="15" height="15"><path fill="none" d="M0 0h24v24H0z"/><path d="M21 16.42v3.536a1 1 0 0 1-.93.998c-.437.03-.794.046-1.07.046-8.837 0-16-7.163-16-16 0-.276.015-.633.046-1.07A1 1 0 0 1 4.044 3H7.58a.5.5 0 0 1 .498.45c.023.23.044.413.064.552A13.901 13.901 0 0 0 9.35 8.003c.095.2.033.439-.147.567l-2.158 1.542a13.047 13.047 0 0 0 6.844 6.844l1.54-2.154a.462.462 0 0 1 .573-.149 13.901 13.901 0 0 0 4 1.205c.139.02.322.042.55.064a.5.5 0 0 1 .449.498z" fill="white"/></svg></span> &nbsp;&nbsp; (0260) 4113251 / 421910
            </p>
            <p class="font-thin text-xs lg:font-medium text-white mb-0 flex">
              <span><svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" width="15" height="15"><path fill="none" d="M0 0h24v24H0z"/><path d="M3 3h18a1 1 0 0 1 1 1v16a1 1 0 0 1-1 1H3a1 1 0 0 1-1-1V4a1 1 0 0 1 1-1zm17 4.238l-7.928 7.1L4 7.216V19h16V7.238zM4.511 5l7.55 6.662L19.502 5H4.511z" fill="white"/></svg></span> &nbsp;&nbsp; disketpan@subang.go.id
            </p>
            <p class="font-thin text-xs lg:font-medium text-white mb-0 flex">
              <span><svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" width="15" height="15"><path fill="none" d="M0 0h24v24H0z"/><path d="M2 5l7-3 6 3 6.303-2.701a.5.5 0 0 1 .697.46V19l-7 3-6-3-6.303 2.701a.5.5 0 0 1-.697-.46V5zm14 14.395l4-1.714V5.033l-4 1.714v12.648zm-2-.131V6.736l-4-2v12.528l4 2zm-6-2.011V4.605L4 6.319v12.648l4-1.714z" fill="white"/></svg></span> &nbsp;&nbsp;    Jalan Palabuan No 11 Sukamelang Subang
            </p>
         
          </div>

          <div class="w-1/2  mt-10  px-4">
            <div class="relative ">
              
              <p class="font-thin text-xs lg:font-medium text-white mb-0 flex">
                <span><svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" width="15" height="15"><path fill="none" d="M0 0h24v24H0z"/><path d="M6.235 6.453a8 8 0 0 0 8.817 12.944c.115-.75-.137-1.47-.24-1.722-.23-.56-.988-1.517-2.253-2.844-.338-.355-.316-.628-.195-1.437l.013-.091c.082-.554.22-.882 2.085-1.178.948-.15 1.197.228 1.542.753l.116.172c.328.48.571.59.938.756.165.075.37.17.645.325.652.373.652.794.652 1.716v.105c0 .391-.038.735-.098 1.034a8.002 8.002 0 0 0-3.105-12.341c-.553.373-1.312.902-1.577 1.265-.135.185-.327 1.132-.95 1.21-.162.02-.381.006-.613-.009-.622-.04-1.472-.095-1.744.644-.173.468-.203 1.74.356 2.4.09.105.107.3.046.519-.08.287-.241.462-.292.498-.096-.056-.288-.279-.419-.43-.313-.365-.705-.82-1.211-.96-.184-.051-.386-.093-.583-.135-.549-.115-1.17-.246-1.315-.554-.106-.226-.105-.537-.105-.865 0-.417 0-.888-.204-1.345a1.276 1.276 0 0 0-.306-.43zM12 22C6.477 22 2 17.523 2 12S6.477 2 12 2s10 4.477 10 10-4.477 10-10 10z" fill="white"/></svg></span> &nbsp;&nbsp; Pengguna Online :
              </p>
              <p class="font-thin text-xs lg:font-medium text-white mb-0 flex">
                <span><svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" width="15"  height="15"><path fill="none" d="M0 0h24v24H0z"/><path d="M20 22H4v-2a5 5 0 0 1 5-5h6a5 5 0 0 1 5 5v2zm-8-9a6 6 0 1 1 0-12 6 6 0 0 1 0 12z" fill="white"/></svg></span> &nbsp;&nbsp; Pengunjung Hari Ini	:	 
              </p>
              <p class="font-thin text-xs lg:font-medium text-white mb-0 flex">
              <span><svg xmlns="http://www.w3.org/2000/svg" width="15" height="15" viewBox="0 0 24 24" fill="white" stroke="none" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-users"><path d="M17 21v-2a4 4 0 0 0-4-4H5a4 4 0 0 0-4 4v2"></path><circle cx="9" cy="7" r="4"></circle><path d="M23 21v-2a4 4 0 0 0-3-3.87"></path><path d="M16 3.13a4 4 0 0 1 0 7.75"></path></svg></span> &nbsp;&nbsp;    Total Pengunjung	:
              </p>
              
               
            </div>
          </div>
          <div class="w-full mt-10  self-center px-4 mb-2  border-t-2">
            <p class="text-center text-white">© 2022 Dinas Komunikasi dan Informatika Kabupaten Subang</p>
          </div>
        </div>
      </div>
    </section>
    <!-- section footer end-->
    <script src="{{ asset('js/script.js') }}"></script>
    <script src="{{ asset('js/particles.js') }}"></script>
    <script src="{{ asset('js/app.js') }}"></script>
  
  </body>
</html>
