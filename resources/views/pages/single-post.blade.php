<div>
    <!-- ======= Breadcrumbs ======= -->
    <section id="breadcrumbs" class="breadcrumbs">
        <div class="container">

            <ol>
                <li><a href="{{route('index')}}">홈</a></li>
                <li><a href="{{route('news')}}">뉴스</a></li>
            </ol>
            <h2>{{$post->title}}</h2>

        </div>
    </section><!-- End Breadcrumbs -->

    <!-- ======= Portfolio Details Section ======= -->
    <section id="portfolio-details" class="portfolio-details">
        <div class="container">

            <div class="portfolio-details-container">

                <div class="owl-carousel portfolio-details-carousel">
                    <img src="{{Voyager::image($post->image)}}" class="img-fluid" alt="">

                </div>

                <div class="portfolio-info">
                    <h3>뉴스 정보</h3>
                    <ul>
                        <li><strong>범주 :</strong> {{$post->category->name??""}}</li>
                        <li><strong>고객 :</strong> {{$post->customer}}</li>
                        <li><strong>뉴스 날짜 :</strong> {{$post->created_at}}</li>
                        <li><strong>뉴스 URL :</strong> <a href="#">{{$post->url}}</a></li>
                    </ul>
                </div>

            </div>

            <div class="portfolio-description">
                <h2>{{$post->title}}</h2>
                <p>
                    {!! $post->body !!}
                </p>
            </div>

        </div>
    </section><!-- End Portfolio Details Section -->

</div>
