@extends('layouts.main')
@push('title') <title>View</title> @endpush
@section('main-section')
<div class="container w-100 bg-light shadow-lg p-3 mb-5 bg-body rounded">
    <div class="m-2 d-flex justify-content-end">
        <a href="{{route('insert')}}" class="btn btn-danger">Add</a>
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
                            <button class="btn btn-danger">Delete</button>
                        </a>
                    </td>
                    <td>
                        <button class="btn btn-primary">Edit</button>
                    </td>
                </tr>
                @endforeach
            </tbody>
        </table>
    </div>
</div>
@endsection