<!doctype html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="csrf-token" content="{{ csrf_token() }}">

    <title>@yield('title') | {{ setting('site.title') }}</title>

    <!-- Favicons -->
    <link href="{{asset('img/favicon.png')}}" rel="icon">
    <link href="{{asset('img/apple-touch-icon.png')}}" rel="apple-touch-icon">

    <!-- Google Fonts -->
    <link
        href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i"
        rel="stylesheet">

    <!--
    <link rel="stylesheet" href="{{ asset('css/app.css') }}">
    -->
    <livewire:styles/>
    <link href="{{asset('vendor/bootstrap/css/bootstrap.min.css')}} " rel="stylesheet">
    <link href="{{asset('vendor/icofont/icofont.min.css')}}" rel="stylesheet">
    <link href="{{asset('vendor/boxicons/css/boxicons.min.css')}}" rel="stylesheet">
    <link href="{{asset('vendor/venobox/venobox.css')}}" rel="stylesheet">
    <link href="{{asset('vendor/owl.carousel/assets/owl.carousel.min.css')}}" rel="stylesheet">
    <!-- Template Main CSS File -->
    <link href="{{asset('css/style.css?v=1.1')}}" rel="stylesheet">
    <!-- Load Tempalte CSS -->
    <link rel="stylesheet" href="{{asset('css/templatemo.css')}}">
    <!-- Custom CSS -->
    <link rel="stylesheet" href="{{asset('css/custom.css')}}">

    <link href="{{asset('css/font-awesome.min.css')}} " rel="stylesheet">

    @yield('style')


</head>
<body>

@include('layouts.menu')
<main id="main">
    {{ $slot }}
</main>

@include('layouts.footer')

<livewire:scripts/>
<script src="{{ asset('js/app.js') }}"></script>
<script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
<x-livewire-alert::scripts/>
<script src="{{asset('js/bootstrap.bundle.min.js')}}"></script>
<script src="{{asset('js/jquery.min.js')}}"></script>
<script src="{{asset('js/isotope.pkgd.js')}}"></script>
<script src="{{asset('js/templatemo.js')}}"></script>
<script src="{{asset('js/custom.js')}}"></script>
<script src="{{asset('vendor/jquery/jquery.min.js')}}"></script>
<script src="{{asset('vendor/bootstrap/js/bootstrap.bundle.min.js')}}"></script>
<script src="{{asset('vendor/jquery.easing/jquery.easing.min.js')}}"></script>
<script src="{{asset('vendor/php-email-form/validate.js')}}"></script>
<script src="{{asset('vendor/isotope-layout/isotope.pkgd.min.js')}}"></script>
<script src="{{asset('vendor/venobox/venobox.min.js')}}"></script>
<script src="{{asset('vendor/owl.carousel/owl.carousel.min.js')}}"></script>
<script src="{{asset('vendor/aos/aos.js')}}"></script>

<!-- Template Main JS File -->
<script src="{{asset('js/main.js')}}"></script>

<script>
    $( document ).ready(function() {
        // init Isotope
        var $projects = $('.projects').isotope({
            itemSelector: '.project',
            layoutMode: 'fitRows'
        });
        $(".filter-btn").click(function () {
            var data_filter = $(this).attr("data-filter");
            $projects.isotope({
                filter: data_filter
            });
            $(".filter-btn").removeClass("active");
            $(".filter-btn").removeClass("shadow");
            $(this).addClass("active");
            $(this).addClass("shadow");
            return false;
        });
    });
</script>
@yield('script')

</body>
</html>
