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
    
    <ul class="sidebar-menu" data-widget="tree">
      <li class="header">MAIN NAVIGATION</li>
       <li class="active treeview">
       <li><a href="/home"><i class="fa fa-dashboard-o"></i>Dashboard</a></li>
      </li>
      {{--
      <li class="treeview">
        <a href="#">
          <i class="fa fa-edit"></i> <span>Student Management</span>
          <span class="pull-right-container">
            <i class="fa fa-angle-left pull-right"></i>
          </span>
        </a>
        <ul class="treeview-menu">
          <li><a href="/add"><i class="fa fa-circle-o"></i> Add Student</a></li>
          <li><a href="/importstu"><i class="fa fa-circle-o"></i> Import Students</a></li>
          <li><a href="/future"><i class="fa fa-circle-o"></i> Manage Students</a></li>
        </ul>
      </li>

      <li class="treeview">
        <a href="#">
          <i class="fa fa-edit"></i> <span>Curriculum Structure</span>
          <span class="pull-right-container">
            <i class="fa fa-angle-left pull-right"></i>
          </span>
        </a>
        <ul class="treeview-menu">
          <li><a href="/addbranch"><i class="fa fa-circle-o"></i> Manage Branch</a></li>
          <li><a href="/addsemester"><i class="fa fa-circle-o"></i> Manage Semester</a></li>
          <li><a href="/addsubject"><i class="fa fa-circle-o"></i> Manage Subject</a></li>
          <li><a href="/addsclass"><i class="fa fa-circle-o"></i> Manage Class</a></li>
        </ul>
      </li>


      <li class="treeview">
        <a href="#">
          <i class="fa fa-edit"></i> <span>Attendence Management</span>
          <span class="pull-right-container">
            <i class="fa fa-angle-left pull-right"></i>
          </span>
        </a>
        <ul class="treeview-menu">
          <li><a href="/timeslot"><i class="fa fa-circle-o"></i> Manage Time Slots of lectures</a></li>
          <li><a href="/takeatt"><i class="fa fa-circle-o"></i> Manage Attendence</a></li>
          <li><a href="/viewatt"><i class="fa fa-circle-o"></i> View Attendence</a></li>
          <li><a href="/downatt"><i class="fa fa-circle-o"></i> Download Attendence</a></li>
        </ul>
      </li>

      
    </ul> --}}
  </section>
  <!-- /.sidebar -->
</aside>