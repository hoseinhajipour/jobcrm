@section('style')
    <link href="{{asset('css/js-profile.css')}}" rel="stylesheet">
@endsection
<div class="container">
    <div class="row">
        <div class="col-12">
            <!-- Page title -->
            <br/> <br/> <br/>

            <div class="my-5">
                <h3>채용공고 등록</h3>
                <hr>
            </div>
            <!-- Form START -->
            <form class="file-upload" wire:submit.prevent="newJob">
                @if(Auth::user()->role->name=="admin")
                    <div class="alert alert-info">
                        <label>원하는 업체를 선택하세요</label>

                        <select wire:model.defer="currentUser" class="form-control">
                            @foreach($employers as $employer)
                                <option value="{{$employer->id}}">
                                    <label>{{$employer->name}} | {{$employer->email}}</label>
                                </option>
                            @endforeach
                        </select>

                    </div>
                @endif
                <div class="row mb-5 gx-5">
                    <!-- Contact detail -->
                    <div class="col-xxl-8 mb-5 mb-xxl-0">
                        <div class="bg-secondary-soft px-4 py-5 rounded">
                            <div class="row g-3">
                                <!--  Notice title -->
                                <div class="col-md-6">
                                    <label class="form-label">공고제목 *</label>
                                    <input type="text" wire:model.defer="title" class="form-control"
                                           placeholder="공고제목..."
                                           aria-label="title">
                                </div>

                                <!-- areas of recruitment -->
                                <div class="col-md-6">
                                    <label class="form-label">모집분야 *</label>

                                    <select wire:model.defer="category_id"
                                            class="custom-select">
                                        <option selected>선택...</option>
                                        @foreach($categories as $category)
                                            <option class="form-control" value="{{$category->id}}">{{$category->title}}</option>
                                        @endforeach
                                    </select>
                                </div>


                                <div class="col-md-6">
                                    <label class="form-label">근무형태</label>
                                    <select wire:model.defer="jobtype_id" class="custom-select">
                                        <option selected>선택</option>
                                        @foreach($jobTypes as $type)
                                            <option class="form-control" value="{{$type->id}}">{{$type->title}}</option>
                                        @endforeach
                                    </select>

                                </div>
                                <div class="col-md-6">
                                    <label class="form-label">지역</label>
                                    <select wire:model.defer="area_id" class="custom-select">
                                        <option selected>선택</option>
                                        @foreach($regions as $region)
                                            <option class="form-control"
                                                    value="{{$region->id}}">{{$region->title}}</option>
                                        @endforeach
                                    </select>
                                </div>


                                <!-- type of employment -->
                                <div class="col-md-6">
                                    <label class="form-label">고용형태 *</label>

                                    <select wire:model.defer="typeOfEmployment"
                                            class="custom-select">
                                        <option selected>선택...</option>
                                        <option class="form-control" value="1">파견</option>
                                        <option class="form-control" value="2">도급</option>

                                    </select>

                                </div>


                                <!--  number of recruits -->
                                <div class="col-md-6">
                                    <label class="form-label">모집인원 *</label>
                                    <input type="text"
                                           wire:model.defer="numberOfRecruits"
                                           class="form-control"
                                           placeholder="____ 명"
                                           aria-label="title">
                                </div>


                                <!--gender -->
                                <div class="col-md-6">
                                    <label class="form-label">성별 *</label>

                                    <select wire:model.defer="gender"
                                            class="custom-select">
                                        <option selected>선택...</option>
                                        <option class="form-control" value="1">여성</option>
                                        <option class="form-control" value="2">남성</option>
                                        <option class="form-control" value="3">선택되지 않음</option>

                                    </select>

                                </div>

                                <!-- age -->
                                <div class="col-md-6">
                                    <label class="form-label">연령 *</label>

                                    <select wire:model.defer="age"
                                            class="custom-select">
                                        <option selected>선택...</option>
                                        <option class="form-control" value="1">20세~29세</option>
                                        <option class="form-control" value="2">30세~39세</option>

                                    </select>

                                </div>

                                <!-- Education -->
                                <div class="col-md-6">
                                    <label class="form-label">학력 *</label>

                                    <select wire:model.defer="education"
                                            class="custom-select">
                                        <option selected>선택...</option>
                                        <option class="form-control" value="1">고등학교 졸업 이상</option>
                                        <option class="form-control" value="2">대학 (2,3)년제 졸업 이상</option>
                                        <option class="form-control" value="3">대학교 (4년)제 졸업 이상</option>
                                        <option class="form-control" value="4">대학원 졸업 이상</option>

                                    </select>

                                </div>


                                <!-- Day of the week -->
                                <div class="col-md-6">
                                    <label class="form-label">요일 *</label>

                                    <select wire:model.defer="dayOfWeek"
                                            class="custom-select">
                                        <option selected>선택...</option>
                                        <option class="form-control" value="1">주 1일</option>
                                        <option class="form-control" value="2">주 2일</option>
                                        <option class="form-control" value="3">주 3일</option>
                                        <option class="form-control" value="4">주 4일</option>
                                        <option class="form-control" value="5">주 5일</option>
                                        <option class="form-control" value="6">주 6일</option>
                                        <option class="form-control" value="7">주 7일</option>
                                        <option class="form-control" value="8">주말근무</option>

                                    </select>

                                </div>


                                <!-- working time -->
                                <div class=" col-md-6">
                                    <div class="field item form-group ">

                                        <label class="col-form-label label-align">출근시간<span class="required">*</span></label>

                                        <input class="form-control"
                                               wire:model.defer="workingTime"
                                               class='time' type="time" name="time"
                                               required='required'>

                                    </div>
                                </div>

                                <div class=" col-md-6">
                                    <div class="field item form-group ">

                                        <label class="col-form-label label-align">퇴근시간<span class="required">*</span></label>

                                        <input wire:model.defer="closingTime"
                                               class="form-control time"
                                               type="time"
                                               name="time">

                                    </div>
                                </div>

                                <!-- break time -->
                                <div class="col-md-6">
                                    <label class="form-label">휴게시간 </label>

                                    <select wire:model.defer="breakTime"
                                            class="custom-select">
                                        <option selected>선택...</option>
                                        <option class="form-control" value="1">없음</option>
                                        <option class="form-control" value="2">30분</option>
                                        <option class="form-control" value="3">1시간</option>
                                        <option class="form-control" value="4">1시간 30분</option>

                                    </select>

                                </div>

                                <!-- preferentialconditions -->
                                <div class="col-md-6">
                                    <label class="form-label">우대조건</label>

                                    <select wire:model.defer="preferentialConditions"
                                            class="custom-select">
                                        <option selected>선택...</option>
                                        <option class="form-control" value="1">경력자</option>
                                        <option class="form-control" value="2">장기근무 가능자</option>
                                        <option class="form-control" value="3">사무업무 가능자</option>
                                    </select>

                                </div>


                                <!-- salary -->
                                <div class="col-md-6">
                                    <label class="form-label">급여 *</label>
                                    <input type="text" wire:model.defer="salary"
                                           class="form-control" placeholder="---,---,--- 원"
                                           aria-label="salary">
                                </div>

                                <!-- Damdam place name -->
                                <div class="col-md-6">
                                    <label class="form-label">담담지명 *</label>
                                    <input type="text" wire:model.defer="damdamPlaceName"
                                           class="form-control" placeholder="담담지명..."
                                           aria-label="salary">
                                </div>

                                <!-- pick -->
                                <div class="col-md-12">
                                    <div class="bg-secondary-soft px-3 py-4 rounded">
                                        <div class="row g-3">

                                            <div class="form-check form-check-inline">
                                                <input class="form-check-input"
                                                       wire:model.defer="mealIncluded"
                                                       type="checkbox" value="1">
                                                <label class="form-check-label" for="inlineCheckbox1">식대포함</label>
                                            </div>
                                            <div class="form-check form-check-inline">
                                                <input class="form-check-input"
                                                       wire:model.defer="negotiable"
                                                       type="checkbox" value="1">
                                                <label class="form-check-label" for="inlineCheckbox2">협의가능</label>
                                            </div>
                                            <div class="form-check form-check-inline">
                                                <input class="form-check-input"
                                                       wire:model.defer="probationPeriod"
                                                       type="checkbox" value="1">
                                                <label class="form-check-label" for="inlineCheckbox3">수습기간 있음</label>
                                            </div>
                                            <div class="form-check form-check-inline">
                                                <input class="form-check-input"
                                                       wire:model.defer="performancePay"
                                                       type="checkbox" value="1">
                                                <label class="form-check-label" for="inlineCheckbox4">성과급</label>
                                            </div>

                                        </div>
                                    </div>
                                </div>

                                <!-- Phone number -->
                                <div class="col-md-6">
                                    <label class="form-label">연락처 *</label>
                                    <input type="text" wire:model.defer="contact"
                                           class="form-control" placeholder="예: +82 10 1234 5678"
                                           aria-label="Phone number">
                                </div>

                                <!-- fax number -->
                                <div class="col-md-6">
                                    <label class="form-label">팩스번호</label>
                                    <input type="text" wire:model.defer="faxNumber"
                                           class="form-control" placeholder="예: +82 2 123 4567"
                                           aria-label="Phone number">
                                </div>

                                <!-- Email -->
                                <div class="col-md-6">
                                    <label for="inputEmail4" class="form-label">E-mail 주소 *</label>
                                    <input type="email" wire:model.defer="email"
                                           placeholder="예: ATR@allthatreception.com"
                                           class="form-control">
                                </div>
                                <!-- Address -->
                                <div class="col-md-6">
                                    <label class="form-label">근무지 주소 *</label>
                                    <input type="text" wire:model.defer="address"
                                           class="form-control"
                                           placeholder="예: 06682,서울시 서초구 방배로19길 17 (방배동) 서울빌딩 3층"
                                           aria-label="Address">
                                </div>

                                <!-- cover letter -->
                                <div class="col-md-12">
                                    <label class="form-label">자세한 내용 *</label>
                                    <textarea class="form-control" wire:model.defer="description"
                                              placeholder="자세한 내용 ..."
                                              rows="5"></textarea>

                                </div>


                                <div class="col-md-12 ">
                                    <div class="bg-secondary-soft px-3 py-4 rounded">
                                        <div class="row g-3">
                                            <div class="form-check">
                                                <input class="agree-check"
                                                       type="checkbox" wire:model.defer="agree">
                                                <label for="exampleCheck1">당사는 본 채용건과 관련하여 사실임을 증영합니다!</label>
                                            </div>
                                        </div>

                                    </div>
                                </div>


                            </div> <!-- Row END -->
                        </div>
                    </div>
                </div>

                <!-- button -->
                <div class="gap-3 d-md-flex justify-content-md-end text-center">
                    <button type="submit" {{ $agree ? '' : 'disabled' }} id="registration"
                            class="btn btn-primary btn-lg">

                        <div wire:loading class="text-center">
                            <div class="spinner-border" role="status">
                            </div>
                        </div>
                        <div wire:loading.remove>
                            등록
                        </div>
                    </button>
                </div>

                <br/> <br/> <br/>

            </form>
            <!-- Form END -->
        </div>
    </div>
</div>
