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
                                        @foreach($jobTypes as $type)
                                            <option class="form-control" value="{{$type->id}}">{{$type->title}}</option>
                                        @endforeach
                                    </select>

                                </div>

                                <!--  -->
                                <div class="col-md-4">
                                    <label class="form-label">지역</label>

                                    <select class="custom-select">
                                        <option selected>선택</option>
                                        @foreach($regions as $region)
                                            <option class="form-control" value="{{$region->id}}">{{$region->title}}</option>
                                        @endforeach
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
    <div class="my-2" >
        {{ $jobs->links() }}
    </div>
    <!--Pagination End  -->
</div>

