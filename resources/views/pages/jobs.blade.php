<div>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.1/css/all.min.css"
          integrity="sha256-2XFplPlrFClt0bIdPgpz8H7ojnk10H69xRqd9+uTShA=" crossorigin="anonymous"/>

    <div class="container">


        <div class="row">
            <div class="col-12">
                <!-- Page title -->
                <br/> <br/> <br/>

                <div class="section-title " data-aos="fade-up">
                    <br/><br/><br/>
                    <h1>채용정보</h1>
                    <hr>
                </div>


                <!-- Form START -->
                <form class="file-upload">


                    <!-- Contact detail -->
                    <div class="col-xxl-8 mb-5 mb-xxl-0">
                        <div class="bg-secondary-soft px-4 py-5 rounded">
                            <div class="row g-3">

                                <!--  -->
                                <div class="col-md-4">
                                    <label class="form-label">작업 범주</label>

                                    <select class="custom-select">
                                        <option selected>선택</option>
                                        @foreach($categories as $category)
                                            <option class="form-control" value="{{$category->id}}">{{$category->title}}</option>
                                        @endforeach
                                    </select>

                                </div>


                                <!--  -->
                                <div class="col-md-4">
                                    <label class="form-label">근무형태</label>

                                    <select class="custom-select">
                                        <option selected>선택</option>
                                        <option class="form-control" value="1">취업</option>
                                        <option class="form-control" value="2">아르바이트</option>
                                        <option class="form-control" value="3">프리랜서</option>
                                    </select>

                                </div>

                                <!--  -->
                                <div class="col-md-4">
                                    <label class="form-label">지역</label>

                                    <select class="custom-select">
                                        <option selected>선택</option>
                                        <option class="form-control" value="1">서울</option>
                                        <option class="form-control" value="2">경기</option>
                                        <option class="form-control" value="3">인천</option>
                                        <option class="form-control" value="1">대전</option>
                                        <option class="form-control" value="2">세종</option>
                                        <option class="form-control" value="3">충남</option>
                                        <option class="form-control" value="1">충북</option>
                                        <option class="form-control" value="2">광주</option>
                                        <option class="form-control" value="3">전남</option>
                                        <option class="form-control" value="1">전북</option>
                                        <option class="form-control" value="2">대구</option>
                                        <option class="form-control" value="3">경북</option>
                                        <option class="form-control" value="1">부산</option>
                                        <option class="form-control" value="2">울산</option>
                                        <option class="form-control" value="3">경남</option>
                                        <option class="form-control" value="2">강원</option>
                                        <option class="form-control" value="3">제주</option>
                                    </select>

                                </div>


                            </div> <!-- Row END -->
                        </div>
                    </div>


                </form> <!-- Form END -->


                <!-- Right content -->
                <div class="col-xl-12 col-lg-12 col-md-8">
                    <!-- Featured_job_start -->
                    <section class="featured-job-area">
                        <div class="container">

                            @foreach($jobs as $job)
                            <div class="single-job-items mb-30">
                                <div class="job-items">
                                    <div class="company-img">
                                        <a href="#"><img src="img/job-list1.png" alt=""></a>
                                    </div>
                                    <div class="job-tittle job-tittle2">
                                        <a href="{{route('job',["slug"=>$job->slug])}}">
                                            <h4>Digital Marketer</h4>
                                        </a>
                                        <ul>
                                            <li>Creative Agency</li>
                                            <li><i class="fas fa-map-marker-alt"></i>서울</li>
                                            <li>$3500 - $4000</li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="items-link items-link2 f-right">
                                    <a href="{{route('job',["slug"=>$job->slug])}}">취업</a>
                                    <span>7 시간 전</span>
                                </div>
                            </div>
                            @endforeach
                        </div>
                    </section>
                    <!-- Featured_job_end -->
                </div>
            </div>
        </div>
    </div>
    <!-- Job List Area End -->
    <!--Pagination Start  -->
    <div class="pagination-area pb-115 text-center">
        <div class="container">
            <div class="row">
                <div class="col-xl-12">
                    <div class="single-wrap d-flex justify-content-center">
                        <nav aria-label="Page navigation example">
                            <ul class="pagination justify-content-start">
                                <li class="page-item active"><a class="page-link" href="#">01</a></li>
                                <li class="page-item"><a class="page-link" href="#">02</a></li>
                                <li class="page-item"><a class="page-link" href="#">03</a></li>
                                <li class="page-item"><a class="page-link" href="#"><span class="ti-angle-right"></span></a>
                                </li>
                            </ul>
                        </nav>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--Pagination End  -->
</div>

