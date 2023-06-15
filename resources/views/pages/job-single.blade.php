@section('style')

@endsection
@section('title',$job->title)
<main>

    <!-- Hero Area Start-->
    <div class="slider-area ">
        <div class="single-slider section-overly slider-height2 d-flex align-items-center"
             data-background="img/allthatreception_b.png">
            <div class="container">
                <div class="row">
                    <div class="col-xl-12">
                        <div class="hero-cap text-center">
                            <h2>공고제목</h2>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Hero Area End -->
    <!-- job post company Start -->
    <div class="job-post-company pt-120 pb-120">
        <div class="container">
            <div class="row justify-content-between">
                <!-- Left Content -->
                <div class="col-xl-7 col-lg-8">
                    <!-- job single -->
                    <div class="single-job-items mb-50">
                        <div class="job-items">
                            <div class="company-img company-img-details">
                                <a href="#"><img src="{{asset(Voyager::image($job->user->avatar))}}" alt=""></a>
                            </div>
                            <div class="job-tittle">
                                <a href="#">
                                    <h4>{{$job->title}}</h4>
                                </a>
                                <ul>
                                    <li>{{$job->user->name}}</li>
                                    <li><i class="fas fa-map-marker-alt"></i>{{$job->address}}</li>
                                    <li>{{$job->salary}}$</li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <!-- job single End -->

                    <div class="job-post-details">
                        <div class="post-details1 mb-50">
                            <!-- Small Section Tittle -->
                            <div class="small-section-tittle">
                                <h4>업무 설명서</h4>
                            </div>
                            <p>
                                {!! $job->description !!}
                            </p>
                        </div>

                    </div>

                </div>
                <!-- Right Content -->
                <div class="col-xl-4 col-lg-4">
                    <div class="post-details3  mb-50">
                        <!-- Small Section Tittle -->
                        <div class="small-section-tittle">
                            <h4>작업 개요</h4>
                        </div>
                        <ul>
                            <li>업직종 : <span>12 Aug 2019</span></li>
                            <li>고용형태 : <span>New York</span></li>
                            <li>근무요일 : <span>02</span></li>
                            <li>근무시간 : <span>Full time</span></li>
                            <li>급여 : <span>$7,800 yearly</span></li>
                            <li>성별 . 연령 . 학력 : <span>12 Sep 2020</span></li>
                            <li>모집인원 : <span>12 Sep 2020</span></li>
                            <li>복리후생 : <span>12 Sep 2020</span></li>
                            <li>접수방법 : <span>12 Sep 2020</span></li>
                            <li>담담지명 : <span>12 Sep 2020</span></li>
                            <li>연락처 : <span>{{$job->contact}}</span></li>
                            <li>이메일 : <span>{{$job->email}}</span></li>
                        </ul>
                        <div class="apply-btn2">
                            @auth
                                <button wire:click="SendResume" class="btn">지원하기</button>
                            @endauth

                            @guest
                                <a href="{{route('login')}}" class="btn">지원하기</a>
                            @endguest

                        </div>
                    </div>
                    <div class="post-details4  mb-50">
                        <!-- Small Section Tittle -->
                        <div class="small-section-tittle">
                            <h4>회사 정보</h4>
                        </div>

                        <ul>
                            <li>회사명: <span>Colorlib </span></li>
                            <li>근무지 주소 : <span> colorlib.com</span></li>
                            <li>Email: <span>carrier.colorlib@gmail.com</span></li>
                            <li>FAX : <span> colorlib.com</span></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- job post company End -->

</main>
