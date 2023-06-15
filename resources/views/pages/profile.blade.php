@section('style')
    <link href="{{asset('css/js-profile.css')}}" rel="stylesheet">
    <link rel="stylesheet"
          href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.9.0/css/bootstrap-datepicker.min.css">

@endsection

<div>
    @if(Auth::user()->role->name=="job-seeker")
        <livewire:dashboard.js-profile/>
    @endif
    @if(Auth::user()->role->name=="employer" || Auth::user()->role->name=="Administrator")
        <livewire:dashboard.em-profile/>
    @endif
</div>
@section('script')
    <script
        src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.9.0/js/bootstrap-datepicker.min.js"></script>
    <script src="{{asset('js/js-profile.js')}}"></script>
@endsection
