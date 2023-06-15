@section('title','제출된 이력서')
<div class="container">
    <br/> <br/> <br/>

    <div class="my-5">
        <h3>제출된 이력서</h3>
        <hr>
    </div>

    <div class="my-5">
        <table class="table table-striped">
            <thead>
            <tr>
                <th scope="col">#</th>
                <th scope="col">Job</th>
                <th scope="col">status</th>
                <th scope="col">action</th>
            </tr>
            </thead>
            <tbody>
            @foreach($resumes as $resume)
                <tr>
                    <th scope="row">{{$resume->id}}</th>
                    <td>
                        <img src="{{asset(Voyager::image($resume->job->user->avatar))}}" width="64">
                        {{$resume->job->title}}
                    </td>
                    <td>{{$resume->status}}</td>
                    <td><a href="#" class="btn">View</a></td>
                </tr>
            @endforeach
            </tbody>
        </table>

        <div class="my-2">
            {{ $resumes->links() }}
        </div>
    </div>

</div>
