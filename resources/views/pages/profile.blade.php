@section('style')
    <link href="{{asset('css/js-profile.css')}}" rel="stylesheet">
    <link rel="stylesheet"
          href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.9.0/css/bootstrap-datepicker.min.css">

@endsection

<div>
    @if(Auth::user()->role_id == 3)
        <livewire:dashboard.js-profile/>
    @endif
    @if(Auth::user()->role_id == 4 || Auth::user()->role_id == 1)
        <livewire:dashboard.em-profile/>
    @endif
</div>
@section('script')
    <script
        src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.9.0/js/bootstrap-datepicker.min.js"></script>
    <script src="{{asset('js/js-profile.js')}}"></script>
@endsection
