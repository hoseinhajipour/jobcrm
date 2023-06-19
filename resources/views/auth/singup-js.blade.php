@section('style')
    <link rel="stylesheet" href="{{asset('css/js-profile.css')}}">
@endsection

<div class="container">
    <div class="row">
        <div class="col-12">
            <!-- Page title -->
            <br/> <br/> <br/>

            <div class="my-5">
                <h3>회원가입</h3>
                <hr>
            </div>


            <!-- Form START -->
            <form wire:submit.prevent="register" class="file-upload">

                <div class="col-xxl-12 px-4 py-3 rounded ">

                    <ul class="nav nav-pills nav-fill" id="myTab">
                        <li class="nav-item">
                            <a class="nav-link active" href="{{route('SingupJs')}}">개인회원</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="{{route('SingupEm')}}">기업회원</a>
                        </li>
                    </ul>
                </div>


                <div class="row mb-5 gx-5">

                    <!-- Upload profile -->
                    <div class="col-xxl-4 ">
                        <div class="bg-secondary-soft px-4 py-5 rounded">
                            <div class="form-group row g-3">

                                <!--<h4 class="mb-4 mt-0 ">Upload your profile photo</h4> -->

                                <div class=" text-center">
                                    <!-- Image upload -->
                                    <div class="square position-relative display-2 mb-3">
                                        @if($avatar)
                                            <img src="{{ $avatar->temporaryUrl() }}" width="200">
                                        @else
                                            <i class="icofont-user top-50 start-50 translate-middle text-secondary"></i>
                                        @endif

                                    </div>
                                    <!-- Button -->
                                    <input type="file" wire:model="avatar" id="customFile" name="customFile" hidden="">
                                    <label class="btn btn-success-soft btn-block" for="customFile">
                                        <div wire:loading class="text-center" wire:target="avatar">
                                            <div class="spinner-border" role="status">
                                            </div>
                                        </div>
                                        <div wire:loading.remove>
                                            사진 업로드
                                        </div>

                                    </label>
                                    <!-- Content -->
                                    <p class="text-muted mt-3 mb-0"><span class="me-1"></span>최소 크기 300px x 300px</p>

                                    @error('avatar') <span class="error">{{ $message }}</span> @enderror
                                </div>

                            </div>
                        </div>
                    </div>
                </div> <!-- Row END -->


                <!-- Contact detail -->
                <div class="row mb-5 gx-5">
                    <div class="col-xxl-8 mb-5 mb-xxl-0">
                        <div class="bg-secondary-soft px-4 py-5 rounded">
                            <div class="row g-3">
                                <!--			<h4 class="mb-4 mt-0">Contact detail</h4> -->
                                <!--  Name -->
                                <div class="form-group col-md-6">
                                    <label for="username" class="form-label">성명 *</label>
                                    <input type="text" wire:model.defer="name" class="form-control"
                                           placeholder="이름을 입력하세요." aria-label="First name">
                                    @error('name') <span class="invalid-input">{{ $message }}</span> @enderror
                                </div>


                                <!-- New password -->
                                <div class="form-group col-md-6">
                                    <label for="exampleInputPassword1" class="form-label"> 비밀번호</label>
                                    <input type="password" wire:model.defer="password" class="form-control">
                                    @error('password') <span class="invalid-input">{{ $message }}</span> @enderror
                                </div>
                                <!-- Confirm password -->
                                <div class=" form-group col-md-6">
                                    <label for="exampleInputPassword2" class="form-label"> 비밀번호 재입력</label>
                                    <input type="password" wire:model.defer="password_confirmation"
                                           class="form-control">
                                    @error('password_confirmation') <span class="invalid-input">{{ $message }}</span> @enderror
                                </div>


                                <!-- Birthday -->
                                <div class=" col-md-6">
                                    <label for="date" class="form-label">생년월일 *</label>

                                    <div class="input-group date" id="datepicker">

                                        <input type="date" wire:model.defer="birth_date"
                                               class="form-control" id="date" name="date">

                                        <span class="input-group-append">
                                        <span class="input-group-text bg-white">
                                         <i class="fa fa-calendar"></i>
                                        </span>
                                     </span>
                                    </div>

                                </div>

                                <!-- Gender -->
                                <div class="col-md-6">
                                    <label class="form-label">성별 *</label>

                                    <select wire:model.defer="gender" class="custom-select" id="gender">
                                        <option selected>선택</option>
                                        <option class="form-control" value="1">여성</option>
                                        <option class="form-control" value="2">남성</option>
                                        <option class="form-control" value="3">선택되지 않음</option>
                                    </select>

                                </div>

                                <!-- Phone number -->
                                <div class="col-md-6">
                                    <label class="form-label">휴대폰번호 *</label>
                                    <input type="text" wire:model.defer="phone" class="form-control" id="phonenumber"
                                           placeholder="+82 10 1234 5678" aria-label="Phone number">
                                </div>
                                <!-- Email -->
                                <div class=" form-group col-md-6">
                                    <label for="email" class="form-label">E-mail 주소 *</label>
                                    <input type="email" wire:model.defer="email" class="form-control"
                                           placeholder="name@example.com" id="email" name="email">
                                </div>
                                <!-- Address -->
                                <div class=" form-group col-md-6">
                                    <label class="form-label">주소 *</label>
                                    <input type="text" class="form-control" wire:model.defer="address"
                                           placeholder="06682,서울시 서초구 방배로19길 17 (방배동) 서울빌딩 3층"
                                           aria-label="Address">
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
                                    <button wire:click="RemoveEducationHistory({{$index}})"
                                            class="btn btn-danger float-right"><span class="fa fa-trash"></span>
                                    </button>
                                </h4>

                                <div class="row g-3" id="education">
                                    <!--  Education -->
                                    <div class="col-md-4">
                                        <label class="form-label">최종학력 *</label>
                                        <select wire:model="EducationHistories.{{ $index }}.education"
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
                                        <input type="text" wire:model="EducationHistories.{{ $index }}.school"
                                               class="form-control" id="school"
                                               placeholder="" aria-label="Education" value="학교 ">
                                    </div>


                                    <!-- 학과 -->
                                    <div class="col-md-4">
                                        <label class="form-label">학과 *</label>
                                        <input type="text"
                                               wire:model="EducationHistories.{{ $index }}.school_department"
                                               class="form-control"
                                               id="department" placeholder="" aria-label="Career" value="학과">
                                    </div>

                                    <!-- 입학 날짜 -->
                                    <div class="col-md-4">
                                        <label for="date" class="form-label">입학 날짜 *</label>

                                        <div class="input-group date" id="date-own">

                                            <input type="date"
                                                   wire:model="EducationHistories.{{ $index }}.admission_date"
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
                                                   wire:model="EducationHistories.{{ $index }}.graduation_date"
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
                    <button wire:click="addEducationHistory" class="btn btn-primary">학력 추가</button>
                </div>


                <!-- Career -->
                @foreach($WorkHistories as $index02 => $Work)
                    <div class="row mb-5 gx-5">
                        <div class="col-xxl-6 mb-5 mb-xxl-0">
                            <div class="bg-secondary-soft px-4 py-5 rounded">
                                <h4 class="mb-4 mt-0">경력사항
                                    <button wire:click="RemoveWorkHistory($Work)"
                                            class="btn btn-danger float-right"><span class="fa fa-trash"></span>
                                    </button>
                                </h4>

                                <div class="row g-3" id="job">


                                    <!-- Salary -->
                                    <div class="col-md-4">
                                        <label class="form-label">연봉 *</label>
                                        <input type="text" class="form-control"
                                               wire:model="WorkHistories.{{ $index02 }}.salary"
                                               id="salary" placeholder="" aria-label="Education" value="____원 ">
                                    </div>


                                    <!-- Company Name -->
                                    <div class="col-md-4">
                                        <label class="form-label">회사명 *</label>
                                        <input type="text" wire:model="WorkHistories.{{ $index02 }}.company_name"
                                               class="form-control"
                                               id="companyname" placeholder="" aria-label="Career" value="회사명...">
                                    </div>


                                    <!-- department -->
                                    <div class="col-md-4">
                                        <label class="form-label">부서 *</label>
                                        <input type="text"
                                               wire:model="WorkHistories.{{ $index02 }}.company_department"
                                               class="form-control"
                                               id="jobdepartment" placeholder="" aria-label="Career" value="부서...">
                                    </div>
                                    <!-- rank -->
                                    <div class="col-md-4">
                                        <label class="form-label">직급 *</label>
                                        <input type="text" class="form-control"
                                               wire:model="WorkHistories.{{ $index02 }}.rank"
                                               id="rank" placeholder="" aria-label="Career"
                                               value="직급...">
                                    </div>


                                    <!-- 근무기간 -->
                                    <div class="col-md-4">
                                        <label for="date" class="form-label" id="employmentperiod">근무기간 *</label>

                                        <div class="input-group input-daterange">
                                            <input type="date"
                                                   wire:model="WorkHistories.{{ $index02 }}.employment_start"
                                                   class="form-control" value="2012-04-05">
                                            <div class="input-group-addon">
                                                <h2>~</h2>
                                            </div>
                                            <input type="date"
                                                   wire:model="WorkHistories.{{ $index02 }}.employment_end"
                                                   class="form-control" value="2012-04-19">
                                        </div>

                                    </div>


                                </div> <!-- Row END -->
                            </div>
                        </div>
                    </div>
                @endforeach
                <div class="row mb-5 gx-5">
                    <button wire:click="addWorkHistory" class="btn btn-primary">경력 추가</button>
                </div>


                <!-- detail -->
                <div class="row mb-5 gx-5">
                    <div class="col-xxl-8 mb-5 mb-xxl-0">
                        <div class="bg-secondary-soft px-4 py-5 rounded">
                            <div class="row g-3">
                                <!--			<h4 class="mb-4 mt-0">Social media detail</h4>  -->

                                <!-- language -->
                                <div class="col-md-4">
                                    <label class="form-label">언어 </label>
                                    <input type="text" class="form-control" id="language" placeholder=""
                                           wire:model="language"
                                           aria-label="language" value="예: 영어, 한국어, 중국어">
                                </div>
                                <!-- O/A -->
                                <div class="col-md-4">
                                    <label class="form-label">O/A </label>
                                    <input type="text"
                                           wire:model="o_a"
                                           class="form-control" id="O/A" placeholder="" aria-label="O/A"
                                           value="예: 마이크로 소프트 오피스">
                                </div>

                                <!--  Support Areas -->
                                <div class="col-md-4">
                                    <label class="form-label">지원분야 *</label>
                                    <input type="text" class="form-control"
                                           wire:model="support_areas"
                                           id="supportareas" placeholder=""
                                           aria-label="Support Areas" value="리셉션">
                                </div>
                                <!-- cover letter -->
                                <div class="col-md-12">
                                    <label class="form-label">자기소개서 *</label>
                                    <textarea class="form-control"
                                              wire:model="self_introduction"
                                              id="exampleFormControlTextarea1"
                                              rows="5"></textarea>

                                </div>


                                <!-- 약관동의 -->
                                <div class="col-md-12 ">
                                    <div class="bg-secondary-soft px-3 py-4 rounded">
                                        <div class="form-group row g-3">
                                            <div class="custom-control custom-checkbox">
                                                <input class="agree-check"
                                                       type="checkbox" wire:model="agree">
                                                <a href="#" data-toggle="modal" data-target="#exampleModal">
                                                    <label>약관동의</label>
                                                </a>

                                            </div>
                                        </div>
                                    </div>
                                </div>


                            </div> <!-- Row END -->
                        </div>
                    </div>
                </div>

                <x-honey/>

                <!-- button -->
                <div class="form-group gap-3 d-md-flex justify-content-md-end text-center">
                    <button type="submit"
                            {{ $agree ? '' : 'disabled' }}
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

        </div>
    </div>

    <!-- Modal -->
    <div wire:ignore class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel"
         aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body limit_y">
                    {!! setting('policy.job-seeker') !!}
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">닫다</button>
                </div>
            </div>
        </div>
    </div>


</div>
