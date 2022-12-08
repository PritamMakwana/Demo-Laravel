@extends('layouts.main')
@push('title') <title>Insert</title> @endpush
@section('main-section')
  <div class="container">
    <h1 class="text-center">Registeration</h1>

    <form action="{{url('/')}}/view" method="post">
      @csrf
      <!-- <pre>
          @php 
          print_r($errors->all());
          @endphp
          </pre> -->



      <div class="form-group d-flex w-100">
        <div class="flex-row w-50">
          <x-input type="text" name="name" label="Name" />
          <x-input type="email" name="email" label="Email" />
          <x-input type="text" name="address" label="address" />
          <div class="m-3">
          <p >Gender:</p>
          <input type="radio" class="ms-2"  name="gen" value="M">
          <label >Male</label>
          <input type="radio" class="ms-2" name="gen" value="F">
          <label >Female</label>
          <input type="radio" class="ms-2" name="gen" value="O">
          <label >Other</label>
          </div>
          <button class="m-3 btn btn-primary"> Submit</button>
        </div>
        <div class="flex-row w-50">
          <x-input type="text" name="city" label="city" />
          <x-input type="text" name="country" label="country" />
          <x-input type="date" name="dob" label="BOD" />
          <x-input type="password" name="password" label="Password" />
        </div>


      </div>
    </form>
  </div>
@endsection