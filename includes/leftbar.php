    <nav class="navbar-default navbar-static-side" role="navigation">
        <div class="sidebar-collapse">
            <ul class="nav metismenu" id="side-menu">
                <li class="nav-header">
                    <div class="dropdown profile-element">
                        <img alt="image" class="rounded-circle" src="img/user.png"/>
                        <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                            <?php
$admid=$_SESSION['fosaid'];
$ret=mysqli_query($con,"select firstName from users where id='$admid'");
$row=mysqli_fetch_array($ret);
$name=$row['firstName'];

?>
                        
                            <span class="text-muted text-xs block"><?php echo $name; ?> <b class="caret"></b></span>
                        </a>
                        <ul class="dropdown-menu animated fadeInRight m-t-xs">
                            <li><a class="dropdown-item" href="adminprofile.php">Profile</a></li>
                            <li><a class="dropdown-item" href="changepassword.php">Change Password</a></li>
                            <li class="dropdown-divider"></li>
                            <li><a class="dropdown-item" href="logout.php">Logout</a></li>
                        </ul>
                    </div>
                    <div class="logo-element">
                        IN+
                    </div>
                </li>
                <li>
                    <a href="dashboard.php"><i class="fa fa-th-large"></i> <span class="nav-label">Dashboards</span> <span class="fa arrow"></span></a>
                                    </li>
                                    <li>
                    <a href="user-detail.php"><i class="fa fa-users"></i> <span class="nav-label">Cleaners</span> <span class="fa arrow"></span></a>
                                    </li>
                
                    
                    <li>
                    <a href="cleaner-detail.php"><i class="fa fa-users"></i> <span class="nav-label">Users</span> <span class="fa arrow"></span></a>
                                    </li>


                     <li>
                    <a href="job.php"><i class="fa fa-edit"></i> <span class="nav-label">All Job</span> <span class="fa arrow"></span></a>
                                    </li>



                    <li>
                    <a href="manage-cleanercategory.php"><i class="fa fa-edit"></i> <span class="nav-label">Cleaner Category</span> <span class="fa arrow"></span></a>
                                    </li>



                     <li>
                    <a href="city.php"><i class="fa fa-edit"></i> <span class="nav-label">Cleaner City</span> <span class="fa arrow"></span></a>
                                    </li>



               
              
              <!--   <li>
                    <a href="#"><i class="fa fa-edit"></i> <span class="nav-label">Cleaner Category</span><span class="fa arrow"></span></a>
                    <ul class="nav nav-second-level collapse">
                        <li><a href="add-cleanercategory.php">Add Category</a></li>
                        <li><a href="manage-cleanercategory.php">Manage Cleaner Category</a></li>
                    
                       
                    </ul>
                </li> -->
<!--  <li>
                    <a href="#"><i class="fa fa-edit"></i> <span class="nav-label">Product Menu</span><span class="fa arrow"></span></a>
                    <ul class="nav nav-second-level collapse">
                        <li><a href="add-productitem.php">Add Product</a></li>
                        <li><a href="manage-productitems.php">Manage Product</a></li>
                    
                       
                    </ul>
                </li>  --> 
                <!-- <li>
                    <a href="#"><i class="fa fa-list"></i> <span class="nav-label">Orders</span><span class="fa arrow"></span></a>
                    <ul class="nav nav-second-level collapse">
                         <li><a href="notconfirmedyet.php">Not Confirmed Yet</a></li>
                        <li><a href="confirmed-order.php">Order Confirmed</a></li>
                        <li><a href="productbeingprepared.php">Product Being Prepared</a></li>
                        <li><a href="product-pickup.php">Product Pickup</a></li>
                        <li><a href="product-delivered.php">Product Delivered</a></li>
                        <li><a href="canclled-order.php">Cancelled</a></li>
                         <li><a href="all-order.php">All Orders</a></li>
                    
                       
                    </ul>
                </li> -->
                   
                <!-- <li>
                    <a href="search.php"><i class="fa fa-th-large"></i> <span class="nav-label">Search</span> <span class="fa arrow"></span></a>
                                    </li>
                                    <li> -->
               
            </ul>

        </div>
    </nav>