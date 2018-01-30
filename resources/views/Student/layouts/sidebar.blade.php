<aside class="main-sidebar">
    <!-- sidebar: style can be found in sidebar.less -->
    <section class="sidebar">
      <!-- Sidebar user panel -->
      <div class="user-panel">
        <div class="pull-left image">
          <img src="{{asset('dashboard/dist/img/user2-160x160.jpg') }}" class="img-circle" alt="User Image">
        </div>
        <div class="pull-left info">
          <p>{{ Auth::user()->name }}</p>
          <a href="#"><i class="fa fa-circle text-success"></i> Online</a>
        </div>
      </div>
      <!-- search form -->
      <form action="#" method="get" class="sidebar-form">
        <div class="input-group">
          <input type="text" name="q" class="form-control" placeholder="Search...">
          <span class="input-group-btn">
                <button type="submit" name="search" id="search-btn" class="btn btn-flat"><i class="fa fa-search"></i>
                </button>
              </span>
        </div>
      </form>
      <!-- /.search form -->
      <!-- sidebar menu: : style can be found in sidebar.less -->
      <ul class="sidebar-menu" data-widget="tree">
        <li class="header">MAIN NAVIGATION</li>
        <li class="active treeview">
          <a href="#">
            <i class="fa fa-dashboard"></i> <span>Dashboard</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
            <li class="active"><a href="index.html"><i class="fa fa-circle-o"></i> Profile</a></li>
          </ul>
        </li>
        
        <li class="treeview">
          <a href="#">
            <i class="fa fa-edit"></i> <span>Notice Board</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
            <li><a href="/add"><i class="fa fa-circle-o"></i> Recent Notices</a></li>
            <li><a href="pages/forms/advanced.html"><i class="fa fa-circle-o"></i> Search Notices</a></li>
          </ul>
        </li>


        <li class="treeview">
          <a href="#">
            <i class="fa fa-edit"></i> <span>Attendance/span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
            <li><a href="/add"><i class="fa fa-circle-o"></i> Attendance Report</a></li>
            <li><a href="pages/forms/advanced.html"><i class="fa fa-circle-o"></i> Defaulter List</a></li>
            <li><a href="pages/forms/advanced.html"><i class="fa fa-circle-o"></i> Request for Leave</a></li>
          </ul>
        </li>


          <ul class="treeview-menu">
            <li><a href="index.html"><i class="fa fa-circle-o"></i> Timetable</a></li>
          </ul>

          <li class="treeview">
          <a href="#">
            <i class="fa fa-edit"></i> <span>Fees Payment</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
            <li><a href="/add"><i class="fa fa-circle-o"></i> Pay Fees Online</a></li>
            <li><a href="pages/forms/advanced.html"><i class="fa fa-circle-o"></i> Fees Report</a></li>
          </ul>
        </li>
 
          <li class="treeview">
          <a href="#">
            <i class="fa fa-edit"></i> <span>Calendar</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
            <li><a href="/add"><i class="fa fa-circle-o"></i> Add Event</a></li>
            <li><a href="pages/forms/advanced.html"><i class="fa fa-circle-o"></i> Manage Event</a></li>
          </ul>
        </li>

          <ul class="treeview-menu">
            <li><a href="index.html"><i class="fa fa-circle-o"></i> Upload Documents</a></li>
          </ul>

          <li class="treeview">
          <a href="#">
            <i class="fa fa-edit"></i> <span> Feedback</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
            <li><a href="/add"><i class="fa fa-circle-o"></i> New Feedback</a></li>
            <li><a href="pages/forms/advanced.html"><i class="fa fa-circle-o"></i> Check Feedback</a></li>
            <li><a href="pages/forms/advanced.html"><i class="fa fa-circle-o"></i> Complaints And Suggestions</a></li>
          </ul>
        </li>

          <ul class="treeview-menu">
            <li><a href="index.html"><i class="fa fa-circle-o"></i> Downloads</a></li>
          </ul>

          <ul class="treeview-menu">
            <li><a href="index.html"><i class="fa fa-circle-o"></i> Help</a></li>
          </ul>

        
      </ul>
    </section>
    <!-- /.sidebar -->
  </aside>