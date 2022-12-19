@extends('layouts.main')
@push('title') <title>Home </title> @endpush
@section('main-section')
<div class="d-flex flex-row">
    <a href="{{url('/lng/')}}" class="btn btn-primary m-1">English</a>
    <a href="{{url('/lng/hindi')}}" class="btn btn-danger m-1">Hindi</a>
    <a href="{{url('/lng/guj')}}" class="btn btn-warning m-1">Gujarati</a>
</div>
<h1>@lang('lang.welcome')</h1>
@endsection
