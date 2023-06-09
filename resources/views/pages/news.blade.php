<section id="portfolio" class="portfolio">
    <div class="container">

        <div class="section-title" data-aos="fade-up">
            <br/><br/><br/>
            <h2>뉴스</h2>
            <hr>
        </div>


        <div class="row">
            <div class="col-12">


                <div class="card-deck">
                    <div class="row mb-5 gx-5 ">


                        @foreach($posts as $post)
                            <div class="col-md-4 py-5">
                                <div class="card ">
                                    <img class="card-img-top" src="{{Voyager::image($post->image)}}"
                                         alt="Card image cap">
                                    <div class="card-body">
                                        <h5 class="card-title">{{$post->title}}</h5>
                                        <p class="card-text">{{$post->excerpt}}</p>
                                    </div>
                                    <a href="{{route('post',["slug"=>$post->slug])}}" class="btn btn-primary">보기</a>
                                    <div class="card-footer">
                                        <small class="text-muted">최근 3분 전에 업데이트됨</small>
                                    </div>
                                </div>
                            </div>
                        @endforeach
                    </div>
                </div>
            </div>
        </div>


    </div>
</section>
