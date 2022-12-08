<!doctype html>
<html lang="en">

<head>
    <title>Title</title>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS v5.2.1 -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT" crossorigin="anonymous">

</head>

<body>
    <div class="container">
        <div class="table-responsive">
            <table class="table table-light">
                <thead>
                    <tr>
                        <th>Name</th>
                        <th>Email</th>
                        <th>Gender</th>
                        <th>Address</th>
                        <th>City</th>
                        <th>Country</th>
                        <th>Date of Birth</th>
                        <th>Status</th>
                        <th>Points</th>
                    </tr>
                </thead>
                <tbody>
                    @foreach($cus as $c)
                    <tr>
                        <td>{{$c->name}}</td>
                        <td>{{$c->email}}</td>
                        <td>
                            @if($c->gender =="M")
                            Male
                            @elseif($c->gender =="F")
                            Female
                            @else
                            Others
                            @endif

                        </td>
                        <td>{{$c->address}}</td>
                        <td>{{$c->city}}</td>
                        <td>{{$c->country}}</td>
                        <td>{{$c->dob}}</td>
                        <td>
                            @if($c->stauts =="1")
                            Active
                            @else
                            Inactive
                            @endif
                        </td>
                        <td>{{$c->points}}</td>
                    </tr>
                    @endforeach
                </tbody>
            </table>
        </div>
    </div>







</body>

</html>