@extends('layouts.main')
@push('title') <title>URL generation</title> @endpush
@section('main-section')

<label class="text-warning fs-1">URL generation</label><br> 
<label class="text-warning">this is current URL = {{URL::current()}}</label><br> 
<label class="text-warning">this is FUll (with query parameter) URL =  {{URL::full()}}</label><br> 
<label class="text-warning">this is previous URL (last page) = {{URL::previous()}} </label><br> 
<label class="text-warning">This URL using on redirect page</label> </br>
<a href="{{URL::to('/view')}}" class="btn  btn-warning m-2">View data</a>

@endsection