
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
                    href="#portfolio"
                    class="text-base text-dark py-2 mx-8 flex group-hover:text-primary font-bold lg:group-hover:text-secondary"
                    >Profile</a
                  >
                  @if(count($profils) > 0)
      			<ul class="dropdown py-1 bg-white shadow-lg rounded-lg max-w-[250px] right-4 text-left z-[1000]">
      				  @foreach($profils as $profil)
                        <li
                        class="dropdown-content  text-base text-dark py-2 mx-8 flex hover:text-primary"
                      >
                      {{$profil->title}}
                      </li>
                @endforeach
            </ul><!-- /.dropdown-menu -->
			      @endif
                 
                </li>
                <li class="group relative">
                  <a
                    href="#portfolio"
                    class="text-base text-dark py-2 mx-8 flex group-hover:text-primary font-bold lg:group-hover:text-secondary"
                    >Informasi Publik</a
                  >
                  <ul
                    class="absolute py-1 bg-white shadow-lg rounded-lg max-w-[250px] right-4 text-left z-[1000]"
                  >
                    <li
                      class="relative text-base text-dark py-2 mx-8 flex hover:text-primary"
                    >
                      Agenda
                    </li>
                    <li
                      class="relative text-base text-dark py-2 mx-8 flex hover:text-primary"
                    >
                      Artikel
                    </li>
                    <li
                      class="relativetext-base text-dark py-2 mx-8 flex hover:text-primary"
                    >
                      Pengumuman
                    </li>
                    <li
                      class="relativetext-base text-dark py-2 mx-8 flex hover:text-primary"
                    >
                      Galery
                    </li>
                  </ul>
                </li>
                <li class="group">
                  <a
                    href="#clients"
                    class="text-base text-dark py-2 mx-8 flex group-hover:text-primary font-bold lg:group-hover:text-secondary"
                    >Unit</a
                  >
                  <ul
                  class="absolute py-1 bg-white shadow-lg rounded-lg max-w-[250px] right-4 text-left z-[1000]"
                >
                  <li
                    class="relative text-base text-dark py-2 mx-8 flex hover:text-primary"
                  >
                    Agenda
                  </li>
                  <li
                    class="relative text-base text-dark py-2 mx-8 flex hover:text-primary"
                  >
                    Artikel
                  </li>
                  <li
                    class="relativetext-base text-dark py-2 mx-8 flex hover:text-primary"
                  >
                    Pengumuman
                  </li>
                  <li
                    class="relativetext-base text-dark py-2 mx-8 flex hover:text-primary"
                  >
                    Galery
                  </li>
                </ul>
                </li>
              
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
    <section
      id="home"
      class="pt-36 bg-cover"
      style="background-image: url('./img/Cover.svg')"
    >
      <div class="container">
        <div class="flex flex-wrap">
          <div class="w-full lg:w-1/2 self-center px-4">
            <div id="particles-js"></div>
            <h1
              class="font-lora font-semibold text-primary md:text-xl lg:text-2xl"
            >
              Selamat Datang Di website<span
                class="font-lora block font-bold text-dark text-4xl"
              >
                Kecamatan Tanjungsiang</span
              >
            </h1>
            <!-- <h2 class="lora font-medium text-secondary text-lg mb-5">
            Full Stack Developer &
            <span class="text-dark lg:text-2xl"> Entrepeneur</span>
          </h2> -->
            <p class="font-medium text-slate-400 mb-10">
              Lorem ipsum dolor sit amet consectetur adipisicing elit. Cum
              architecto nulla debitis similique dolor possimus iure, illo ipsa
              autem aut atque, aliquid natus tenetur ea soluta doloremque
              nesciunt consectetur in earum cupiditate quaerat voluptates vel
              veniam? Incidunt vero vel quia officiis odit, libero veritatis
              odio perferendis. Quae magnam consequatur provident?
              <span class="text-dark font-bold">bukan!</span>
            </p>
            <a
              href="#"
              class="text-base font-semibold text-white bg-primary py-3 px-8 rounded-full hover:shadow-lg hover:bg-opacity-80 transition duration-300 ease-in-out"
              >Hubungi saya</a
            >
          </div>

          <div class="w-full lg:w-1/2 self-start px-4">
            <div class="relative mt-10">
              <img src="img/camat.png" alt="" class="max-w-full mx-auto" />
              <span
                class="absolute -bottom-0 -z-10 left-1/2 -translate-x-1/2 mx-auto"
              >
              </span>
            </div>
          </div>
        </div>
      </div>
    </section>

    <!-- menu  data -->
    <section id="about" class="pt-10 pb-10 bg-cover mt-36">
      <div class="container">
        <div id="we" class="w-full ">
          <img src="./img/an" alt="">

        </div>
        <div class="flex flex-wrap">
          <div class="w-full lg:w-l/2 self-center">
            <div class="flex flex-wrap">
              <div class="w-1/3 lg:w-1/6 h-30 mx-auto text-center">
                <svg
                  xmlns="http://www.w3.org/2000/svg"
                  viewBox="0 0 24 24"
                  height="100"
                  width="100"
                  fill="#009846"
                >
                  <path fill="none" d="M0 0h24v24H0z" />
                  <path
                    d="M20 13c-1.678 0-3.249.46-4.593 1.259A14.984 14.984 0 0 1 18.147 19H20v-6zm-3.996 6C14.044 14.302 9.408 11 4 11v8h12.004zM4 9c3.83 0 7.323 1.435 9.974 3.796A10.949 10.949 0 0 1 20 11V3h1.008c.548 0 .992.445.992.993v16.014a1 1 0 0 1-.992.993H2.992A.993.993 0 0 1 2 20.007V3.993A1 1 0 0 1 2.992 3H6V1h2v4H4v4zm14-8v4h-8V3h6V1h2zm-1.5 9a1.5 1.5 0 1 1 0-3 1.5 1.5 0 0 1 0 3z"
                  />
                </svg>
                <h4 class="text-primary font-lora font-semibold">Wisata</h4>
              </div>
              <div class="w-1/3 lg:w-1/6 h-30 mx-auto">
                <svg
                  xmlns="http://www.w3.org/2000/svg"
                  viewBox="0 0 24 24"
                  width="100"
                  height="100"
                  fill="#009846"
                >
                  <path fill="none" d="M0 0h24v24H0z" />
                  <path
                    d="M21 19h2v2H1v-2h2V4a1 1 0 0 1 1-1h10a1 1 0 0 1 1 1v15h2V9h3a1 1 0 0 1 1 1v9zM7 11v2h4v-2H7zm0-4v2h4V7H7z"
                  />
                </svg>

                <h4 class="text-primary font-lora text-center font-semibold">
                  PBB
                </h4>
              </div>
              <div class="w-1/3 lg:w-1/6 h-30 mx-auto">
                <svg
                  xmlns="http://www.w3.org/2000/svg"
                  viewBox="0 0 24 24"
                  width="100"
                  height="100"
                  fill="#009846"
                >
                  <path fill="none" d="M0 0h24v24H0z" />
                  <path
                    d="M20 22H4a1 1 0 0 1-1-1V3a1 1 0 0 1 1-1h16a1 1 0 0 1 1 1v18a1 1 0 0 1-1 1zm-1-2V4H5v16h14zM7 6h4v4H7V6zm0 6h10v2H7v-2zm0 4h10v2H7v-2zm6-9h4v2h-4V7z"
                  />
                </svg>
                <h4 class="text-primary font-lora text-center font-semibold">
                  Artikel
                </h4>
              </div>
              <div class="w-1/3 lg:w-1/6 h-30 mx-auto">
                <svg
                  xmlns="http://www.w3.org/2000/svg"
                  viewBox="0 0 24 24"
                  width="100"
                  height="100"
                  fill="#009846"
                >
                  <path fill="none" d="M0 0h24v24H0z" />
                  <path
                    d="M21 8a2 2 0 0 1 2 2v4a2 2 0 0 1-2 2h-1.062A8.001 8.001 0 0 1 12 23v-2a6 6 0 0 0 6-6V9A6 6 0 1 0 6 9v7H3a2 2 0 0 1-2-2v-4a2 2 0 0 1 2-2h1.062a8.001 8.001 0 0 1 15.876 0H21zM7.76 15.785l1.06-1.696A5.972 5.972 0 0 0 12 15a5.972 5.972 0 0 0 3.18-.911l1.06 1.696A7.963 7.963 0 0 1 12 17a7.963 7.963 0 0 1-4.24-1.215z"
                  />
                </svg>
                <h4 class="text-primary font-lora text-center font-semibold">
                  Pelayanan
                </h4>
              </div>
              <div class="w-1/3 lg:w-1/6 h-30 mx-auto">
                <svg
                  xmlns="http://www.w3.org/2000/svg"
                  viewBox="0 0 24 24"
                  width="100"
                  height="100"
                  fill="#009846"
                >
                  <path fill="none" d="M0 0h24v24H0z" />
                  <path
                    d="M5.889 16H2a1 1 0 0 1-1-1V9a1 1 0 0 1 1-1h3.889l5.294-4.332a.5.5 0 0 1 .817.387v15.89a.5.5 0 0 1-.817.387L5.89 16zm13.517 4.134l-1.416-1.416A8.978 8.978 0 0 0 21 12a8.982 8.982 0 0 0-3.304-6.968l1.42-1.42A10.976 10.976 0 0 1 23 12c0 3.223-1.386 6.122-3.594 8.134zm-3.543-3.543l-1.422-1.422A3.993 3.993 0 0 0 16 12c0-1.43-.75-2.685-1.88-3.392l1.439-1.439A5.991 5.991 0 0 1 18 12c0 1.842-.83 3.49-2.137 4.591z"
                  />
                </svg>
                <h4 class="text-primary font-lora text-center font-semibold">
                  Pengumuman
                </h4>
              </div>
              <div class="w-1/3 lg:w-1/6 h-30 mx-auto">
                <svg
                  xmlns="http://www.w3.org/2000/svg"
                  viewBox="0 0 24 24"
                  width="100"
                  height="100"
                  fill="#009846"
                >
                  <path fill="none" d="M0 0h24v24H0z" />
                  <path
                    d="M6 7V4a1 1 0 0 1 1-1h6.414l2 2H21a1 1 0 0 1 1 1v10a1 1 0 0 1-1 1h-3v3a1 1 0 0 1-1 1H3a1 1 0 0 1-1-1V8a1 1 0 0 1 1-1h3zm0 2H4v10h12v-2H6V9z"
                  />
                </svg>
                <h4 class="text-primary font-lora text-center font-semibold">
                  Galeri
                </h4>
              </div>
            </div>
          </div>
        
        </div>
      </div>
    </section >
