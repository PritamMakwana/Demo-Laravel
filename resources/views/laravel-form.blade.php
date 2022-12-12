@extends('layouts.main')
@push('title') <title>Laravel Form</title> @endpush
@section('main-section')
<div class="container">
    <h1 class="text-center">Laravel Form</h1>

    {!! Form::open(array('url' => url('/laravel-form'), 'method' => 'Post')); !!}
    <!-- this automated token pass -->
    <div class="d-flex flex-row ">

        <div class="d-flex flex-column w-50">
            <div class="d-flex flex-row align-items-center m-1 ">
                {!! Form::label('uname', 'User Name :', ['class' => 'form-label me-1 text-primary ']); !!}
                {!! Form::text('username','Admin', ['class' => 'form-control border border-primary ']); !!}
            </div>

            <div class="d-flex flex-row align-items-center m-1 ">
                {!! Form::label('lblpass', 'Password :', ['class' => 'form-label me-3 text-primary ']); !!}
                {!! Form::password('password', ['class' => 'form-control border border-primary ']); !!}
            </div>

            <div class="d-flex flex-row align-items-center m-1 ">
                {!! Form::label('lblemail', 'email :', ['class' => 'form-label me-3 text-primary ']); !!}
                {!! Form::email('email','admin@gmail.com', ['class' => 'form-control border border-primary ']); !!}
            </div>

            <div class="d-flex flex-row align-items-center m-1 ">
                {!! Form::label('lbleFile', 'Upload File :', ['class' => 'form-label me-3 text-primary ']); !!}
                {!! Form::file('uploadFile', ['class' => 'form-control border border-primary ']); !!}
            </div>

            <div class="d-flex flex-row align-items-center m-1 ">
                {!! Form::label('lblCheckbox', 'Hobby :', ['class' => 'form-label me-3 text-primary ']); !!}

                {!! Form::label('game', 'game', ['class' => 'form-label m-3 text-info ']); !!}
                {!! Form::checkbox('hbb', 'game', true); !!}
                {!! Form::label('reading', 'reading', ['class' => 'form-label m-3 text-info ']); !!}
                {!! Form::checkbox('hbb', 'reading',false); !!}
                {!! Form::label('writing', 'writing', ['class' => 'form-label m-3 text-info ']); !!}
                {!! Form::checkbox('hbb', 'writing'); !!}
            </div>

            <div class="d-flex flex-row align-items-center m-1 ">
                {!! Form::label('lblRadio', 'Gender :', ['class' => 'form-label me-3 text-primary ']); !!}

                {!! Form::label('male', 'male', ['class' => 'form-label m-3 text-info ']); !!}
                {!! Form::radio('gender', 'male', true); !!}
                {!! Form::label('female', 'female', ['class' => 'form-label m-3 text-info ']); !!}
                {!! Form::radio('gender', 'female'); !!}
                {!! Form::label('other', 'other', ['class' => 'form-label m-3 text-info ']); !!}
                {!! Form::radio('gender', 'other'); !!}
            </div>

        </div>

        <div class="d-flex flex-column w-50">
            <div class="d-flex flex-row align-items-center m-1 ">
                {!! Form::label('lblrollno', 'Roll No :', ['class' => 'form-label me-3 text-primary ']); !!}
                {!! Form::number('rollno','', ['class' => 'form-control border border-primary ']); !!}
            </div>

            <div class="d-flex flex-row align-items-center m-1 ">
                {!! Form::label('lbldob', 'DOB :', ['class' => 'form-label me-3 text-primary ']); !!}
                {!! Form::date('dob', \Carbon\Carbon::now(), ['class' => 'form-control border border-primary ']); !!}
            </div>

            <div class="d-flex flex-row align-items-center m-1 ">
                {!! Form::label('lblcity', 'City :', ['class' => 'form-label me-3 text-primary ']); !!}
                {!! Form::select('city',(['A' => 'amreli' ,'S' => 'surat', 'R' => 'Rajkot']),null, ['placeholder' => 'Pick city...' , 'class' => 'form-control border border-primary ']); !!}
            </div>

            {!! Form::submit('Submit',[ 'class' => 'btn btn-primary ms-5']); !!}
        </div>



    </div>
    {!! Form::close(); !!}




</div>
<pre>
<label for="" class="form-label text-light m-5 fs-4 badge bg-danger text-wrap">{{$json==null ? 'insert data after show !' :  $json }}</label>
</pre>

@endsection