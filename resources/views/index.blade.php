@section('title', 'Home')

<div class="main-banner" id="top">
    <video autoplay muted loop id="bg-video">
        <source src="{{asset('img/ATR_MPH_HP.mp4')}}" type="video/mp4"/>
    </video>

    <div class="video-overlay header-text">
        <div class="text-center">

            <h2><em>Better</em> jobs</h2>
            <h2>Better <em>talent</em></h2>
            <h2><em>share it</em> sooner </h2>

        </div>
    </div>
</div>

<section id="service" class="py-5 mb-5">
    <div class="container">
        <div class="recent-work-header row text-center pb-5">
        </div>
        <div class="row gy-5 g-lg-5 mb-4">

            <!-- Start Recent Work -->
            <div class="col-md-4 mb-3">
                <a href="#" class="recent-work card border-0 shadow-lg overflow-hidden">
                    <h3 class="card-title light-300">기업 서비스 </h3>
                    <img class="recent-work-img card-img" src="{{asset('img/bussines.png')}}" alt="Card image">
                    <div class="recent-work-vertical card-img-overlay d-flex align-items-end">
                        <div class="recent-work-content text-start mb-3 ml-3 text-dark">

                            <p class="card-text">올댓리셉션에서는 서비스직에 적합한 인재를 타사이트보다 빠르게 만나볼 수 있습니다. <br />
                                올댓리셉션의 우수 서비스인 인증마크를 받은 지원자들을 빠르게 만나보세요.</p>
                        </div>
                    </div>
                </a>
            </div><!-- End Recent Work -->

            <!-- Start Recent Work -->
            <div class="col-md-4 mb-3">
                <a href="#" class="recent-work card border-0 shadow-lg overflow-hidden">
                    <h3 class="card-title light-300">인공 지능</h3>
                    <img class="recent-work-img card-img" src="{{asset('img/artificial_intelligence.png')}}" alt="Card image">
                    <div class="recent-work-vertical card-img-overlay d-flex align-items-end">
                        <div class="recent-work-content text-start mb-3 ml-3 text-dark">

                            <p class="card-text">수천수만의 기업을 직면하여 주저할 때, 지원자의 능력을 파악하고 자신의 한계를 넘어지기
                                도와주고 자기발전과 잘 어울리고 적합한 선택을 추천해 드립니다.
                                <br /> 빅 데이터를 활용하여 기업 특성과 맞은 인재를 1차로 선별하고,
                                채용 공고의 조건을 고려하여 최종 선별을 통해 적합한 인재를 추천해 드립니다.
                            </p>
                        </div>
                    </div>
                </a>
            </div><!-- End Recent Work -->

            <!-- Start Recent Work -->
            <div class="col-md-4 mb-3">
                <a href="#" class="recent-work card border-0 shadow-lg overflow-hidden">
                    <h3 class="card-title light-300">구직자 서비스</h3>
                    <img class="recent-work-img card-img" src="{{asset('img/jobseeker.png')}}" alt="Card image">
                    <div class="recent-work-vertical card-img-overlay d-flex align-items-end">
                        <div class="recent-work-content text-start mb-3 ml-3 text-dark">

                            <p class="card-text">올댓리셉션에서는 다양한 서비스 경험이 가능합니다.
                                <br /> 다양한 분야의 리셉션 채용건을 확인하고 지원할 수 있어요.
                                <br /> 다양한 경험을 통해 서비스 경력을 쌓아보세요.
                            </p>
                        </div>
                    </div>
                </a>
            </div><!-- End Recent Work -->

        </div>
    </div>
</section>

<section id="news" class="about">
    <div class="container">

        <div class="row">
            <div class="col-lg-6" data-aos="zoom-in">
                <img src="{{asset('img/about.jpg')}}" class="img-fluid" id="employer-news" alt="">
            </div>
            <div class="col-lg-6 d-flex flex-column justify-contents-center" data-aos="fade-left">
                <div class="content pt-4 pt-lg-0">
                    <h2>기업 뉴스 </h2> <br />
                    <h4>면접관을 위한 면접 진행  </h4>
                    <p class="font">
                        예측 가능하고 구조화된 질문에 의존하기 보다 다음 단계의 생각이 필요한 답변을
                        들었을 때, 지원자에게 특히 적합한 인터뷰 질문을 할 수 있습니다. <br/>
                        실제 사람을 보고있다는 만족감이 들때까지 들은 내용을 명확하게 하여 단순한 질문 및 답변이
                        아닌 진정한 대화형 대화를 나누는 시간을 갖도록 합니다.

                    </p>

                    <br/><br/>

                    <div class="atr-center">
                        <a href="{{route('news')}}">
                            <button type="submit">보기</button>
                        </a>
                    </div>

                </div>
            </div>
        </div>

    </div>
</section>

