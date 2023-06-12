
<div class="container">



    <div class="row">
        <div class="col-12">
            <!-- Page title -->
            <br /> <br /> <br />

            <div class="my-5">
                <h3>채용 공고</h3>
                <hr>
            </div>



            <!-- Form START -->
            <form class="file-upload" action="javascript:alert('채용 공고 등록이 완료되었습니다!');" id="form">

                <div class="row mb-5 gx-5">
                    <!-- Contact detail -->
                    <div class="col-xxl-8 mb-5 mb-xxl-0">
                        <div class="bg-secondary-soft px-4 py-5 rounded">
                            <div class="row g-3">
                                <!--			<h4 class="mb-4 mt-0">Contact detail</h4> -->
                                <!--  Notice title -->
                                <div class="col-md-6">
                                    <label class="form-label">공고제목 *</label>
                                    <input type="text" class="form-control" id="createjob" placeholder="" aria-label="title" value="공고제목...">
                                </div>

                                <!-- areas of recruitment -->
                                <div class="col-md-6">
                                    <label class="form-label">모집분야 *</label>

                                    <select class="custom-select" id="areasofrecruitment">
                                        <option selected>선택...</option>
                                        <option class="form-control" value="1">리셉션</option>
                                        <option class="form-control" value="2">프리랜서</option>
                                        <option class="form-control" value="3">비서</option>
                                    </select>
                                </div>


                                <!-- type of employment -->
                                <div class="col-md-6">
                                    <label class="form-label">고용형태 *</label>

                                    <select class="custom-select" id="typeofemployment">
                                        <option selected>선택...</option>
                                        <option class="form-control" value="1">파견</option>
                                        <option class="form-control" value="2">도급</option>

                                    </select>

                                </div>


                                <!--  number of recruits -->
                                <div class="col-md-6">
                                    <label class="form-label">모집인원 *</label>
                                    <input type="text" class="form-control" id="numberofrecruits" placeholder="" aria-label="title" value="____ 명">
                                </div>


                                <!--gender -->
                                <div class="col-md-6">
                                    <label class="form-label">성별 *</label>

                                    <select class="custom-select" id="gender">
                                        <option selected>선택...</option>
                                        <option class="form-control" value="1">여성</option>
                                        <option class="form-control" value="2">남성</option>
                                        <option class="form-control" value="3">선택되지 않음</option>

                                    </select>

                                </div>

                                <!-- age -->
                                <div class="col-md-6">
                                    <label class="form-label">연령 *</label>

                                    <select class="custom-select" id="age">
                                        <option selected>선택...</option>
                                        <option class="form-control" value="1">20세~29세</option>
                                        <option class="form-control" value="2">30세~39세</option>

                                    </select>

                                </div>

                                <!-- Education -->
                                <div class="col-md-6">
                                    <label class="form-label">학력 *</label>

                                    <select class="custom-select" id="Education">
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

                                    <select class="custom-select" id="dayoftheweek">
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

                                        <label class="col-form-label   label-align">출근시간<span class="required">*</span></label>

                                        <input class="form-control" id="workingtime" class='time' type="time" name="time" required='required'>

                                    </div>
                                </div>

                                <div class=" col-md-6">
                                    <div class="field item form-group ">

                                        <label class="col-form-label   label-align">퇴근시간<span class="required">*</span></label>

                                        <input class="form-control" id="workingtime1" class='time' type="time" name="time" required='required'>

                                    </div>
                                </div>

                                <!-- break time -->
                                <div class="col-md-6">
                                    <label class="form-label">휴게시간 </label>

                                    <select class="custom-select" id="breaktime">
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

                                    <select class="custom-select" id="preferentialconditions">
                                        <option selected>선택...</option>
                                        <option class="form-control" value="1">경력자</option>
                                        <option class="form-control" value="2">장기근무 가능자</option>
                                        <option class="form-control" value="3">사무업무 가능자</option>
                                    </select>

                                </div>

                                <!-- salary -->
                                <div class="col-md-6">
                                    <label class="form-label">급여  *</label>
                                    <input type="text" class="form-control" id="salary" placeholder="" aria-label="salary" value="---,---,--- 원">
                                </div>

                                <!-- Damdam place name -->
                                <div class="col-md-6">
                                    <label class="form-label">담담지명  *</label>
                                    <input type="text" class="form-control" id="damdamplacename" placeholder="" aria-label="salary" value="담담지명...">
                                </div>

                                <!-- pick -->
                                <div class="col-md-12">
                                    <div class="bg-secondary-soft px-3 py-4 rounded">
                                        <div class="row g-3">

                                            <div class="form-check form-check-inline">
                                                <input class="form-check-input" type="checkbox" id="inlineCheckbox1" value="option1">
                                                <label class="form-check-label" for="inlineCheckbox1">식대포함</label>
                                            </div>
                                            <div class="form-check form-check-inline">
                                                <input class="form-check-input" type="checkbox" id="inlineCheckbox2" value="option2">
                                                <label class="form-check-label" for="inlineCheckbox2">협의가능</label>
                                            </div>
                                            <div class="form-check form-check-inline">
                                                <input class="form-check-input" type="checkbox" id="inlineCheckbox3" value="option3">
                                                <label class="form-check-label" for="inlineCheckbox3">수습기간 있음</label>
                                            </div>
                                            <div class="form-check form-check-inline">
                                                <input class="form-check-input" type="checkbox" id="inlineCheckbox4" value="option4">
                                                <label class="form-check-label" for="inlineCheckbox4">성과급</label>
                                            </div>

                                        </div>
                                    </div>
                                </div>

                                <!-- Phone number -->
                                <div class="col-md-6">
                                    <label class="form-label">연락처 *</label>
                                    <input type="text" class="form-control" id="contact" placeholder="" aria-label="Phone number" value="예: +82 10 1234 5678">
                                </div>

                                <!-- fax number -->
                                <div class="col-md-6">
                                    <label class="form-label">팩스번호</label>
                                    <input type="text" class="form-control" id="faxnumber" placeholder="" aria-label="Phone number" value="예: +82 2 123 4567">
                                </div>

                                <!-- Email -->
                                <div class="col-md-6">
                                    <label for="inputEmail4" class="form-label">E-mail 주소 *</label>
                                    <input type="email" class="form-control" id="email" value="예: ATR@allthatreception.com">
                                </div>
                                <!-- Address -->
                                <div class="col-md-6">
                                    <label class="form-label">근무지 주소 *</label>
                                    <input type="text" class="form-control" id="address" placeholder="" aria-label="Address" value="예: 06682,서울시 서초구 방배로19길 17 (방배동) 서울빌딩 3층">
                                </div>

                                <!-- cover letter -->
                                <div class="col-md-12">
                                    <label class="form-label">자세한 내용 *</label>
                                    <textarea class="form-control" id="exampleFormControlTextarea1" rows="5">자세한 내용 ...</textarea>

                                </div>





                                <div class="col-md-12 ">
                                    <div class="bg-secondary-soft px-3 py-4 rounded">
                                        <div class="row g-3">
                                            <div class="form-check">
                                                <input type="checkbox" class="form-check-input" id="exampleCheck1">
                                                <label class="form-check-label" for="exampleCheck1">당사는 본 채용건과 관련하여 사실임을 증영합니다!</label>
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
                    <button type="submit" id="registration" class="btn btn-primary btn-lg">등록</button>
                </div>

                <br /> <br /> <br />

            </form>
            <!-- Form END -->
        </div>
    </div>
</div>