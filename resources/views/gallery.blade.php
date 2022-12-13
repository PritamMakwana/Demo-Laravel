@extends('layouts.main')
@push('title') <title>Gallery</title> @endpush
@section('main-section')
<h1 class="text-center text-danger">Gallery</h1>


{!! Form::open(array('url' => url('/gallery'), 'method' => 'Post' ,'enctype' =>'multipart/form-data' )); !!}

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

@foreach($gal as $g)
<div class="card" style="width: 18rem;">
  <img src="{{url('/storage/app/'.$g->img_path) }}" class="card-img-top" alt="...">
  <div class="card-body">
    <h5 class="card-title">Card title</h5>
    <p class="card-text">{{ url(' storage/app/ '.$g->img_path) }}</p>
    <a href="#" class="btn btn-primary">Go somewhere</a>
  </div>
</div>
@endforeach

@endsection