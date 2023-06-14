<div class="container">
    <div class="row">
        <div class="col-12">
            <!-- Page title -->
            <br /> <br /> <br />

            <div class="my-5">
                <h3>프로필</h3>
                <hr>
            </div>
            <!-- Form START -->
            <form class="file-upload" action="javascript:alert('프로필 수정이 완료되었습니다!');" id="form">
                <div class="row mb-5 gx-5">
                    <!-- Upload profile -->
                    <div class="col-xxl-4 ">
                        <div class="bg-secondary-soft px-4 py-5 rounded">
                            <div class="row g-3">
                                <div class="text-center">
                                    <!-- Image upload -->
                                    <div class="square position-relative display-2 mb-3">
                                        <i class="fas fa-fw fa-user position-absolute top-50 start-50 translate-middle text-secondary"></i>
                                    </div>
                                    <!-- Button -->
                                    <input type="file" id="customFile" name="file" hidden="">
                                    <label class="btn btn-success-soft btn-block" for="customFile">기업 로고 업로드</label>

                                    <!-- Content -->
                                    <p class="text-muted mt-3 mb-0"><span class="me-1"></span>최소 크기 300px x 300px</p>
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
                                    <label class="form-label">회사명 *</label>
                                    <input type="text" class="form-control" id="companyname" placeholder=""
                                           aria-label="First name" value="회사명 ...">
                                </div>

                                <!-- Birthday -->
                                <div class="col-md-6">
                                    <label for="date" class="form-label">설립일 *</label>

                                    <div class="input-group date" id="datepicker">

                                        <input type="text" class="form-control">

                                        <span class="input-group-append">
                        <span class="input-group-text bg-white">
                        <i class="fa fa-calendar"></i>
                       </span>
                     </span>
                                    </div>
                                </div>


                                <!--  representativename -->
                                <div class="col-md-6">
                                    <label class="form-label">대표자명 *</label>
                                    <input type="text" class="form-control" id="representativename"placeholder="" aria-label="First name" value="대표자명 ...">
                                </div>


                                <!-- Phone number -->
                                <div class="col-md-6">
                                    <label class="form-label">사업자번호 *</label>
                                    <input type="text" class="form-control" id="businessnumber" placeholder="" aria-label="Phone number" value="000 000 00000">
                                </div>
                                <!-- Email -->
                                <div class="col-md-6">
                                    <label for="inputEmail4" class="form-label">E-mail 주소 *</label>
                                    <input type="email" class="form-control" id="email" value="예: ATR@allthatreception.com">
                                </div>

                                <!-- Address -->
                                <div class="col-md-6">
                                    <label class="form-label">주소 *</label>
                                    <input type="text" class="form-control" id="address" placeholder="" aria-label="Address" value="예: 06682,서울시 서초구 방배로19길 17 (방배동) 서울빌딩 3층">
                                </div>

                                <!-- Phone number -->
                                <div class="col-md-6">
                                    <label class="form-label">담당자번호 *</label>
                                    <input type="text" class="form-control" id="contactnumber" placeholder="" aria-label="Phone number" value="+82 10 1234 5678">
                                </div>

                                <!--  Name -->
                                <div class="col-md-6">
                                    <label class="form-label">담당자명 *</label>
                                    <input type="text" class="form-control" id="nameofpersonincharge" placeholder="" aria-label="First name" value="담당자명 ...">
                                </div>


                            </div> <!-- Row END -->
                        </div>
                    </div>
                </div>

                <div class="row mb-5 gx-5">
                    <!-- Contact detail -->
                    <div class="col-xxl-8 mb-5 mb-xxl-0">
                        <div class="bg-secondary-soft px-4 py-5 rounded">
                            <div class="row g-3">
                                <!--  title -->
                                <div class="col-md-6">
                                    <label class="form-label">직원수</label>
                                    <input type="text" class="form-control" id="numberofemployees" placeholder="" aria-label="title" value="____ 명">
                                </div>
                                <!--  title -->
                                <div class="col-md-6">
                                    <label class="form-label">사업내용 *</label>
                                    <input type="text" class="form-control" id="businessinformation" placeholder="" aria-label="title" value="예: 서비스">
                                </div>
                                <!--  title -->
                                <div class="col-md-6">
                                    <label class="form-label">업종 *</label>
                                    <input type="text" class="form-control" id="sectors" placeholder="" aria-label="title" value="예: 서비스">
                                </div>
                                <!--  title -->
                                <div class="col-md-6">
                                    <label class="form-label">기업 홈페이지 주소 *</label>
                                    <input type="text" class="form-control" id="homepage" placeholder="" aria-label="title" value="예: http://www.allthatmodel.co.kr">
                                </div>
                                <!--  title -->
                                <div class="col-md-6">
                                    <label class="form-label">기업형태 *</label>
                                    <input type="text" class="form-control" id="businesstype" placeholder="" aria-label="title" value="...">
                                </div>
                                <!--  title -->
                                <div class="col-md-6">
                                    <label class="form-label">매출액</label>
                                    <input type="text" class="form-control" id="sales" placeholder="" aria-label="title" value="____ 억">
                                </div>


                                <!--  title -->
                                <div class="col-md-6">
                                    <label class="form-label">자본금</label>
                                    <input type="text" class="form-control" id="capital" placeholder="" aria-label="title" value="____ 억">
                                </div>


                                <!-- areas of recruitment -->
                                <div class="col-md-6">
                                    <label class="form-label">상장여부</label>

                                    <select class="custom-select"  id="crape">
                                        <option selected>선택...</option>
                                        <option class="form-control" value="1">상장</option>
                                        <option class="form-control" value="2">비상장</option>

                                    </select>
                                </div>



                                <div class="col-md-12 ">
                                    <div class="bg-secondary-soft px-3 py-4 rounded">
                                        <div class="row g-3">
                                            <div class="form-check">
                                                <input type="checkbox" class="form-check-input" id="exampleCheck1">
                                                <label class="form-check-label" for="exampleCheck1">약관동의</label>
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
                    <!--	<button type="button" class="btn btn-danger btn-lg">Delete profile</button> -->
                    <button type="submit" id="update" class="btn btn-primary btn-lg">프로필 수정</button>
                </div>

                <br /> <br /> <br />

            </form>
            <!-- Form END -->
        </div>
    </div>
</div>
