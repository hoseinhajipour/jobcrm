@section('style')
    <link rel="stylesheet" href="{{asset('css/js-profile.css')}}">
@endsection

<div class="container">
    <div class="row">
        <div class="col-12">
            <!-- Page title -->
            <br/> <br/> <br/>

            <div class="my-5">
                <h3>나의 정보관리</h3>
                <hr>
            </div>
            <!-- Form START -->
            <form class="file-upload" wire:submit.prevent="update" id="form">

                <div class="row mb-5 gx-5">
                    <!-- Upload profile -->
                    <div class="col-xxl-8 mb-5 mb-xxl-0">
                        <div class="bg-secondary-soft px-4 py-5 rounded">
                            <div class="row g-3">
                                <div class="col-md-12">
                                    <div class="text-center">
                                        <!-- Image upload -->
                                        <div class="square position-relative display-2 mb-3">
                                            @if($user->avatar)
                                                <img src="{{asset(Voyager::image($user->avatar))}}" alt=""
                                                     width="200">
                                            @else
                                                <i class="icofont-user position-absolute top-50 start-50 translate-middle text-secondary"></i>
                                            @endif
                                        </div>
                                        <!-- Button -->
                                        <input type="file" wire:model="avatar" id="customFile" name="file" hidden="">
                                        <label class="btn w-100 btn-success-soft btn-block" for="customFile">사진
                                            업로드</label>

                                        <!-- Content -->
                                        <p class="text-muted mt-3 mb-0"><span class="me-1"></span>최소 크기 300px x 300px
                                        </p>
                                    </div>
                                </div>

                            </div>
                        </div>
                    </div>

                </div>
                <!-- Row END -->
                <div class="row mb-5 gx-5">
                    <!-- Contact detail -->
                    <div class="col-xxl-8 mb-5 mb-xxl-0">
                        <div class="bg-secondary-soft px-4 py-5 rounded">
                            <div class="row g-3">
                                <!--  Name -->
                                <div class="col-md-6">
                                    <label class="form-label">성명 *</label>
                                    <input type="text" wire:model.defer="name" class="form-control" id="username" placeholder=""
                                           aria-label="First name" value="성명...">
                                </div>
                                <!-- Birthday -->
                                <div class="col-md-6">
                                    <label class="form-label">생년월일 *</label>
                                    <input type="date" wire:model.defer="birth_date"
                                           class="form-control" id="datepicker" placeholder=""
                                           aria-label="Birthday" value="1994-06-02">
                                </div>
                                <!-- Gender -->
                                <div class="col-md-6">
                                    <label class="form-label">성별 *</label>
                                    <input type="text" wire:model.defer="gender"
                                           class="form-control" id="gender" placeholder=""
                                           aria-label="Gender" value="여성">
                                </div>
                                <!-- Phone number -->
                                <div class="col-md-6">
                                    <label class="form-label">휴대폰번호 *</label>
                                    <input type="text" wire:model.defer="phone"
                                           class="form-control" id="phonenumber" placeholder="" aria-label="Phone number" value="+91 9852 8855 252">
                                </div>
                                <!-- Email -->
                                <div class="col-md-6">
                                    <label for="inputEmail4" class="form-label">E-mail 주소 *</label>
                                    <input type="email"
                                           wire:model.defer="email"
                                           class="form-control" id="email" value="name@example.com">
                                </div>
                                <!-- Address -->
                                <div class="col-md-6">
                                    <label class="form-label">주소 *</label>
                                    <input type="text" class="form-control"
                                           wire:model.defer="address"
                                           id="address" placeholder="" aria-label="Address"
                                           value="06682,서울시 서초구 방배로19길 17 (방배동) 서울빌딩 3층">
                                </div>
                            </div> <!-- Row END -->
                        </div>
                    </div>
                </div>
                <!-- Education detail -->
                @foreach($EducationHistories as $index => $EducationHistory)
                    <div class="row mb-5 gx-5">
                        <div class="col-xxl-6 mb-5 mb-xxl-0">

                            <div class="bg-secondary-soft px-4 py-5 rounded">
                                <h4 class="mb-4 mt-0 d-block">최종학력
                                    <button wire:click="RemoveEducationHistory({{$EducationHistory->id}})"
                                            class="btn btn-danger float-right"><span class="fa fa-trash"></span>
                                    </button>
                                </h4>

                                <div class="row g-3" id="education">
                                    <!--  Education -->
                                    <div class="col-md-4">
                                        <label class="form-label">최종학력 *</label>
                                        <select wire:model.defer="EducationHistories.{{ $index }}.education"
                                                class="custom-select"
                                                id="schooltype">
                                            <option selected>선택</option>
                                            <option class="form-control" value="1">고등학교</option>
                                            <option class="form-control" value="2">대학 (2,3)년제</option>
                                            <option class="form-control" value="3">대학교 (4년)제</option>
                                            <option class="form-control" value="4">대학원</option>
                                        </select>
                                    </div>

                                    <!-- Education -->
                                    <div class="col-md-4">
                                        <label class="form-label">학교 *</label>
                                        <input type="text" wire:model.defer="EducationHistories.{{ $index }}.school"
                                               class="form-control" id="school"
                                               placeholder="" aria-label="Education" value="학교 ">
                                    </div>


                                    <!-- 학과 -->
                                    <div class="col-md-4">
                                        <label class="form-label">학과 *</label>
                                        <input type="text"
                                               wire:model.defer="EducationHistories.{{ $index }}.school_department"
                                               class="form-control"
                                               id="department" placeholder="" aria-label="Career" value="학과">
                                    </div>

                                    <!-- 입학 날짜 -->
                                    <div class="col-md-4">
                                        <label for="date" class="form-label">입학 날짜 *</label>

                                        <div class="input-group date" id="date-own">

                                            <input type="date"
                                                   wire:model.defer="EducationHistories.{{ $index }}.admission_date"
                                                   class="form-control">

                                            <span class="input-group-append">
                                        <span class="input-group-text bg-white">
                                         <i class="fa fa-calendar"></i>
                                        </span>
                                     </span>
                                        </div>

                                    </div>

                                    <!-- 졸업 날짜 -->
                                    <div class="col-md-4">
                                        <label for="date" class="form-label">졸업 날짜 *</label>

                                        <div class="input-group date" id="date-own2">

                                            <input type="date"
                                                   wire:model.defer="EducationHistories.{{ $index }}.graduation_date"
                                                   class="form-control">

                                            <span class="input-group-append">
                                        <span class="input-group-text bg-white">
                                         <i class="fa fa-calendar"></i>
                                        </span>
                                     </span>
                                        </div>

                                    </div>


                                </div> <!-- Row END -->
                            </div>

                        </div>
                    </div>
                @endforeach
                <div class="row mb-5 gx-5">
                    <button wire:click.prevent="addEducationHistory" class="btn btn-primary">학력 추가</button>
                </div>


                <!-- Career -->
                @foreach($WorkHistories as $index02 => $Work)
                    <div class="row mb-5 gx-5">
                        <div class="col-xxl-6 mb-5 mb-xxl-0">
                            <div class="bg-secondary-soft px-4 py-5 rounded">
                                <h4 class="mb-4 mt-0">경력사항
                                    <button wire:click="RemoveWorkHistory({{$index02}})"
                                            class="btn btn-danger float-right"><span class="fa fa-trash"></span>
                                    </button>
                                </h4>

                                <div class="row g-3" id="job">


                                    <!-- Salary -->
                                    <div class="col-md-4">
                                        <label class="form-label">연봉 *</label>
                                        <input type="text" class="form-control"
                                               wire:model.defer="WorkHistories.{{ $index02 }}.salary"
                                               id="salary" placeholder="" aria-label="Education" value="____원 ">
                                    </div>


                                    <!-- Company Name -->
                                    <div class="col-md-4">
                                        <label class="form-label">회사명 *</label>
                                        <input type="text" wire:model.defer="WorkHistories.{{ $index02 }}.company_name"
                                               class="form-control"
                                               id="companyname" placeholder="" aria-label="Career" value="회사명...">
                                    </div>


                                    <!-- department -->
                                    <div class="col-md-4">
                                        <label class="form-label">부서 *</label>
                                        <input type="text"
                                               wire:model.defer="WorkHistories.{{ $index02 }}.company_department"
                                               class="form-control"
                                               id="jobdepartment" placeholder="" aria-label="Career" value="부서...">
                                    </div>
                                    <!-- rank -->
                                    <div class="col-md-4">
                                        <label class="form-label">직급 *</label>
                                        <input type="text" class="form-control"
                                               wire:model.defer="WorkHistories.{{ $index02 }}.rank"
                                               id="rank" placeholder="" aria-label="Career"
                                               value="직급...">
                                    </div>


                                    <!-- 근무기간 -->
                                    <div class="col-md-4">
                                        <label for="date" class="form-label" id="employmentperiod">근무기간 *</label>

                                        <div class="input-group input-daterange">
                                            <input type="date"
                                                   wire:model.defer="WorkHistories.{{ $index02 }}.employment_start"
                                                   class="form-control" value="2012-04-05">
                                            <div class="input-group-addon">
                                                <h2>~</h2>
                                            </div>
                                            <input type="date"
                                                   wire:model.defer="WorkHistories.{{ $index02 }}.employment_end"
                                                   class="form-control" value="2012-04-19">
                                        </div>

                                    </div>


                                </div> <!-- Row END -->
                            </div>
                        </div>
                    </div>
                @endforeach
                <div class="row mb-5 gx-5">
                    <button wire:click.prevent="addWorkHistory" class="btn btn-primary">경력 추가</button>
                </div>

                <!-- detail -->
                <div class="row mb-5 gx-5">
                    <div class="col-12 mb-5 mb-xxl-0">
                        <div class="bg-secondary-soft px-4 py-5 rounded">
                            <div class="row g-3">

                                <!-- language -->
                                <div class="col-md-4">
                                    <label class="form-label">언어 </label>
                                    <input type="text" class="form-control" id="language" placeholder=""
                                           wire:model.defer="language"
                                           aria-label="language" value="예: 영어, 한국어, 중국어">
                                </div>
                                <!-- O/A -->
                                <div class="col-md-4">
                                    <label class="form-label">O/A </label>
                                    <input type="text"
                                           wire:model.defer="o_a"
                                           class="form-control" id="O/A" placeholder="" aria-label="O/A"
                                           value="예: 마이크로 소프트 오피스">
                                </div>

                                <!--  Support Areas -->
                                <div class="col-md-4">
                                    <label class="form-label">지원분야 *</label>
                                    <input type="text" class="form-control"
                                           wire:model.defer="support_areas"
                                           id="supportareas" placeholder=""
                                           aria-label="Support Areas" value="리셉션">
                                </div>
                                <!-- cover letter -->
                                <div class="col-md-12">
                                    <label class="form-label">자기소개서 *</label>
                                    <textarea class="form-control"
                                              wire:model.defer="self_introduction"
                                              id="exampleFormControlTextarea1"
                                              rows="5"></textarea>

                                </div>

                            </div> <!-- Row END -->
                        </div>
                    </div>
                </div>

                <div class="row mb-5 gx-5">
                    <!-- change password -->
                    <div class="col-xxl-6">
                        <div class="bg-secondary-soft px-4 py-5 rounded">
                            <div class="row g-3">

                                <!-- New password -->
                                <div class="col-md-6">
                                    <label for="exampleInputPassword2" class="form-label">새 비밀번호</label>
                                    <input type="password"  wire:model.defer="password"
                                           class="form-control" id="exampleInputPassword2">
                                </div>
                                <!-- Confirm password -->
                                <div class="col-md-6">
                                    <label for="exampleInputPassword3" class="form-label">새 비밀번호 재입력</label>
                                    <input type="password" wire:model.defer="password_confirmation"
                                           class="form-control" id="exampleInputPassword3">
                                </div>
                            </div>
                        </div>
                    </div>
                </div> <!-- Row END -->
                <!-- button -->
                <div class="gap-3 d-md-flex justify-content-md-end text-center">
                    <!--	<button type="button" class="btn btn-danger btn-lg">Delete profile</button> -->
                    <button type="submit" class="btn btn-primary btn-lg" id="update">프로필 수정</button>
                </div>

                <br /> <br /> <br />

            </form>
            <!-- Form END -->
        </div>
    </div>
</div>
