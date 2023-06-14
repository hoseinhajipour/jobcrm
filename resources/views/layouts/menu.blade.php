<header id="header" class="fixed-top">
    <div class="container d-flex">

        <div class="logo mr-auto">
            <a href="{{route('index')}}"> <img src="{{asset('img/allthatreception_black.png')}}"> </a>

        </div>

        <nav class="nav-menu d-none d-lg-block">
            @guest
                <ul>
                    <li class="active"><a href="{{route('index')}}">올댓리셉션</a></li>
                    <li><a href="{{route('service')}}">서비스</a></li>
                    <li><a href="{{route('news')}}">뉴스</a></li>
                    <li><a href="{{route('mobile')}}">APP</a></li>
                    <li><a href="{{route('contact')}}">회사 소개</a></li>
                    <li><a href="{{route('jobs')}}">채용</a></li>
                    <li><a href="{{route('page',["slug"=>"groups"])}}">올댓그룹</a></li>
                </ul>
            @endguest
            @auth

                @if(Auth::user()->role->name=="employer" || Auth::user()->role->name=="Administrator")
                    <ul>
                        <li class="active"><a href="{{route('index')}}">올댓리셉션</a></li>
                        <li><a href="{{route('NewJob')}}">채용공고 등록</a></li>
                        <li><a href="#">전체 공고</a></li>
                        <li><a href="#">미열람 이력서</a></li>
                        <li><a href="#">열람 이력서</a></li>
                        <li><a href="{{route('profile')}}">프로필</a></li>
                        <li><a href="{{route('logout')}}">로그아웃</a></li>
                    </ul>
                @endif

                @if(Auth::user()->role->name=="job-seeker")
                    <ul>
                        <li class="active"><a href="{{route('index')}}">올댓리셉션</a></li>
                        <li><a href="{{route('profile')}}">이력서</a></li>
                        <li><a href="#">지원완료</a></li>
                        <li><a href="{{route('NewExam')}}">자가진단표</a></li>
                        <li><a href="#">이력서 열람</a></li>
                        <li><a href="#">추천 직업</a></li>
                        <li><a href="#">로그아웃</a></li>


                    </ul>
                @endif
            @endauth
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
