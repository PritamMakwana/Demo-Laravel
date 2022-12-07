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
        <div class="form-group">
        <div class="mb-3">   
          <label for="" class="form-label">Name</label>
          <input type="text" name="name" id="" class="form-control" placeholder="" aria-describedby="helpId">
        </div>

        <div class="mb-3">   
          <label for="" class="form-label">Email</label>
          <input type="email" name="email" id="" class="form-control" placeholder="" aria-describedby="helpId">
        </div>

        <div class="mb-3">   
          <label for="" class="form-label">Password</label>
          <input type="password" name="password" id="" class="form-control" placeholder="" aria-describedby="helpId">
        </div>

        <button class="btn btn-primary" > Submit</button>

        </div>
        </form>
    </div>

    
  </body>
</html>