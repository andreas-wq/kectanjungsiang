
    <!-- header start -->
    <header
      class="bg-transparent absolute top-0 left-0 w-full flex text-center z-10"
    >
      <div class="container">
        <div class="flex items-center justify-between relative">
          <div class="px-4">
            <a href="/" class="font-bold text-lg text-primary block py-6"
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
                    href="/"
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
                  @foreach($jajaran as $unit)
                  <li class="nav__item">
                   
                    <li
                    class="  relative text-base text-dark py-2 mx-8 flex hover:text-primary"
                  >
                  <a href="{{route('public.staff', ['slug'=>$unit->slug])}}"class="">{{$unit->name}}</a>
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
                    >Layanan</a
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