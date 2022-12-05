    @extends('layouts.main')
    @push('title')
    <title>Home</title>
    @endpush
    @section('main-section')
    <!--  -->
    <h1> welcome Home Page ,{{ $name ?? "User" }}</h1>
    <h2> {!!$demo!!} </h2>
    <h2> {{ $demo}} </h2>

    <!-- 2 -->
    <h2><u>if-else</u></h2>
    @if($name == "Admin")
    {{"Name is Admin"}}
    @elseif($name != "")
    {{"name is not empty"}}
    @else
    {{"name is empty"}}
    @endif

    <h2><u>unless </u></h2>
    @unless ($name == "Admin")
    the name is not Admin
    @endunless

    <h2><u>isset</u></h2>
    @isset($name)
    welcome,{{$name}}
    @endisset

    <h2><u>for loop</u></h2>
    @for($i = 1; $i <= 5 ; $i++) <h5>{{$i}}</h5>
        @endfor

        <h2><u>white loop</u></h2>
        @php
        $i = 1;
        @endphp
        @while ($i <= 5) <h5>{{$i}}</h5>
            @php $i++; @endphp
            @endwhile

            <h2><u>Foreach loop</u></h2>
            @php
            $countries = array("Afghanistan", "Albania", "Algeria", "American Samoa", "Andorra", "Angola", "Anguilla", "Antarctica", "Antigua and Barbuda", "Argentina");
            @endphp

            <select>
                @foreach($countries as $key=> $con)
                <option value="{{$key}}">{{$con}}</option>
                @endforeach
            </select>

            <h2><u>contiue</u></h2>
            @for($i = 1; $i <= 5 ; $i++)
             @if($i==3)
              @continue 
              @endif
             <h5>{{$i}}</h5>
            @endfor

                <h2><u>break</u></h2>
                @for($i = 1; $i <= 5 ; $i++) 
                @if($i==3) 
                @break
                @endif
                <h5>{{$i}}</h5>
                    @endfor

                @endsection
