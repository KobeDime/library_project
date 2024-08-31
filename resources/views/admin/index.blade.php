<!DOCTYPE html>
<html>
<head> 
   @include('admin.css')
</head>
  <body>
    @include('admin.header')
    <div class="d-flex align-items-stretch">
    @Include('admin.sidebar')
    @include('admin.body')
    @include('admin.footer')
  </body>
</html>