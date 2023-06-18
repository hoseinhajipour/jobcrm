@section('style')

    <link href="{{asset('css/style.css?v=1.0')}}" rel="stylesheet">

    <link href="{{asset('css/js-profile.css')}}" rel="stylesheet">

@endsection

<div class="container">
    <div class="row">
        <div class="col-12">
            <!-- Page title -->
            <br/> <br/> <br/>

            <div class="my-5">
                <h3>자가진단표</h3>
                <hr>
            </div>

            @if($ExamResult)
                <div class="card shadow my-5">
                    <div class="card-body">
                        <table class="table table-striped">
                            <tbody>
                            <tr>
                                <th scope="row">자기관리 .이미지</th>
                                <td>{{$ExamResult->self_care}}</td>
                            </tr>
                            <tr>
                                <th scope="row">전달력 의사</th>
                                <td>{{$ExamResult->communicative_power}}</td>
                            </tr>
                            <tr>
                                <th scope="row">대처능력 .소</th>
                                <td>{{$ExamResult->reduced_ability_to_cope}}</td>
                            </tr>
                            <tr>
                                <th scope="row">능력 직무</th>
                                <td>{{$ExamResult->ability_job}}</td>
                            </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            @else
                <form class="file-upload" id="form" wire:submit.prevent="SendNewExam">

                    <div class="col-xxl-12">
                        <div class="bg-secondary-soft px-4 py-5 rounded">
                            <div class="row g-3">
                                @foreach($questions as $question)
                                    <div class="col-md-12">
                                        <div class="{{$loop->index % 2==0?"bg-secondary-soft":""}}  px-4 py-3 rounded">
                                            <div class="row g-3">
                                                <label for="exampleInputPassword3" class="form-label">
                                                    <h5>{{$question->id}}. {{$question->title}}</h5></label>

                                                <div class="col-md-12">
                                                    <div class="bg-secondary-soft px-4 py-3 rounded float-right">
                                                        <div class="row g-3">
                                                            <div class="form-check form-check-inline ">
                                                                <input class="form-check-input" type="radio"
                                                                       wire:model.defer="questionValues.{{$question->id}}"
                                                                       name="question_{{$question->id}}"
                                                                       value="1">
                                                                <label class="form-check-label">1</label>
                                                            </div>
                                                            <div class="form-check form-check-inline">
                                                                <input class="form-check-input" type="radio"
                                                                       wire:model.defer="questionValues.{{$question->id}}"
                                                                       name="question_{{$question->id}}"
                                                                       value="2">
                                                                <label class="form-check-label"
                                                                       for="inlineRadio2">2</label>
                                                            </div>
                                                            <div class="form-check form-check-inline">
                                                                <input class="form-check-input" type="radio"
                                                                       wire:model.defer="questionValues.{{$question->id}}"
                                                                       name="question_{{$question->id}}"
                                                                       value="3">
                                                                <label class="form-check-label">3</label>
                                                            </div>
                                                            <div class="form-check form-check-inline">
                                                                <input class="form-check-input" type="radio"
                                                                       name="question_{{$question->id}}"
                                                                       wire:model.defer="questionValues.{{$question->id}}"
                                                                       value="4">
                                                                <label class="form-check-label">4</label>
                                                            </div>
                                                            <div class="form-check form-check-inline">
                                                                <input class="form-check-input" type="radio"
                                                                       name="question_{{$question->id}}"
                                                                       wire:model.defer="questionValues.{{$question->id}}"
                                                                       value="5">
                                                                <label class="form-check-label">5</label>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                @endforeach
                            </div>
                        </div>
                    </div>

                    <div class="gap-3 d-md-flex justify-content-md-end text-center">
                        <button type="submit" class="btn btn-primary btn-lg">제출</button>
                    </div>
                    <br/> <br/> <br/>
                </form>
            @endif
        </div>
    </div>
</div>
