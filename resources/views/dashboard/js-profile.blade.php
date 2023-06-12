@section('script')
    <script src="{{asset('js/exam-chart.js')}}"></script>
@endsection


<div class="container">
    <div class="row">
        <div class="col-12">
            <!-- Page title -->
            <br /> <br /> <br />

            <div class="my-5">
                <h3>나의 정보관리</h3>
                <hr>
            </div>
            <!-- Form START -->
            <form class="file-upload " action="javascript:alert('프로필 수정이 완료되었습니다!');" id="form">

                <div class="row mb-5 gx-5">
                    <!-- Upload profile -->
                    <div class="col-xxl-8 mb-5 mb-xxl-0">
                        <div class="bg-secondary-soft px-4 py-5 rounded">
                            <div class="row g-3">
                                <!--		<h4 class="mb-4 mt-0 ">Upload your profile photo</h4> -->
                                <div class="col-md-4 ">
                                    <div class="text-center">
                                        <!-- Image upload -->
                                        <div class="square position-relative display-2 mb-3">
                                            <i class="fas fa-fw fa-user position-absolute top-50 start-50 translate-middle text-secondary"></i>
                                        </div>
                                        <!-- Button -->
                                        <input type="file" id="customFile" name="file" hidden="">
                                        <label class="btn btn-success-soft btn-block" for="customFile">사진 업로드</label>

                                        <!-- Content -->
                                        <p class="text-muted mt-3 mb-0"><span class="me-1"></span>최소 크기 300px x 300px</p>
                                    </div>
                                </div>




                                <div class="col-md-4  offset-md-4 ">
                                    <div class="chart  px-4 py-5 rounded">

                                        <canvas id="myChart" style="width:100%;max-width:600px"></canvas>

                                    </div>
                                </div>



                            </div>
                        </div>
                    </div>

                </div> <!-- Row END -->



                <div class="row mb-5 gx-5">
                    <!-- Contact detail -->
                    <div class="col-xxl-8 mb-5 mb-xxl-0">
                        <div class="bg-secondary-soft px-4 py-5 rounded">
                            <div class="row g-3">
                                <!--			<h4 class="mb-4 mt-0">Contact detail</h4> -->
                                <!--  Name -->
                                <div class="col-md-6">
                                    <label class="form-label">성명 *</label>
                                    <input type="text" class="form-control" id="username" placeholder="" aria-label="First name" value="성명...">
                                </div>
                                <!-- Birthday -->
                                <div class="col-md-6">
                                    <label class="form-label">생년월일 *</label>
                                    <input type="text" class="form-control" id="datepicker" placeholder="" aria-label="Birthday" value="1994-06-02">
                                </div>
                                <!-- Gender -->
                                <div class="col-md-6">
                                    <label class="form-label">성별 *</label>
                                    <input type="text" class="form-control" id="gender"placeholder="" aria-label="Gender" value="여성">
                                </div>
                                <!-- Phone number -->
                                <div class="col-md-6">
                                    <label class="form-label">휴대폰번호 *</label>
                                    <input type="text" class="form-control" id="phonenumber" placeholder="" aria-label="Phone number" value="+91 9852 8855 252">
                                </div>
                                <!-- Email -->
                                <div class="col-md-6">
                                    <label for="inputEmail4" class="form-label">E-mail 주소 *</label>
                                    <input type="email" class="form-control" id="email" value="name@example.com">
                                </div>
                                <!-- Address -->
                                <div class="col-md-6">
                                    <label class="form-label">주소 *</label>
                                    <input type="text" class="form-control" id="address"placeholder="" aria-label="Address" value="06682,서울시 서초구 방배로19길 17 (방배동) 서울빌딩 3층">
                                </div>
                            </div> <!-- Row END -->
                        </div>
                    </div>
                </div>


                <!-- Education detail -->
                <div class="row mb-5 gx-5">
                    <div class="col-xxl-6 mb-5 mb-xxl-0">
                        <div class="bg-secondary-soft px-4 py-5 rounded">
                            <div class="row g-3" >
                                <!--			<h4 class="mb-4 mt-0">Social media detail</h4>  -->
                                <!--  Education -->
                                <div class="col-md-6">
                                    <label class="form-label">최종학력 *</label>
                                    <input type="text" class="form-control" id="education" placeholder="" aria-label="Education" value="고동학교 - 서울고동학교, 2008~2011년 졸업">
                                </div>
                                <!-- Education -->
                                <div class="col-md-6">
                                    <label class="form-label">최종학력 *</label>
                                    <input type="text" class="form-control" id="education" placeholder="" aria-label="Education" value="대학교 - 한서대학교, 2011~2015년 졸업, 일본학과, 항공관광학과 ">
                                </div>
                                <!-- Career -->
                                <div class="col-md-6">
                                    <label class="form-label">경력사항 </label>
                                    <input type="text" class="form-control" id="job" placeholder="" aria-label="Career" value="㈜올댓모델, 2015.03~2022.11, 영업팀, 사원">
                                </div>
                                <!-- Career -->
                                <div class="col-md-6">
                                    <label class="form-label">경력사항 </label>
                                    <input type="text" class="form-control" id="job" placeholder="" aria-label="Career" value="항공항공사, 2022.10~2023.08, 교육아카데미팀, 과장">
                                </div>
                                <!-- language -->
                                <div class="col-md-6">
                                    <label class="form-label">언어 </label>
                                    <input type="text" class="form-control" id="language" placeholder="" aria-label="language" value="영어, 한국어, 중국어">
                                </div>
                                <!-- O/A -->
                                <div class="col-md-6">
                                    <label class="form-label">O/A </label>
                                    <input type="text" class="form-control" id="O/A" placeholder="" aria-label="O/A" value="마이크로 소프트 오피스, 어도비 포토샵">
                                </div>

                                <!--  Support Areas -->
                                <div class="col-md-6">
                                    <label class="form-label">지원분야 *</label>
                                    <input type="text" class="form-control" id="supportareas" placeholder="" aria-label="Support Areas" value="리셉션">
                                </div>
                                <!-- cover letter -->
                                <div class="col-md-12">
                                    <label class="form-label">자기소개서 *</label>
                                    <textarea class="form-control" id="exampleFormControlTextarea1" rows="5">동해물과 백두산이 마르고 닳도록 하느님이 보우하사 우리나라 만세 무궁화 삼천리 화려 강산 대한 사람 대한으로 길이 보전하세 남산 위에 저 소나무 철갑을 두른 듯 바람 서리 불변함은 우리 기상일세 무궁화 삼천리 화려 강산 대한 사람 대한으로 길이 보전하세 가을 하 공활한데 높고  구름 없이 밝은 달은 우리 가슴 일편단심일세 무궁화 삼천리 화려 강산 대한 사람 대한으로 길이 보전하세 이 기상과 이	맘으로 충성을 다하여괴로우나 즐거우나 나라 사랑하세 무궁화 삼천리 화려 강산 대한 사람 대한으로 길이 보전하세.
									</textarea>

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
                                <!-- 		<h4 class="my-4">Change Password</h4> -->
                                <!-- Old password -->
                                <div class="col-md-4">
                                    <label for="exampleInputPassword1" class="form-label">현재 비밀번호 *</label>
                                    <input type="password" class="form-control" id="exampleInputPassword1">
                                </div>
                                <!-- New password -->
                                <div class="col-md-4">
                                    <label for="exampleInputPassword2" class="form-label">새 비밀번호</label>
                                    <input type="password" class="form-control" id="exampleInputPassword2">
                                </div>
                                <!-- Confirm password -->
                                <div class="col-md-4">
                                    <label for="exampleInputPassword3" class="form-label">새 비밀번호 재입력</label>
                                    <input type="password" class="form-control" id="exampleInputPassword3">
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
