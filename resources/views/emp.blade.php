@extends('layouts.main')
@push('title') <title>Query Bulider</title> @endpush
@section('main-section')

<label class="text-danger fs-1">Query Bulider</label><br> 
<!-- <label class="text-danger fs-3">Selcted Data</label><br>  -->
<table class="table table-striped table-light" border="1">
    <tr>
        <td class="table-danger" scope="col">id</td>
        <td  class="table-danger" scope="col">name</td>
        <td  class="table-danger" scope="col">email</td>
        <td  class="table-danger" scope="col">address</td>
        <td  class="table-danger" scope="col">emp no</td>
    </tr>
    @foreach($data as $emp)
    <tr>
        <td scope="col">{{$emp->e_id}}</td>
        <td >{{$emp->e_name}}</td>
        <td >{{$emp->e_email}}</td>
        <td >{{$emp->e_address}}</td>
        <td >{{$emp->e_no}}</td>
    </tr>
    @endforeach
</table>


@endsection