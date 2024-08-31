<nav id="sidebar">
        <!-- Sidebar Header-->
        <div class="sidebar-header d-flex align-items-center">
        <div class="avatar"><img src="{{asset('/admin/img/kobedimeLogo.png')}}" alt="..." class="img-fluid rounded-circle"></div>          <div class="title">
            <h1 class="h5">Sean Kobe Dime</h1>
            <p>Full Stack Developer</p>
          </div>
        </div>
        <!-- Sidebar Navidation Menus--><span class="heading">Main</span>
        <ul class="list-unstyled">
            <li class="active"><a href="{{url('admin/dashboard')}}"> <i class="icon-home"></i>Dashboard</a></li>
              <li><a href="{{url('category_page')}}"> <i class="fa fa-th-list"></i>Category</a></li>
                <li><a href="#exampledropdownDropdown" aria-expanded="false" data-toggle="collapse"> <i class="fa fa-book"></i>Books </a>
                  <ul id="exampledropdownDropdown" class="collapse list-unstyled ">
                    <li><a href="{{url('add_book')}}">Add Books</a></li>
                    <li><a href="{{url('show_book')}}">Show Books</a></li>
                  </ul>
              </li>
            <li><a href="{{url('borrow_request')}}"> <i class="fa fa-clipboard"></i>Borrow Request</a></li>
</nav>