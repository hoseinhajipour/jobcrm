@section('title','내 직업')
<div class="container">
    <br/> <br/> <br/>

    <div class="my-5">
        <h3>내 직업</h3>
        <hr>
    </div>

    <div class="my-5">
        <table class="table table-striped">
            <thead>
            <tr>
                <th scope="col">title</th>
                <th scope="col">Resumes</th>
                <th scope="col">action</th>
            </tr>
            </thead>
            <tbody>
            @foreach($jobs as $job)
                <tr>
                    <th scope="row">{{$job->title}}</th>
                    <td>
                        {{$job->Resumes->count()}}
                    </td>
                    <td>
                        <a href="{{route('ViewJobResumes',["id"=>$job->id])}}" class="btn">View Resumes</a>
                        <a href="#" class="btn">Edit</a>
                        <a href="#" class="btn">Remove</a>
                    </td>
                </tr>
            @endforeach
            </tbody>
        </table>

        <div class="my-2">
            {{ $jobs->links() }}
        </div>
    </div>

</div>
