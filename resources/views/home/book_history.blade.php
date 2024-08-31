<!DOCTYPE html>
<html lang="en">
<head>
    @include('home.css')
    <link rel="stylesheet" href="{{ asset('assets/css/alert.css') }}"> 
</head>
<body>
@include('home.header')
<div class="currently-market">
    <div class="container">
        <div class="row">
            @if(session()->has('message'))
            <div id="alertMessage" class="alert alert-success show">
                {{ session()->get('message') }}
                <button type="button" class="close" aria-hidden="true" onclick="hideAlert()">×</button>
            </div>
            @endif
            <table class="table_deg">
                <tr>
                    <th>Book Name</th>
                    <th>Book Author</th>
                    <th>Book Status</th>
                    <th>Image</th>
                    <th>Cancel Request</th>
                </tr>
                @foreach($data as $data)
                <tr>
                    <td>{{ $data->book->title }}</td>
                    <td>{{ $data->book->auther_name }}</td>
                    <td>{{ $data->status }}</td>
                    <td>
                        <img class="book_img" src="{{ asset('book/'.$data->book->book_img) }}">
                    </td>
                    <td>
                        @if($data->status == 'Applied')
                        <a href="{{ url('cancel_req', $data->id) }}" class="btn button-42">Cancel</a>
                        @else
                        <p style="color: white; font-weight: bold;">Not Allowed</p>
                        @endif
                    </td>
                </tr>
                @endforeach
            </table>
        </div>
    </div>
</div>
@include('home.footer')
<script src="{{ asset('assets/js/alert.js') }}"></script> <!-- Link to the external JavaScript file -->
</body>
</html>
