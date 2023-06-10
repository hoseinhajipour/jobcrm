<div class="container">
    <div class="row">
        <div class="col-12">
            <!-- Page title -->
            <br /> <br /> <br />

            <div class="my-5">
                <h3>회원가입</h3>
                <hr>
            </div>


            <!-- Form START -->
            <form class="file-upload" action="javascript:alert('이력서가 성공적으로 저장되었습니다!');" id="signupForm" method="post" >

                <div class="col-xxl-12 px-4 py-3 rounded ">

                    <ul class="nav nav-pills nav-fill"  id="myTab" >
                        <li class="nav-item">
                            <a class="nav-link " href="{{route('SingupJs')}}">개인회원</a>
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

                                <!--		<h4 class="mb-4 mt-0 ">Upload your profile photo</h4> -->

                                <div class=" text-center">
                                    <!-- Image upload -->
                                    <div class="square position-relative display-2 mb-3">
                                        <i class="fas fa-fw fa-user position-absolute top-50 start-50 translate-middle text-secondary"></i>
                                    </div>
                                    <!-- Button -->
                                    <input type="file" id="customFile" name="customFile" hidden="">
                                    <label class="btn btn-success-soft btn-block" for="customFile">사진 업로드</label>
                                    <!-- Content -->
                                    <p class="text-muted mt-3 mb-0"><span class="me-1"></span>최소 크기 300px x 300px</p>
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
                                    <input type="text" class="form-control" id="username" name="username" placeholder="이름을 입력하세요." aria-label="First name" value="">

                                </div>


                                <!-- New password -->
                                <div class="form-group col-md-6">
                                    <label for="exampleInputPassword1" class="form-label"> 비밀번호</label>
                                    <input type="password" class="form-control" id="password" name="password">
                                </div>
                                <!-- Confirm password -->
                                <div class=" form-group col-md-6">
                                    <label for="exampleInputPassword2" class="form-label"> 비밀번호 재입력</label>
                                    <input type="password" class="form-control" id="passwordconfirm" name="passwordconfirm">
                                </div>


                                <!-- Birthday -->
                                <div class=" col-md-6">
                                    <label for="date" class="form-label">생년월일 *</label>

                                    <div class="input-group date" id="datepicker">

                                        <input type="text" class="form-control" id="date" name="date">

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

                                    <select class="custom-select" id="gender">
                                        <option selected>선택</option>
                                        <option class="form-control" value="1">여성</option>
                                        <option class="form-control" value="2">남성</option>
                                        <option class="form-control" value="3">선택되지 않음</option>
                                    </select>

                                </div>

                                <!-- Phone number -->
                                <div class="col-md-6">
                                    <label class="form-label">휴대폰번호 *</label>
                                    <input type="text" class="form-control" id="phonenumber" placeholder="" aria-label="Phone number" value="+82 10 1234 5678">
                                </div>
                                <!-- Email -->
                                <div class=" form-group col-md-6">
                                    <label for="email" class="form-label">E-mail 주소 *</label>
                                    <input type="email" class="form-control"  placeholder="name@example.com" id="email" name="email" value="">
                                </div>
                                <!-- Address -->
                                <div class=" form-group col-md-6">
                                    <label class="form-label">주소 *</label>
                                    <input type="text" class="form-control" id="address" placeholder="" aria-label="Address" value="06682,서울시 서초구 방배로19길 17 (방배동) 서울빌딩 3층">
                                </div>
                            </div> <!-- Row END -->
                        </div>
                    </div>
                </div>

                <!-- Education detail -->
                <div class="row mb-5 gx-5">
                    <div class="col-xxl-6 mb-5 mb-xxl-0">
                        <div class="bg-secondary-soft px-4 py-5 rounded">
                            <h4 class="mb-4 mt-0">최종학력</h4>
                            <div class="row g-3" id="education">
                                <!--			<h4 class="mb-4 mt-0">Social media detail</h4>  -->
                                <!--  Education -->
                                <div class="col-md-4">
                                    <label class="form-label">최종학력 *</label>
                                    <select class="custom-select" id="schooltype">
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
                                    <input type="text" class="form-control" id="school" placeholder="" aria-label="Education" value="학교 ">
                                </div>



                                <!-- 학과 -->
                                <div class="col-md-4">
                                    <label class="form-label">학과 *</label>
                                    <input type="text" class="form-control" id="department" placeholder="" aria-label="Career" value="학과">
                                </div>

                                <!-- 입학 날짜 -->
                                <div class="col-md-4">
                                    <label for="date" class="form-label">입학 날짜 *</label>

                                    <div class="input-group date" id="date-own">

                                        <input type="text" class="form-control">

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

                                        <input type="text" class="form-control">

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





                <!-- Career -->
                <div class="row mb-5 gx-5">
                    <div class="col-xxl-6 mb-5 mb-xxl-0">
                        <div class="bg-secondary-soft px-4 py-5 rounded">
                            <h4 class="mb-4 mt-0">경력사항</h4>
                            <div class="row g-3" id="job">


                                <!-- Salary -->
                                <div class="col-md-4">
                                    <label class="form-label">연봉 *</label>
                                    <input type="text" class="form-control" id="salary" placeholder="" aria-label="Education" value="____원 ">
                                </div>



                                <!-- Company Name -->
                                <div class="col-md-4">
                                    <label class="form-label">회사명 *</label>
                                    <input type="text" class="form-control" id="companyname" placeholder="" aria-label="Career" value="회사명...">
                                </div>


                                <!-- department -->
                                <div class="col-md-4">
                                    <label class="form-label">부서 *</label>
                                    <input type="text" class="form-control" id="jobdepartment" placeholder="" aria-label="Career" value="부서...">
                                </div>
                                <!-- rank -->
                                <div class="col-md-4">
                                    <label class="form-label">직급 *</label>
                                    <input type="text" class="form-control" id="rank" placeholder="" aria-label="Career" value="직급...">
                                </div>


                                <!-- 근무기간 -->
                                <div class="col-md-4">
                                    <label for="date" class="form-label" id="employmentperiod">근무기간 *</label>

                                    <div class="input-group input-daterange">
                                        <input type="text" class="form-control" value="2012-04-05">
                                        <div class="input-group-addon">
                                            <h2>~</h2>
                                        </div>
                                        <input type="text" class="form-control" value="2012-04-19">
                                    </div>

                                </div>




                            </div> <!-- Row END -->
                        </div>
                    </div>
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
                                    <input type="text" class="form-control" id="language" placeholder="" aria-label="language" value="예: 영어, 한국어, 중국어">
                                </div>
                                <!-- O/A -->
                                <div class="col-md-4">
                                    <label class="form-label">O/A </label>
                                    <input type="text" class="form-control" id="O/A" placeholder="" aria-label="O/A" value="예: 마이크로 소프트 오피스">
                                </div>

                                <!--  Support Areas -->
                                <div class="col-md-4">
                                    <label class="form-label">지원분야 *</label>
                                    <input type="text" class="form-control" id="supportareas" placeholder="" aria-label="Support Areas" value="리셉션">
                                </div>
                                <!-- cover letter -->
                                <div class="col-md-12">
                                    <label class="form-label">자기소개서 *</label>
                                    <textarea class="form-control" id="exampleFormControlTextarea1" rows="5">자기소개서....
									</textarea>

                                </div>


                                <!-- 약관동의 -->
                                <div class="col-md-12 ">
                                    <div class="bg-secondary-soft px-3 py-4 rounded">
                                        <div class="form-group row g-3">
                                            <div class="custom-control custom-checkbox">
                                                <input class="custom-control-input" type="checkbox" id="agree" name="agree" value="agree">
                                                <label class="custom-control-label pmd-checkbox-ripple-effect" for="agree">약관동의</label>
                                            </div>
                                        </div>
                                    </div>
                                </div>




                            </div> <!-- Row END -->
                        </div>
                    </div>
                </div>


                <!-- button -->
                <div class="form-group gap-3 d-md-flex justify-content-md-end text-center">
                    <!--	<button type="button" class="btn btn-danger btn-lg">Delete profile</button> -->
                    <button type="submit"  class="btn btn-primary btn-lg" id="jssignup" name="signup" value="Sign up">등록</button>
                </div>

                <br /> <br /> <br />

            </form> <!-- Form END -->
        </div>
    </div>
</div>