<section id="news" class="features">
    <div class="container">

        <div class="row">
            <div class="col-lg-6 mt-2 mb-tg-0 order-2 order-lg-1">
                <div class="nav nav-tabs flex-column">
                    <div class="nav-item" data-aos="fade-up">
                        <h2>구직자 뉴스 </h2> <br/>
                        <h4>내가 하고싶은 일 찾는 방법 </h4>
                        <p class="font">
                            인간은 진화적으로 불확실성을 싫어한다고 합니다. 그래서 "내가 원하는 걸 나도 모르겠다."
                            "지금 하는 일이 내가 원하는 것인지 확실하지 않다." "나만의 커리어를 찾고 싶다."
                            등의 이야기를 하게 됩니다. 불확실성은 스트레스를 유발하고 재생산과 자손
                            양육이라는 생명체의 본래 활동을 위축시키기 때문인데요.

                        </p>

                        <br/><br/>

                        <div class="atr-center">
                            <a href="{{route('news')}}">
                                <button type="submit" >보기 </button>
                            </a>
                        </div>

                    </div>

                </div>
            </div>
            <div class="col-lg-6 order-1 order-lg-2" data-aos="zoom-in">
                <div class="tab-content">
                    <div class="tab-pane active show" id="tab-1">
                        <figure>
                            <img src="{{asset('img/features-1.png')}}" alt="" class="img-fluid">
                        </figure>
                    </div>

                </div>
            </div>

        </div>
</section>

<section id="mobile" class="mobile">
    <div class="container">

        <div class="row">
            <div class="col-lg-6" data-aos="zoom-in">
                <img src="{{asset('img/phone.png')}}" class="img-fluid" id="mobile-login" alt="">
            </div>
            <div class="col-lg-6 d-flex flex-column justify-contents-center" data-aos="fade-left">
                <div class="content pt-4 pt-lg-0">
                    <br/>
                    <h2 style="color:white;">모바일 앱 플랫폼 </h2> <br/><br/>

                    <p style="color:white;" class="font-italic">
                        모바일 애플리케이션을 다운로드하여 더 쉽게 서비스를 이용하세요 !
                        <br/><br/><br/><br/>

                    <div class="app-icons">
                        <a href="https://apps.apple.com/app/id1551353775">
                            <img
                                class="apple"
                                src="{{asset('img/appstore.png')}}"
                                alt="Download on the App Store">
                        </a>
                        <a href='https://play.google.com/store/apps/details?id=com.stagescycling.stages'>
                            <img
                                class="android"
                                alt='Get it on Google Play'
                                src='{{asset('img/googleplay.png')}}'/>
                        </a>
                    </div>

                </div>
            </div>
        </div>

    </div>
</section>
<section id="contact" class="contact section-bg">
    <div class="container">
        <div class="row">

            <div class="col-lg-5 d-flex align-items-stretch" data-aos="fade-right">
                <div class="info">
                    <div class="address">
                        <i class="icofont-google-map"></i>
                        <h4>주소 :</h4>
                        <p>06682 ) 서울시 서초구 방배로19길 17 (방배동) 서울빌딩 3층</p>
                    </div>

                    <div class="email">
                        <i class="icofont-envelope"></i>
                        <h4>메일:</h4>
                        <p>recruit@allthatmodel.co.kr</p>
                    </div>
                    </div>

                        <div class="phone">
                            <i class="icofont-phone"></i>
                            <h4>FAX :</h4>
                            <p>+28 2-587-6014</p>
                        </div>

                        <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d559.6727889185316!2d126.99369057766216!3d37.484623840526986!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x357ca198996afde9%3A0xb5cb4b488f0c7c3a!2z7Jis64yT66qo6424!5e0!3m2!1sen!2skr!4v1684133986801!5m2!1sen!2skr"
                                frameborder="0" style="border:0; width: 100%; height: 290px;" allowfullscreen></iframe>

                    </div>

                </div>
                <div class="col-lg-7 mt-5 mt-lg-0 d-flex align-items-stretch" data-aos="fade-left">
                    <form action="#" method="post" role="form" class="php-email-form">
                        <div class="form-row">
                            <div class="form-group col-md-12  ">
                                <div class="text-center pt-4 pt-lg-0" data-aos="fade-up">
                                    <h2>회사 소개</h2>
                                </div>
                                <br /><br />
                                <p class="text-center " >
                                    2011년 창업 후 올댓모델은 인재를 원하는 기업과 인재를 연결하는 징검다리가 되어 보다 정교한 취업 모델을 완성하여,
                                    국내 유일의 리셉셔니스트 전문 에이전시로 업계에 명성을 쌓으며 영향력을 넓혀 나가고 있습니다.
                                    <br /><br />
                                    크고 작은 개울이 강을 향해 흐르듯 더 나은 인재를 찾으려는 오늘도 올댓모델에서는 인재를 찾는 기업과 꿈을 실현하려는
                                    청춘이 만나 새로운 미래를 시작합니다. 올댓모델은 더욱 넉넉한 기회의 강물이 되어 꿈의 바다로 함께 나아가고 싶습니다.

                                </p>
                                <br/><br/>


                                <div class="text-center">
                                    <button type="button" class="btn btn-primary btn-lg btn-block">올댓그룹</button>
                                </div>
                    </form>
                </div>
        </div>

    </div>
</section>

