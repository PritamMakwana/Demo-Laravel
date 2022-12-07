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

    <form action="{{url('/')}}/regi" method="post">
      @csrf
      <!-- <pre>
          @php 
          print_r($errors->all());
          @endphp
          </pre> -->

      @php
      $demo = 1;
      @endphp

      <div class="form-group">
        <x-input type="text" name="name" label="Name" :demo="$demo" />
        <x-input type="email" name="email" label="Email" />
        <x-input type="password" name="password" label="Password" />
        <x-input type="password" name="password_confir" label="Confrim Password" />

        <button class="btn btn-primary"> Submit</button>

      </div>
    </form>
  </div>


</body>

</html>