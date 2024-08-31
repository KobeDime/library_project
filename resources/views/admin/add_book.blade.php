<!DOCTYPE html>
<html>
<head> 
   @include('admin.css') <!-- Optional if you have a global CSS file -->
   <link rel="stylesheet" href="{{ asset('admin/css/add_book.css') }}">
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
                       <h1 class="title_deg">Add Book</h1>
                       <form action="{{ url('store_book') }}" method="POST" enctype="multipart/form-data">
                           @csrf
                           <div class="div_pad">
                               <label for="book_name">Book Title</label>
                               <input type="text" id="book_name" name="book_name">
                           </div>

                           <div class="div_pad">
                               <label for="auther_name">Author Name</label>
                               <input type="text" id="auther_name" name="auther_name">
                           </div>

                           <div class="div_pad">
                               <label for="price">Price</label>
                               <input type="text" id="price" name="price">
                           </div>

                           <div class="div_pad">
                               <label for="quantity">Quantity</label>
                               <input type="number" id="quantity" name="quantity">
                           </div>

                           <div class="div_pad">
                               <label for="description">Description</label>
                               <textarea id="description" name="description"></textarea>
                           </div>

                           <div class="div_pad">
                               <label for="category">Category</label>
                               <select id="category" name="category" required>
                                   <option>Select a Category</option>
                                   @foreach($data as $category)
                                   <option value="{{ $category->id }}">{{ $category->cat_title }}</option>
                                   @endforeach
                               </select>
                           </div>

                           <div class="div_pad">
                               <label for="book_img">Book Image</label>
                               <input type="file" id="book_img" name="book_img">
                           </div>

                           <div class="div_pad">
                               <label for="auther_img">Author Image</label>
                               <input type="file" id="auther_img" name="auther_img">
                           </div>

                           <div class="div_pad">
                               <input type="submit" value="Add Book" class="btn btn-info">
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
