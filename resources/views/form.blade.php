<!doctype html>
<html lang="en">

<head>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">

  <!-- Bootstrap CSS -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

  <title>Hello, world!</title>
</head>

<body>
  <div class="container">
    <h1 class="text-center">Registeration</h1>

    <form action="{{url('/')}}/customer" method="post">
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


</body>

</html>