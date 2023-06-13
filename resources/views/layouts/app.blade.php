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
    <link href="{{asset('css/font-awesome.min.css')}} " rel="stylesheet">
    <link href="{{asset('vendor/bootstrap/css/bootstrap.min.css')}} " rel="stylesheet">
    <link href="{{asset('vendor/icofont/icofont.min.css')}}" rel="stylesheet">
    <link href="{{asset('vendor/boxicons/css/boxicons.min.css')}}" rel="stylesheet">
    <link href="{{asset('vendor/venobox/venobox.css')}}" rel="stylesheet">
    <link href="{{asset('vendor/owl.carousel/assets/owl.carousel.min.css')}}" rel="stylesheet">
    <link href="{{asset('vendor/aos/aos.css')}}" rel="stylesheet">
    <link href="{{asset('css/style.css')}}" rel="stylesheet">
    <link rel="stylesheet" href="{{asset('css/templatemo.css')}}">
    <link rel="stylesheet" href="{{asset('css/custom.css')}}">
    <livewire:styles/>
    @yield('style')


</head>
<body>

<header id="header" class="fixed-top">
    <div class="container d-flex">

        <div class="logo mr-auto">
            <a href="{{route('index')}}"> <img src="{{asset('img/allthatreception_black.png')}}"> </a>

        </div>

        <nav class="nav-menu d-none d-lg-block">
            <ul>
                <li class="active"><a href="{{route('index')}}">올댓리셉션</a></li>
                <li><a href="{{route('service')}}">서비스</a></li>
                <li><a href="{{route('news')}}">뉴스</a></li>
                <li><a href="{{route('mobile')}}">APP</a></li>
                <li><a href="{{route('contact')}}">회사 소개</a></li>
                <li><a href="{{route('jobs')}}">채용</a></li>
                <li><a href="{{route('page',["slug"=>"groups"])}}">올댓그룹</a></li>

            </ul>
        </nav>

        <div class="header-social-links">
            @auth
                <a href="{{route('profile')}}" class="user"><i class="icofont-user"></i></a>
            @endauth
            @guest
                <a href="{{route('login')}}" class="user"><i class="icofont-user"></i></a>
            @endguest
        </div>

    </div>
</header>

<main id="main">
    {{ $slot }}
</main>

<footer id="footer">
    <div class="footer-top">
        <div class="container">
            <div class="row">

                <div class="col-lg-3 col-md-6">
                    <div class="footer-info">
                        <h2>All That Reception</h2>
                        <p>
                            06682 ) 서울시 서초구 방배로19길 17 (방배동) 서울빌딩 3층<br>
                            사업자등록번호 : <br><br>
                            <strong>FAX : </strong> +28 2-587-6014<br>
                            <strong>메일: </strong> recruit@allthatmodel.co.kr<br>
                        </p>


                        <div class="social-links mt-3">
                            <a href="#" class="twitter"><i class="bx bxl-twitter"></i></a>
                            <a href="#" class="facebook"><i class="bx bxl-facebook"></i></a>
                            <a href="#" class="instagram"><i class="bx bxl-instagram"></i></a>
                            <a href="#" class="google-youtube"><i class="bx bxl-youtube"></i></a>

                        </div>
                    </div>
                </div>

                <div class="col-lg-2 col-md-6 footer-links">
                    <h4>링크</h4>
                    <ul>
                        <li><i class="bx bx-chevron-right"></i> <a href="{{route('index')}}">올댓리셉션</a></li>
                        <li><i class="bx bx-chevron-right"></i> <a href="{{route('service')}}">서비스</a></li>
                        <li><i class="bx bx-chevron-right"></i> <a href="#news">뉴스</a></li>
                        <li><i class="bx bx-chevron-right"></i> <a href="#mobile">APP</a></li>
                        <li><i class="bx bx-chevron-right"></i> <a href="#contact">회사 소개</a></li>
                    </ul>
                </div>
                <div class="col-lg-3 col-md-6 footer-links">
                    <h4><br/></h4>
                    <ul>
                        <li><i class="bx bx-chevron-right"></i> <a href="{{route('jobs')}}">채용</a></li>
                        <li><i class="bx bx-chevron-right"></i> <a href="#">올댓그룹</a></li>
                        <li><i class="bx bx-chevron-right"></i> <a href="#">올댓모델</a></li>
                        <li><i class="bx bx-chevron-right"></i> <a href="#">올댓클린</a></li>

                    </ul>
                </div>


            </div>
            <div class="copyright">
                Copyright &copy; 2023 <strong><span>주식회사 올댓리셉션</span></strong>
                <br/>All Rights Reserved
            </div>
        </div>
    </div>
</footer>
<a href="#" class="back-to-top"><i class="bx bxs-up-arrow-alt"></i></a>

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
