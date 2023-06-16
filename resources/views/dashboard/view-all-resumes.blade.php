@section('title','일일')
<div class="container">
    <br/> <br/> <br/>

    <div class="my-5">
        <h3>일일</h3>
        <hr>
    </div>

    <div class="my-5">
        <table class="table table-striped">
            <thead>
            <tr>
                <th scope="col">Job</th>
                <th scope="col">name</th>
                <th scope="col">email</th>
                <th scope="col">status</th>
                <th scope="col">action</th>
            </tr>
            </thead>
            <tbody>
            @foreach($resumes as $resume)
                <tr>
                    <td>
                        <img src="{{asset(Voyager::image($resume->job->user->avatar))}}" width="32">
                        {{$resume->job->title}}
                    </td>
                    <td>
                        <img src="{{asset(Voyager::image($resume->user->avatar))}}" width="32">
                        {{$resume->user->name}}
                    </td>
                    <td>{{$resume->email}}</td>
                    <td>{{$resume->status}}</td>
                    <td><a href="{{route('ViewResume',["id"=>$resume->id])}}" class="btn">View</a></td>
                </tr>
            @endforeach
            </tbody>
        </table>

        <div class="my-2">
            {{ $resumes->links() }}
        </div>
    </div>

</div>
