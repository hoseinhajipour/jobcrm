<!doctype html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="csrf-token" content="{{ csrf_token() }}">

    <title>@yield('title') | {{ config('app.name') }}</title>

    <livewire:styles/>
    <link rel="stylesheet" href="{{ mix('css/app.css') }}">

    <!-- Vendor CSS Files -->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="vendor/icofont/icofont.min.css" rel="stylesheet">
    <link href="vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
    <link href="vendor/venobox/venobox.css" rel="stylesheet">
    <link href="vendor/owl.carousel/assets/owl.carousel.min.css" rel="stylesheet">
    <link href="vendor/aos/aos.css" rel="stylesheet">

    <!-- Template Main CSS File -->
    <link href="css/style.css" rel="stylesheet" >
    <!-- Load Tempalte CSS -->
    <link rel="stylesheet" href="css/templatemo.css">
    <!-- Custom CSS -->
    <link rel="stylesheet" href="css/custom.css">
</head>
<body>
<!-- ======= Header ======= -->
<header id="header" class="fixed-top">
    <div class="container d-flex">

        <div class="logo mr-auto">
            <a href="index.html"> <img src="img/allthatreception_black.png"> </a>

        </div>

        <nav class="nav-menu d-none d-lg-block">
            <ul>
                <li class="active"><a href="index.html">올댓리셉션</a></li>
                <li><a href="#service">서비스</a></li>
                <li><a href="#news">뉴스</a></li>
                <li><a href="#mobile">APP</a></li>
                <li><a href="#contact">회사 소개</a></li>
                <li><a href="job.html">채용</a></li>
                <li><a href="#">올댓그룹</a></li>

            </ul>
        </nav><!-- .nav-menu -->

        <div class="header-social-links">
            <a href="signup_login.html" class="user"><i class="icofont-user"></i></a>

        </div>

    </div>
</header><!-- End Header -->

<main id="main">
    {{ $slot }}
</main>


<!-- ======= Footer ======= -->
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
                        <li><i class="bx bx-chevron-right"></i> <a href="index.html">올댓리셉션</a></li>
                        <li><i class="bx bx-chevron-right"></i> <a href="#service">서비스</a></li>
                        <li><i class="bx bx-chevron-right"></i> <a href="#news">뉴스</a></li>
                        <li><i class="bx bx-chevron-right"></i> <a href="#mobile">APP</a></li>
                        <li><i class="bx bx-chevron-right"></i> <a href="#contact">회사 소개</a></li>
                    </ul>
                </div>
                <div class="col-lg-3 col-md-6 footer-links">
                    <h4><br/></h4>
                    <ul>
                        <li><i class="bx bx-chevron-right"></i> <a href="job.html">채용</a></li>
                        <li><i class="bx bx-chevron-right"></i> <a href="#">올댓그룹</a></li>
                        <li><i class="bx bx-chevron-right"></i> <a href="#">올댓모델</a></li>
                        <li><i class="bx bx-chevron-right"></i> <a href="#">올댓클린</a></li>

                    </ul>
                </div>
                <!-- <div class="col-lg-4 col-md-6 footer-newsletter">
                   <h4>Our Newsletter</h4>
                   <p>Tamen quem nulla quae legam multos aute sint culpa legam noster magna</p>
                   <form action="" method="post">
                     <input type="email" name="email"><input type="submit" value="Subscribe">
                   </form>

                 </div> -->


            </div>
            <div class="copyright">
                Copyright &copy; 2023 <strong><span>주식회사 올댓리셉션</span></strong>
                <br/>All Rights Reserved
            </div>
        </div>
    </div>
</footer><!-- End Footer -->

<livewire:scripts/>
<script src="{{ mix('js/app.js') }}"></script>
<script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
<x-livewire-alert::scripts/>


<!-- Bootstrap -->
<script src="js/bootstrap.bundle.min.js"></script>
<!-- Load jQuery require for isotope -->
<script src="js/jquery.min.js"></script>
<!-- Isotope -->
<script src="js/isotope.pkgd.js"></script>

<!-- Templatemo -->
<script src="js/templatemo.js"></script>
<!-- Custom -->
<script src="js/custom.js"></script>


<a href="#" class="back-to-top"><i class="bx bxs-up-arrow-alt"></i></a>

<!-- Vendor JS Files -->
<script src="vendor/jquery/jquery.min.js"></script>
<script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
<script src="vendor/jquery.easing/jquery.easing.min.js"></script>
<script src="vendor/php-email-form/validate.js"></script>
<script src="vendor/isotope-layout/isotope.pkgd.min.js"></script>
<script src="vendor/venobox/venobox.min.js"></script>
<script src="vendor/owl.carousel/owl.carousel.min.js"></script>
<script src="vendor/aos/aos.js"></script>

<!-- Template Main JS File -->
<script src="js/main.js"></script>


<!-- Page Script -->
<script>
    $(window).load(function () {
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
</body>
</html>
