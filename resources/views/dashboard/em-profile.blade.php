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
            <form class="file-upload" wire:submit.prevent="register">

                <div class="row mb-5 gx-5">

                    <!-- Upload profile -->
                    <div class="col-xxl-4 ">
                        <div class="bg-secondary-soft px-4 py-5 rounded">
                            <div class="row g-3">

                                <!--		<h4 class="mb-4 mt-0 ">Upload your profile photo</h4> -->

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
                                    <label class="btn btn-success-soft btn-block" for="customFile">기업 로고 업로드</label>
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
                                <div class="col-md-6">
                                    <label class="form-label">회사명 *</label>
                                    <input type="text" wire:model.defer="name"
                                           class="form-control" id="companyname"
                                           placeholder="" aria-label="First name" value="회사명 ...">
                                    @error('name') <span class="invalid-input">{{ $message }}</span> @enderror
                                </div>


                                <!-- New password -->
                                <div class="col-md-6">
                                    <label for="exampleInputPassword1" class="form-label"> 비밀번호</label>
                                    <input type="password" wire:model.defer="password" class="form-control"
                                           id="exampleInputPassword1">
                                    @error('password') <span class="invalid-input">{{ $message }}</span> @enderror
                                </div>
                                <!-- Confirm password -->
                                <div class="col-md-6">
                                    <label for="exampleInputPassword2" class="form-label"> 비밀번호 재입력</label>
                                    <input type="password" wire:model.defer="password_confirmation" class="form-control"
                                           id="exampleInputPassword2">
                                    @error('password_confirmation') <span
                                        class="invalid-input">{{ $message }}</span> @enderror
                                </div>


                                <!-- Birthday -->
                                <div class="col-md-6">
                                    <label for="date" class="form-label">설립일 *</label>

                                    <div class="input-group date" id="datepicker">

                                        <input type="date" wire:model.defer="establishment_date" class="form-control">

                                        <span class="input-group-append">
                                      <span class="input-group-text bg-white">
                                      <i class="fa fa-calendar"></i>
                                     </span>
                                   </span>
                                    </div>
                                </div>

                                <!--  representative name -->
                                <div class="col-md-6">
                                    <label class="form-label">대표자명 *</label>
                                    <input type="text" wire:model.defer="representative_name"
                                           class="form-control" id="representativename"
                                           placeholder="" aria-label="First name" value="대표자명 ...">
                                </div>


                                <!-- Business Number -->
                                <div class="col-md-6">
                                    <label class="form-label">사업자번호 *</label>
                                    <input type="text" class="form-control"
                                           wire:model.defer="business_number"
                                           id="businessnumber" placeholder="" aria-label="Phone number"
                                           value="000 000 00000">
                                </div>
                                <!-- Email -->
                                <div class="col-md-6">
                                    <label for="inputEmail4" class="form-label">E-mail 주소 *</label>
                                    <input type="email"
                                           wire:model.defer="email"
                                           class="form-control" id="email" value="예: ATR@allthatreception.com">
                                </div>

                                <!-- Address -->
                                <div class="col-md-6">
                                    <label class="form-label">주소 *</label>
                                    <input type="text" class="form-control"
                                           wire:model.defer="address"
                                           id="address" placeholder="" aria-label="Address"
                                           value="예: 06682,서울시 서초구 방배로19길 17 (방배동) 서울빌딩 3층">
                                </div>

                                <!-- contact number -->
                                <div class="col-md-6">
                                    <label class="form-label">담당자번호 *</label>
                                    <input type="text" class="form-control"
                                           wire:model.defer="contact_person_number"
                                           id="contactnumber" placeholder="" aria-label="Phone number"
                                           value="+82 10 1234 5678">
                                </div>

                                <!--  Name of person in charge -->
                                <div class="col-md-6">
                                    <label class="form-label">담당자명 *</label>
                                    <input type="text" class="form-control"
                                           wire:model.defer="contact_person_name"
                                           id="nameofpersonincharge" placeholder="" aria-label="First name"
                                           value="담당자명 ...">
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
                                <!--			<h4 class="mb-4 mt-0">Contact detail</h4> -->

                                <!--  number of employees -->
                                <div class="col-md-6">
                                    <label class="form-label">직원수</label>
                                    <input type="text" class="form-control"
                                           wire:model.defer="number_of_employees"
                                           id="numberofemployees" placeholder="" aria-label="title" value="____ 명">
                                </div>
                                <!--  business information -->
                                <div class="col-md-6">
                                    <label class="form-label">사업내용 *</label>
                                    <input type="text" class="form-control"
                                           wire:model.defer="business_information"
                                           id="businessinformation" placeholder="" aria-label="title" value="예: 서비스">
                                </div>
                                <!--  Sectors -->
                                <div class="col-md-6">
                                    <label class="form-label">업종 *</label>
                                    <input type="text" class="form-control"
                                           wire:model.defer="sectors"
                                           id="sectors" placeholder="" aria-label="title" value="예: 서비스">
                                </div>
                                <!--  home page -->
                                <div class="col-md-6">
                                    <label class="form-label">기업 홈페이지 주소 *</label>
                                    <input type="text" class="form-control"
                                           wire:model.defer="company_website_address"
                                           id="homepage" placeholder="" aria-label="title"
                                           value="예: http://www.allthatmodel.co.kr">
                                </div>
                                <!--  business type -->
                                <div class="col-md-6">
                                    <label class="form-label">기업형태 *</label>
                                    <input type="text" class="form-control"
                                           wire:model.defer="company_type"
                                           id="businesstype" placeholder="" aria-label="title" value="...">
                                </div>
                                <!--  sales -->
                                <div class="col-md-6">
                                    <label class="form-label">매출액</label>
                                    <input type="text" class="form-control"
                                           wire:model.defer="take"
                                           id="sales" placeholder="" aria-label="title" value="____ 억">
                                </div>


                                <!--  capital -->
                                <div class="col-md-6">
                                    <label class="form-label">자본금</label>
                                    <input type="text"
                                           wire:model.defer="capital"
                                           class="form-control" id="capital" placeholder="" aria-label="title"
                                           value="____ 억">
                                </div>


                                <!--Listed or not -->
                                <div class="col-md-6">
                                    <label class="form-label">상장여부</label>

                                    <select wire:model.defer="Listed_or_not" class="custom-select" id="crape">
                                        <option selected>선택...</option>
                                        <option class="form-control" value="1">상장</option>
                                        <option class="form-control" value="2">비상장</option>

                                    </select>
                                </div>

                                <div class="col-md-12 ">
                                    <div class="bg-secondary-soft px-3 py-4 rounded">
                                        <div class="row g-3">
                                            <div class="form-check">
                                                <input class="agree-check"
                                                       type="checkbox" wire:model="agree">
                                                <a href="{{route('page',["slug"=>"em-policy"])}}">
                                                    <label for="exampleCheck1">약관동의</label>
                                                </a>
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
                    <button type="submit" {{ $agree ? '' : 'disabled' }}
                    class="btn btn-primary btn-lg" id="emsignup">등록
                    </button>
                </div>

                <br/> <br/> <br/>

            </form>
            <!-- Form END -->
        </div>
    </div>
</div>
