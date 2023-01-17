@extends('layouts.main')
@push('title') <title>Topices</title> @endpush
@section('main-section')

<label class="text-warning fs-1">URL generation</label><br> 
<label class="text-warning">this is current URL = {{URL::current()}}</label><br> 
<label class="text-warning">this is FUll (with query parameter) URL =  {{URL::full()}}</label><br> 
<label class="text-warning">this is previous URL (last page) = {{URL::previous()}} </label><br> 
<label class="text-warning">This URL using on redirect page</label> </br>
<a href="{{URL::to('/view')}}" class="btn  btn-warning m-2">View data</a>
</br>
<label class="text-danger fs-1">HTTP Client (API data show for users)</label><br> 
<table class="table table-striped table-light" border="1">
    <tr>
        <td class="table-danger" scope="col">id</td>
        <td  class="table-danger" scope="col">user</td>
        <td  class="table-danger" scope="col">Avatar</td>
    </tr>
    @foreach($collection as $user)
    <tr>
        <td scope="col">{{$user['id']}}</td>
        <td>{{$user['login']}}</td>
        <td><img src="{{$user['avatar_url']}}" height="50"></td>
    </tr>
    @endforeach
</table>



@endsection