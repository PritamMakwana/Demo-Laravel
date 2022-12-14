@extends('layouts.main')
@push('title') <title>View</title> @endpush
@section('main-section')
<div class="container w-100 bg-light shadow-lg p-3 mb-5 bg-body rounded">

    <div class="m-2 d-flex justify-content-start">
    <form action="" class="col-9">
        <div class="mb-3">
          <input type="search" name="search" class="form-control" placeholder="Search name or email" value="{{$search}}" >
        </div>
        <button class="btn btn-primary">Search</button>
        <a href="{{url('/view')}}">
        <button class="btn btn-info" type="button">All Show</button>
        </a>
    </form>
    </div>

    <div class="m-2 d-flex justify-content-end">
        <a href="{{route('insert')}}" class="btn btn-danger me-3">Add</a>
        <a href="{{route('trash')}}" class="btn btn-primary">Trash Data</a>
    </div>
    <div class="table-responsive">
        <table class="table table-danger">
            <thead class="text-danger">
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
                    <th>Delete</th>
                    <th>Update</th>
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
                        <a href="">
                            <span class="badge bg-info">Active</span>
                        </a>
                        @else
                        <a href="">
                            <span class="badge bg-secondary">Inactive</span>
                        </a>
                        @endif
                    </td>
                    <td>{{$c->points}}</td>
                    <td>
                        <!-- <a href="{{url('/delete/')}}/{{$c->customer_id}}"> -->
                        <a href="{{route('delete',['id' => $c ->customer_id])}}">
                            <button class="btn btn-danger">Trash</button>
                        </a>
                    </td>
                    <td>
                        <a href="{{route('edit',['id' => $c ->customer_id])}}">
                            <button class="btn btn-primary">Edit</button>
                        </a>
                    </td>
                </tr>
                @endforeach
            </tbody>
        </table>
    </div>
</div>
@endsection