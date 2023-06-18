@section('title','업무 경험')
<div class="container">
    <br/> <br/> <br/>

    <div class="my-5">
        <h3>업무 경험</h3>
        <hr>
    </div>
    <div class="card shadow">
        <div class="card-header">
            상태 :
            <select wire:model.defer="status"
                    wire:change="updateStatus"
                    class="form-control">
                <option value="pending">확인 중</option>
                <option value="read">확인했음</option>
                <option value="confirmation_for_interview">면접</option>
                <option value="complete">완료</option>
            </select>
        </div>
        <div class="card-body">
            <div class="row">
                <div class="col-6 text-center">
                    @if($resume->user->avatar)
                        <img src="{{asset(Voyager::image($resume->user->avatar))}}" alt=""
                             width="200">
                    @else
                        <i class="icofont-user position-absolute top-50 start-50 translate-middle text-secondary"></i>
                    @endif
                </div>
                <div class="col-6">
                    <label>이름: {{$resume->user->name}}</label><br/>
                    <label>이메일: {{$resume->user->email}}</label><br/>
                    <label>생년월일: {{$resume->user->birth_date}}</label><br/>
                    <label>전화번호: {{$resume->user->phone}}</label><br/>
                    <label>주소: {{$resume->user->address}}</label><br/>
                    <label>성별: {{$resume->user->gender}}</label><br/>
                </div>
            </div>

            <hr/>
            @foreach($EducationHistories as $index => $EducationHistory)
                <div class="row">
                    <div class="col-6">
                        <label>학력: {{$EducationHistory->education}}</label><br/>
                        <label>학교: {{$EducationHistory->school}}</label><br/>
                    </div>
                    <div class="col-6">
                        <label>학과: {{$EducationHistory->school_department}}</label><br/>
                        <label>입학일: {{$EducationHistory->admission_date}}</label><br/>
                        <label>졸업일: {{$EducationHistory->graduation_date}}</label>
                    </div>
                </div>
                <hr/>
            @endforeach


            @foreach($WorkHistories as $index02 => $Work)
                <div class="row">
                    <div class="col-6">
                        <label>연봉: {{$Work->salary}}$</label><br/>
                        <label>회사 이름: {{$Work->company_name}}</label><br/>
                        <label>회사 부서: {{$Work->company_department}}</label><br/>
                    </div>
                    <div class="col-6">
                        <label>직급: {{$Work->rank}}</label><br/>
                        <label>고용 시작일: {{$Work->employment_start}}</label><br/>
                        <label>고용 종료일: {{$Work->employment_end}}</label><br/>
                    </div>
                </div>
                <hr/>
            @endforeach

            <div class="row">
                <div class="col-6">
                    <label>언어: {{$resume->user->language}}</label><br/>
                    <label>O/A 수준: {{$resume->user->o_a}}</label><br/>
                </div>
                <div class="col-6">
                    <label>지원 분야: {{$resume->user->support_areas}}</label><br/>
                    <label>자기 소개: {{$resume->user->self_introduction}}</label><br/>
                </div>
            </div>
        </div>
    </div>


</div>
