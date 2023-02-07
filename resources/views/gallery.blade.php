@extends('layouts.main')
@push('title') <title>Gallery</title> @endpush
@section('main-section')
<h1 class="text-center text-danger">Gallery</h1>


{!! Form::open(array('url' => url('/galleryupload'), 'method' => 'Post' ,'enctype' =>'multipart/form-data' )); !!}

<div class="d-flex flex-row align-items-center m-4 w-75">
  {!! Form::label('lblImage', 'Upload Image :', ['class' => 'form-label me-3 text-danger w-25' ]); !!}
  {!! Form::file('imageup', ['class' => 'form-control border border-danger ']); !!}
  <strong class="text-danger me-3 ms-3 w-25">
    @error('imageup')
    {{$message}}
    @enderror</strong>

  {!! Form::submit('Uplaod',[ 'class' => 'btn btn-danger m-4 w-25']); !!}
</div>
{!! Form::close(); !!}


<div class="container-fluid p-1 m-1">
  <div class="row g-4">
    @foreach($gal as $g)
    <div class=" col-4 ">
        <img src="{{$g->img_path}}" height="300"  class="card-img-top rounded" alt="...">
    </div>
    @endforeach
  </div>
</div>


@endsection