<!-- artikel start -->
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
                    <div
                    class="w-full lg:w-1/4 bg-white rounded-xl shadow-lg overflow-hidden m-[30px]"  >
               
                      <img src="https://source.unsplash.com/1000x600?computer" class="" alt="">
                      <div class="py-8 px-6">
                      <h3 class="text-primary truncate text-xl font-semibold">Lorem ipsum dolor sit amet.</h3>
                      <p class="text-secondary mb-4">Lorem ipsum dolor, sit amet consectetur adipisicing elit. Consequatur perferendis non necessitatibus cum consequuntur similique </p>
                      <a href="#" class="text-white bg-primary font-medium text-sm py-2 px-4 rounded-lg hover:opacity-80">Baca Selengkapnya</a>
                    </div>
                    </div>
                    <div
                    class="w-full lg:w-1/4 bg-white rounded-xl shadow-lg overflow-hidden m-[30px]"  >
               
                      <img src="https://source.unsplash.com/1000x600?computer" class="" alt="">
                      <div class="py-8 px-6">
                      <h3 class="text-primary truncate text-xl font-semibold">Lorem ipsum dolor sit amet.</h3>
                      <p class="text-secondary mb-4">Lorem ipsum dolor, sit amet consectetur adipisicing elit. Consequatur perferendis non necessitatibus cum consequuntur similique </p>
                      <a href="#" class="text-white bg-primary font-medium text-sm py-2 px-4 rounded-lg hover:opacity-80">Baca Selengkapnya</a>
                    </div>
                    </div>
                    <div
                    class="w-full lg:w-1/4 bg-white rounded-xl shadow-lg overflow-hidden m-[30px]"  >
               
                      <img src="https://source.unsplash.com/1000x600?computer" class="" alt="">
                      <div class="py-8 px-6">
                      <h3 class="text-primary truncate text-xl font-semibold">Lorem ipsum dolor sit amet.</h3>
                      <p class="text-secondary mb-4">Lorem ipsum dolor, sit amet consectetur adipisicing elit. Consequatur perferendis non necessitatibus cum consequuntur similique </p>
                      <a href="#" class="text-white bg-primary font-medium text-sm py-2 px-4 rounded-lg hover:opacity-80">Baca Selengkapnya</a>
                    </div>
                    </div>
                    <div
                    class="w-full lg:w-1/4 bg-white rounded-xl shadow-lg overflow-hidden m-[30px]"  >
               
                      <img src="https://source.unsplash.com/1000x600?computer" class="" alt="">
                      <div class="py-8 px-6">
                      <h3 class="text-primary truncate text-xl font-semibold">Lorem ipsum dolor sit amet.</h3>
                      <p class="text-secondary mb-4">Lorem ipsum dolor, sit amet consectetur adipisicing elit. Consequatur perferendis non necessitatibus cum consequuntur similique </p>
                      <a href="#" class="text-white bg-primary font-medium text-sm py-2 px-4 rounded-lg hover:opacity-80">Baca Selengkapnya</a>
                    </div>
                    </div>
                    <div
                    class="w-full lg:w-1/4 bg-white rounded-xl shadow-lg overflow-hidden m-[30px]"  >
               
                      <img src="https://source.unsplash.com/1000x600?computer" class="" alt="">
                      <div class="py-8 px-6">
                      <h3 class="text-primary truncate text-xl font-semibold">Lorem ipsum dolor sit amet.</h3>
                      <p class="text-secondary mb-4">Lorem ipsum dolor, sit amet consectetur adipisicing elit. Consequatur perferendis non necessitatibus cum consequuntur similique </p>
                      <a href="#" class="text-white bg-primary font-medium text-sm py-2 px-4 rounded-lg hover:opacity-80">Baca Selengkapnya</a>
                    </div>
                    </div>
                    <div
                    class="w-full lg:w-1/4 bg-white rounded-xl shadow-lg overflow-hidden m-[30px] mx-auto"  >
               
                    <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" width="200" height="200" style="margin-right: auto; margin-left: auto;"><path fill="none" d="M0 0h24v24H0z"/><path d="M12 2c5.52 0 10 4.48 10 10s-4.48 10-10 10S2 17.52 2 12 6.48 2 12 2zm0 9H8v2h4v3l4-4-4-4v3z" fill="rgba(0,152,70,1)"/></svg>
                      <div class="py-8 px-6">
                     
                      <a href="#" class="text-white text-center bg-primary font-medium text-sm py-2 px-4 rounded-lg hover:opacity-80 ">Baca Semua Artikel</a>
                    </div>
                    </div>
                   
                  </div>
                 </div>
              
              </div>
            
            
            </div>
          </div>
        
        <!-- </div> -->
      </div>
    </section >
   
    <!-- end artikel -->
    <!-- kontak -->
    <section
      id="home"
      class="pt-36 bg-cover"
      style="background-image: url('./img/footer.svg')"
    >
      <div class="container">
        <div class="flex flex-wrap">
          <div class="w-full lg:w-1/2 self-center px-4">
          
            <h1
           
                class="font-lora block font-bold text-dark text-4xl"
              >
                Pengaduan
            </h1>
            <!-- <h2 class="lora font-medium text-secondary text-lg mb-5">
            Full Stack Developer &
            <span class="text-dark lg:text-2xl"> Entrepeneur</span>
          </h2> -->
            <p class="font-medium text-slate-400 mb-10">
              Lorem ipsum dolor sit amet consectetur adipisicing elit. Cum
              architecto nulla debitis similique dolor possimus iure, illo ipsa
              autem aut atque, aliquid natus tenetur ea soluta doloremque
              nesciunt consectetur in earum cupiditate quaerat voluptates vel
              veniam? Incidunt vero vel quia officiis odit, libero veritatis
              odio perferendis. Quae magnam consequatur provident?
              <span class="text-dark font-bold">bukan!</span>
            </p>
            <a
              href="#"
              class="text-base font-semibold text-white bg-primary py-3 px-8 rounded-full hover:shadow-lg hover:bg-opacity-80 transition duration-300 ease-in-out"
              >Hubungi saya</a
            >
          </div>

          <div class="w-full lg:w-1/2 self-start px-4">
            <div class="relative mt-10">
              
            <h1
           
            class="font-lora block font-bold text-dark text-4xl"
          >
            Pengaduan
        </h1>
        <!-- <h2 class="lora font-medium text-secondary text-lg mb-5">
        Full Stack Developer &
        <span class="text-dark lg:text-2xl"> Entrepeneur</span>
      </h2> -->
        <p class="font-medium text-slate-400 mb-10">
          Lorem ipsum dolor sit amet consectetur adipisicing elit. Cum
          architecto nulla debitis similique dolor possimus iure, illo ipsa
          autem aut atque, aliquid natus tenetur ea soluta doloremque
          nesciunt consectetur in earum cupiditate quaerat voluptates vel
          veniam? Incidunt vero vel quia officiis odit, libero veritatis
          odio perferendis. Quae magnam consequatur provident?
          <span class="text-dark font-bold">bukan!</span>
        </p>
        <a
          href="#"
          class="text-base font-semibold text-white bg-primary py-3 px-8 rounded-full hover:shadow-lg hover:bg-opacity-80 transition duration-300 ease-in-out"
          >Hubungi saya</a
        >
            </div>
          </div>
        </div>
      </div>
    </section>
    <!-- section footer start-->
    <section id="footer" class="pt-36 bg-cover w-full" style="">
      <img src="./img/footer.svg" alt="" />
    </section>
    <!-- section footer end-->
    <script src="{{ asset('js/script.js') }}"></script>
    <script src="{{ asset('js/particles.js') }}"></script>
    <script src="{{ asset('js/app.js') }}"></script>
  </body>
</html>
