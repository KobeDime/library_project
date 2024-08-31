<!DOCTYPE html>
<html>
<head>
    @include('admin.css')
    <link rel="stylesheet" href="{{ asset('admin/css/category.css') }}">
</head>
<body>
    @include('admin.header')
    <div class="d-flex align-items-stretch">
    @Include('admin.sidebar')
     <div class="page-content">
        <div class="page-header">
          <div class="container-fluid">
            <div class="div_center">
              <div>
                @if(session()->has('message'))
                <div class="alert alert-success">
                  <button type="button" class="close" data-dismiss="alert" aria-hidden="true">x</button> 
                  {{session()->get('message')}}
                </div>
                @endif
              </div>
              <h1 class="cat_label">Add Category</h1>
              <form action="{{url('add_category')}}" method="Post">
                @csrf
                <span style="padding-right: 15px;">
                <label>Category Name</label>
                <input type="text" name="category" required>
                </span>
                <input class="btn btn-primary" type="submit" value="Add Item">
              </form>
              <div> 
                <table class="center">               
                  <tr>
                    <th>Category Name</th>
                    <th>Action</th>
                  </tr>
                  @foreach($data as $data)
                  <tr>
                    <td>{{$data->cat_title}}</td>
                    <td>
                      <a class="btn btn-info" href="{{url('edit_category',$data->id)}}">Update</a>
                      <a onclick="confirmation(event)" class="btn btn-danger" href="{{url('cat_delete',$data->id)}}">Delete</a>
                    </td>
                  </tr>
                  @endforeach
                </table>
              </div>
            </div>
          </div>
        </div>
       </div>
       @include('admin.footer')
      <script type="text/javascript">    
        function confirmation(ev) {
          ev.preventDefault();
          var urlToRedirect = ev.currentTarget.getAttribute('href');  
          console.log(urlToRedirect);   
          swal({
            title: "Are you sure to Delete this",
            text: "You will not be able to revert this!",
            icon: "warning",
            buttons: true,
            dangerMode: true,
          })
          .then((willCancel) => {
            if (willCancel) {
              window.location.href = urlToRedirect;  
            }  
          });    
        }
      </script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.js" integrity="sha512-AA1Bzp5Q0K1KanKKmvN/4d3IRKVlv9PYgwFPvm32nPO6QS8yH1HO7LbgB1pgiOxPtfeg5zEn2ba64MUcqJx6CA==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
</body>
</html>