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
            <form wire:submit.prevent="register" class="file-upload" >


                <div class="col-xxl-12 px-4 py-3 rounded ">

                    <ul class="nav nav-pills nav-fill" id="myTab">
                        <li class="nav-item">
                            <a class="nav-link" href="{{route('SingupJs')}}">개인회원</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link active" href="{{route('SingupEm')}}">기업회원</a>
                        </li>
                    </ul>

                </div>


                <div class="row mb-5 gx-5">

                    <!-- Upload profile -->
                    <div class="col-xxl-4 ">
                        <div class="bg-secondary-soft px-4 py-5 rounded">
                            <div class="row g-3">

                                <div class="text-center">
                                    <!-- Image upload -->
                                    <div class="square position-relative display-2 mb-3">
                                        @if($avatar)
                                            <img src="{{ $avatar->temporaryUrl() }}" width="200">
                                        @else
                                            <i class="icofont-user top-50 start-50 translate-middle text-secondary"></i>
                                        @endif
                                    </div>
                                    <!-- Button -->
                                    <input type="file" wire:model.defer="avatar" id="customFile" name="file" hidden="">
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
                                <div class="col-md-6">
                                    <label class="form-label">회사명 *</label>
                                    <input type="text" wire:model.defer="name"
                                           class="form-control"
                                           placeholder="회사명 ..." aria-label="First name">
                                    @error('name') <span class="invalid-input">{{ $message }}</span> @enderror
                                </div>


                                <!-- New password -->
                                <div class="col-md-6">
                                    <label for="exampleInputPassword1" class="form-label"> 비밀번호</label>
                                    <input type="password" wire:model.defer="password" class="form-control">
                                    @error('password') <span class="invalid-input">{{ $message }}</span> @enderror
                                </div>
                                <!-- Confirm password -->
                                <div class="col-md-6">
                                    <label for="exampleInputPassword2" class="form-label"> 비밀번호 재입력</label>
                                    <input type="password" wire:model.defer="password_confirmation"
                                           class="form-control">
                                    @error('password_confirmation') <span class="invalid-input">{{ $message }}</span> @enderror
                                </div>


                                <!-- Birthday -->
                                <div class="col-md-6">
                                    <label for="date" class="form-label">설립일 *</label>

                                    <div class="input-group date">

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
                                           class="form-control"
                                           placeholder="대표자명 ..." aria-label="representative name">
                                </div>


                                <!-- Business Number -->
                                <div class="col-md-6">
                                    <label class="form-label">사업자번호 *</label>
                                    <input type="text" class="form-control"
                                           wire:model.defer="business_number"
                                           placeholder="000 000 00000"
                                           aria-label="Phone number">
                                </div>
                                <!-- Email -->
                                <div class="col-md-6">
                                    <label for="inputEmail4" class="form-label">E-mail 주소 *</label>
                                    <input type="email"
                                           wire:model.defer="email"
                                           placeholder="예: ATR@allthatreception.com"
                                           class="form-control">
                                </div>

                                <!-- Address -->
                                <div class="col-md-6">
                                    <label class="form-label">주소 *</label>
                                    <input type="text" class="form-control"
                                           wire:model.defer="address"
                                           placeholder="예: 06682,서울시 서초구 방배로19길 17 (방배동) 서울빌딩 3층"
                                           aria-label="Address">
                                </div>

                                <!-- contact number -->
                                <div class="col-md-6">
                                    <label class="form-label">담당자번호 *</label>
                                    <input type="text" class="form-control"
                                           wire:model.defer="contact_person_number"
                                           placeholder="+82 10 1234 5678"
                                           aria-label="Phone number">
                                </div>

                                <!--  Name of person in charge -->
                                <div class="col-md-6">
                                    <label class="form-label">담당자명 *</label>
                                    <input type="text" class="form-control"
                                           wire:model.defer="contact_person_name"
                                           placeholder="담당자명 ..."
                                           aria-label="First name">
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

                                <!--  number of employees -->
                                <div class="col-md-6">
                                    <label class="form-label">직원수</label>
                                    <input type="text" class="form-control"
                                           wire:model.defer="number_of_employees"
                                           placeholder="____ 명"
                                           aria-label="title">
                                </div>
                                <!--  business information -->
                                <div class="col-md-6">
                                    <label class="form-label">사업내용 *</label>
                                    <input type="text" class="form-control"
                                           wire:model.defer="business_information"
                                           placeholder="예: 서비스"
                                           aria-label="businessinformation">
                                </div>
                                <!--  Sectors -->
                                <div class="col-md-6">
                                    <label class="form-label">업종 *</label>
                                    <input type="text" class="form-control"
                                           wire:model.defer="sectors"
                                           placeholder="예: 서비스" aria-label="title">
                                </div>
                                <!--  home page -->
                                <div class="col-md-6">
                                    <label class="form-label">기업 홈페이지 주소 *</label>
                                    <input type="text" class="form-control"
                                           wire:model.defer="company_website_address"
                                           placeholder="예: http://www.allthatmodel.co.kr"
                                           aria-label="company_website_address" value="">
                                </div>
                                <!--  business type -->
                                <div class="col-md-6">
                                    <label class="form-label">기업형태 *</label>
                                    <input type="text" class="form-control"
                                           wire:model.defer="company_type"
                                           placeholder="..." aria-label="company type">
                                </div>
                                <!--  sales -->
                                <div class="col-md-6">
                                    <label class="form-label">매출액</label>
                                    <input type="text" class="form-control"
                                           wire:model.defer="take"
                                           placeholder="____ 억" aria-label="sales">
                                </div>


                                <!--  capital -->
                                <div class="col-md-6">
                                    <label class="form-label">자본금</label>
                                    <input type="text"
                                           wire:model.defer="capital"
                                           class="form-control"
                                           placeholder="____ 억"
                                           aria-label="title">
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
                                                <a href="#" data-toggle="modal" data-target="#exampleModal">
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

                <x-honey/>

                <!-- button -->
                <div class="gap-3 d-md-flex justify-content-md-end text-center">
                    <button type="submit" {{ $agree ? '' : 'disabled' }}
                    class="btn btn-primary btn-lg" id="emsignup">

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
                    {!! setting('policy.employer') !!}
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">닫다</button>
                </div>
            </div>
        </div>
    </div>
</div>
