@extends('layouts.main')
@push('title') <title>Insert</title> @endpush
@section('main-section')
<div class="container">
  <h1 class="text-center">{{$title}}</h1>

  <form action="{{$url}}" method="post">
    @csrf
    <div class="form-group d-flex w-100">
      <div class="flex-row w-50">

        <x-input type="text" name="name" label="Name" value="{{$customer!=null ? $customer->name : ''}}" />
        <x-input type="email" name="email" label="Email" value="{{$customer!=null ? $customer->email: ''}}" />
        <x-input type="text" name="address" label="address" value="{{$customer!=null ? $customer->address: ''}}" />
        <div class="m-3">
          <p>Gender:</p>
          <input type="radio" class="ms-2" name="gen" value="M" {{$customer!=null ? $customer->gender == "M" ? "checked" : "": ''}}>
          <label>Male</label>
          <input type="radio" class="ms-2" name="gen" value="F" {{$customer!=null ? $customer->gender == "F" ? "checked" : "": ''}}>
          <label>Female</label>
          <input type="radio" class="ms-2" name="gen" value="O" {{$customer!=null ? $customer->gender == "O" ? "checked" : "": ''}}>
          <label>Other</label>
        </div>
        <button class="m-3 btn btn-primary"> Submit</button>
      </div>
      <div class="flex-row w-50">
        <x-input type="text" name="city" label="city" value="{{$customer!=null ? $customer->city: ''}}" />
        <x-input type="text" name="country" label="country" value="{{$customer!=null ? $customer->country: ''}}" />
        <x-input type="date" name="dob" label="BOD" value="{{$customer!=null ? $customer->dob: ''}}" />
        <x-input type="text" name="password" label="Password" value="{{$customer!=null ? $customer->password: ''}}" />

      </div>


    </div>
  </form>
</div>
@endsection