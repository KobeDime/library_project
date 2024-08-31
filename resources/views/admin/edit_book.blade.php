<!DOCTYPE html>
<html>
<head> 
   @include('admin.css')
   <link rel="stylesheet" href="{{ asset('admin/css/edit_book.css') }}">
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
                   <div class="div_center">
                       <h1 class="title">Update Book</h1>
                       <form action="{{ url('update_book', $data->id) }}" method="POST" enctype="multipart/form-data">
                           @csrf
                           <div class="div_pad">
                               <label for="title">Book Title</label>
                               <input type="text" id="title" name="title" value="{{ $data->title }}">
                           </div>

                           <div class="div_pad">
                               <label for="auther_name">Author Name</label>
                               <input type="text" id="auther_name" name="auther_name" value="{{ $data->auther_name }}">
                           </div>

                           <div class="div_pad">
                               <label for="price">Price</label>
                               <input type="text" id="price" name="price" value="{{ $data->price }}">
                           </div>

                           <div class="div_pad">
                               <label for="quantity">Quantity</label>
                               <input type="number" id="quantity" name="quantity" value="{{ $data->quantity }}">
                           </div>

                           <div class="div_pad">
                               <label for="description">Description</label>
                               <textarea id="description" name="description">{{ $data->description }}</textarea>
                           </div>

                           <div class="div_pad">
                               <label for="category">Category</label>
                               <select id="category" name="category">
                                   <option value="{{ $data->category_id }}">{{ $data->category->cat_title }}</option>
                                   @foreach($category as $cat)
                                       <option value="{{ $cat->id }}">{{ $cat->cat_title }}</option>
                                   @endforeach
                               </select>
                           </div>

                           <div class="div_pad">
                               <label>Current Author Image</label>
                               <img style="width: 80px; border-radius: 50%; margin: auto;" src="/auther/{{ $data->auther_img }}">
                           </div>

                           <div class="div_pad">
                               <label for="auther_img">Change Author Image</label>
                               <input type="file" id="auther_img" name="auther_img">
                           </div>

                           <div class="div_pad">
                               <label>Current Book Image</label>
                               <img style="width: 80px; margin: auto;" src="/book/{{ $data->book_img }}">
                           </div>

                           <div class="div_pad">
                               <label for="book_img">Change Book Image</label>
                               <input type="file" id="book_img" name="book_img">
                           </div>

                           <div class="div_pad">
                               <input class="btn btn-info" type="submit" value="Update Book">
                           </div>
                       </form>
                   </div>
               </div>
           </div>
       </div>
   </div>
   @include('admin.footer')
</body>
</html>
