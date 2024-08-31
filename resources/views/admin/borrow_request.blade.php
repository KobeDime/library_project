<!DOCTYPE html>
<html>
<head>
    @include('admin.css')
    <link rel="stylesheet" href="{{ asset('admin/css/borrow_request.css') }}">
</head>
<body>
    @include('admin.header')
    <div class="d-flex align-items-stretch">
        <!-- Sidebar Navigation -->
        @include('admin.sidebar')
        <!-- Sidebar Navigation end -->
        <div class="page-content">
            <div class="page-header">
                <div class="container-fluid">
                    <table class="center">
                        <tr>
                            <th>User Name</th>
                            <th>Email</th>
                            <th>Phone</th>
                            <th>Book title</th>
                            <th>Quantity</th>
                            <th>Borrow Status</th>
                            <th>Book Image</th>
                            <th>Change Status</th>
                        </tr>
                        @foreach($data as $data)
                        <tr>
                            <td>{{ $data->user->name }}</td>
                            <td>{{ $data->user->email }}</td>
                            <td>{{ $data->user->phone }}</td>
                            <td>{{ $data->book->title }}</td>
                            <td>{{ $data->book->quantity }}</td>
                            <td>
                                @if($data->status == 'Approved')
                                    <span class="status-approved">{{ $data->status }}</span>
                                @elseif($data->status == 'Rejected')
                                    <span class="status-rejected">{{ $data->status }}</span>
                                @elseif($data->status == 'Returned')
                                    <span class="status-returned">{{ $data->status }}</span>
                                @elseif($data->status == 'Applied')
                                    <span class="status-applied">{{ $data->status }}</span>
                                @endif
                            </td>
                            <td>
                                <img src="book/{{ $data->book->book_img }}">
                            </td>
                            <td>
                                <a class="btn btn-success" href="{{ url('approve_book', $data->id) }}">Approved</a>
                                <a class="btn btn-danger" href="{{ url('rejected_book', $data->id) }}">Rejected</a>
                                <a class="btn btn-info" href="{{ url('return_book', $data->id) }}">Returned</a>
                            </td>
                        </tr>
                        @endforeach
                    </table>
                </div>
            </div>
        </div>
    </div>
    @include('admin.footer')
</body>
</html>
