<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <meta http-equiv="X-UA-Compatible" content="ie=edge" />
  @yield('meta')    <link
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
  <script type='text/javascript' src='https://platform-api.sharethis.com/js/sharethis.js#property=6020c3b32de11300128c2fd3&product=inline-share-buttons' async='async'></script>

</head>

<body>
  <div class="wrapper">
    <!-- === Header === -->
    @include('public.layout.header')

    @yield('content')

    <!-- === Footer === -->
    @include('public.layout.footer')
  <!-- /.wrapper -->

  <script src="{{asset('frontend/js/jquery-3.3.1.min.js')}}"></script>
  <script src="{{asset('frontend/js/plugins.js')}}"></script>
  <script src="{{asset('frontend/js/main.js')}}"></script>
  <!-- SweetAlert -->
  <script src="{{asset('backend/js/sweetalert.min.js')}}"></script>
  <script>
      //sweetalert for success or error message
      @if(session()->has('success'))
          swal({
              type: "success",
              icon: "success",
              title: "BERHASIL!",
              text: "{{ session('success') }}",
              timer: 2200,
              showConfirmButton: false,
              showCancelButton: false,
              buttons: false,
          });
          @elseif(session()->has('error'))
          swal({
              type: "error",
              icon: "error",
              title: "GAGAL!",
              text: "{{ session('error') }}",
              timer: 4100,
              showConfirmButton: false,
              showCancelButton: false,
              buttons: false,
          });
          @endif
  </script>
     <!-- section footer end-->
     <script src="{{ asset('js/script.js') }}"></script>
     <script src="{{ asset('js/particles.js') }}"></script>
     <script src="{{ asset('js/app.js') }}"></script>
  @yield('bottom-resource')

</body>
</html>
