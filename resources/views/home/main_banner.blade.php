<!DOCTYPE html>
<body lang="en">
<head>
    @include('home.css')
    <link rel="stylesheet" href="{{ asset('assets/css/alert.css') }}"> 
</head>
<div class="main-banner">
    <div class="container">
      <div class="row">
      @if(session()->has('message'))
        <div id="alertMessage" class="alert alert-success show">
            {{ session()->get('message') }}
            <button type="button" class="close" aria-hidden="true" onclick="hideAlert()">×</button>
        </div>
      @endif
        <div class="col-lg-6 align-self-center">
          <div class="header-text">
            <h6>Kobe BookMatrix: Efficient Library Management </h6>
            <h2>Books may well be the only true magic</h2>
            <p>Welcome to my Simple Library Management, a robust and elegant solution for managing library systems. This project showcases skills in Laravel for a dynamic and efficient backend, coupled with PHP and MySQL to handle all your data management needs. The frontend, designed with HTML, CSS, and JavaScript, delivers a clean and intuitive user experience that aligns with modern web standards.</p>
            <div class="buttons">
              <div class="border-button">
                <a href="{{url('explore')}}">Explore Top Books</a>
              </div>
              <div class="main-button">
                <a href="" target="_blank">Check My Portfolio</a>
              </div>
            </div>
          </div>
        </div>
        <div class="col-lg-5 offset-lg-1">
          <div class="">
            <div class="item">
              <img src="assets/images/banner.jpg" alt="banner1">
            </div>
            <div class="item">
              <img src="assets/images/banner2.jpg" alt="banner2">
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  <!-- ***** Main Banner Area End ***** -->
  <script src="{{ asset('assets/js/alert.js') }}"></script> <!-- Link to the external JavaScript file -->
</body>
</html>
