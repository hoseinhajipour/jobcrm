@section('title', 'Login')
@section('style')
    <link href="{{asset('css/signup_login.css')}}" rel="stylesheet">
@endsection
<section class="container1 forms">
    <div class="form login">
        <div class="form-content">
            <header>로그인</header>


            <form wire:submit.prevent="login">
                <div class="field input-field">
                    <input type="email" wire:model.defer="email"
                           placeholder="이메일"
                           class="input @error('password') is-invalid @enderror">
                    @error('email') <span class="invalid-feedback">{{ $message }}</span> @enderror
                </div>

                <div class="field input-field">
                    <input type="password" wire:model.defer="password" placeholder="비밀번호"
                           class="password @error('password') is-invalid @enderror">
                    @error('password') <span class="invalid-feedback">{{ $message }}</span> @enderror
                    <i class='bx bx-hide eye-icon'></i>
                </div>

                <div class="form-link">
                    <a href="{{ route('password.forgot') }}" class="forgot-pass">비밀번호 찾기</a>
                </div>

                <div class="field button-field">
                    <button type="submit">로그인</button>
                </div>
            </form>

            <div class="form-link">
                <span>계정이 없으세요 ?<a href="{{route('SingupJs')}}" class="link signup-link">회원가입</a></span>
            </div>
        </div>
    </div>
</section>
