<!doctype html>
<html lang="en">

<head>
  @stack('title');
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

  <!-- Bootstrap CSS v5.2.1 -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT" crossorigin="anonymous">

</head>

<body>

  <div class="position-sticky top-0">
    <nav class="navbar  navbar-expand-lg navbar-danger bg-danger">
      <div class="container-fluid">
        <a class="navbar-brand text-light " href="{{url('/')}}">
          @if(session()->has('u_name'))
          {{session()->get('u_name')}}
          @else
          Laravel
          @endif
        </a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
          <ul class="navbar-nav me-auto mb-2 mb-lg-0 ">

            <li class="nav-item">
              <a class="nav-link text-light" href="{{url('/')}}">Home</a>
            </li>
            <li class="nav-item">
              <a class="nav-link text-light" href="{{url('/insert')}}">Insert</a>
            </li>
            <li class="nav-item">
              <a class="nav-link text-light" href="{{url('/view')}}">View</a>
            </li>
            <li class="nav-item">
              <a class="nav-link text-light" href="{{url('/laravel-form')}}">Laravel Form</a>
            </li>

          </ul>
        </div>
      </div>
    </nav>
  </div>