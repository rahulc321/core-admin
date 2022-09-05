<?php
session_start();
error_reporting(0);
include('includes/dbconnection.php');
if (strlen($_SESSION['fosaid']==0)) {
  header('location:logout.php');
  } else{


}
  ?>
<!DOCTYPE html>
<html>

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Clening | Admin</title>
    <link rel="icon" type="image/png" href="../images/icons/favicon.png"/>

    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="font-awesome/css/font-awesome.css" rel="stylesheet">
    <link href="css/plugins/iCheck/custom.css" rel="stylesheet">
    <link href="css/plugins/steps/jquery.steps.css" rel="stylesheet">
    <link href="css/animate.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">
     <link rel="stylesheet" href="https://cdn.datatables.net/1.11.3/css/jquery.dataTables.min.css">

</head>

<body>

    <div id="wrapper">

    <?php include_once('includes/leftbar.php');?>

        <div id="page-wrapper" class="gray-bg">
             <?php include_once('includes/header.php');?>
      
        <div class="row border-bottom">
        
        </div>
            
        <div class="wrapper wrapper-content animated fadeInRight">
            
            <div class="row">
                <div class="col-lg-12">
                    <div class="ibox">
                    <?php
                     if(isset($_SESSION['success']) && $_SESSION['success'] !="")
                     {
                         echo '<h2>' .$_SESSION['success']. '</h2>';
                         unset($_SESSION['success']);
                     }
                     if(isset($_SESSION['status']) && $_SESSION['status'] !="")
                     {
                        echo '<h2>'. $_SESSION['status'].'</h2>';
                        unset($_SESSION['status']);
                     }
                     ?>
                        <div class="ibox-content">
                                 <table class="table table-bordered mg-b-0" id="example">
                                    <p style="color: blue; text-align: center;  font-size: 30px">All Jobs</p>
              <thead>
                <tr>
                  <th>S.NO</th>
                  <th>Title</th>
                  <th>Date</th>
                  <th>Cleaner Name</th>
                  <th>Mobile Number</th>
                  <th>Email</th>
                   <th>Status</th>
                </tr>
              </thead>
              <?php
$ret=mysqli_query($con,"select * from postjob order By id desc");
$cnt=1;
while ($row=mysqli_fetch_array($ret)) {

$clener=mysqli_query($con,"select * from users where id=".$row['user_id']);
$rowU=mysqli_fetch_array($clener);
?>
              <tbody>
                 <tr>
                  <td><?php echo $cnt;?></td>
              
                  <td><?php  echo $row['title'];?></td>
                  <td><?php  echo $row['startdate'].' '.$row['starttime'];?></td>
                  <td><?php  echo $rowU['firstName'].' '.$rowU['lasttName'];?></td>
                  <td><?php  echo $rowU['phone'];?></td>
                  <td><?php  echo $rowU['email'];?></td>
                  
                
                 
                 <td>
                     
                <?php 
                        if($row['job_status']==1){
                            echo '<p style="color:#ffc107">Booked</p>';
                        }elseif($row['job_status']==2){
                            echo '<p style="color:red">Rejected</p>';
                        }elseif($row['job_status']==3){
                            echo '<p style="color:green">Completed</p>';
                        }elseif($row['job_status']==4){
                            echo '<p style="color:red">Cancelled</p>';
                        }elseif($row['job_status']==5){
                            echo '<p style="color:#ffc107">In Progress</p>';
                        }elseif($row['job_status']==0){
                            echo '<p style="color:#ffc107">Posted</p>';
                        }elseif($row['job_status']==6){
                            echo '<p style="color:red">Expired</p>';
                        }
                    ?>
                  
                 </td>
                </tr>
                <?php 
$cnt=$cnt+1;
}?>
   
               
              </tbody>
            </table>

                           
                        </div>
                    </div>
                    </div>

                </div>
            </div>
         <?php include_once('includes/footer.php');?>

        </div>
        </div>



    <!-- Mainly scripts -->
    <script src="js/jquery-3.1.1.min.js"></script>
    <script src="js/popper.min.js"></script>
    <script src="js/bootstrap.js"></script>
    <script src="js/plugins/metisMenu/jquery.metisMenu.js"></script>
    <script src="js/plugins/slimscroll/jquery.slimscroll.min.js"></script>

    <!-- Custom and plugin javascript -->
    <script src="js/inspinia.js"></script>
    <script src="js/plugins/pace/pace.min.js"></script>

    <!-- Steps -->
    <script src="js/plugins/steps/jquery.steps.min.js"></script>

    <!-- Jquery Validate -->
    <script src="js/plugins/validate/jquery.validate.min.js"></script>


<!--  -->
   <script type="text/javascript" src="https://code.jquery.com/jquery-3.5.1.js"></script>
<script type="text/javascript" src="https://cdn.datatables.net/1.11.3/js/jquery.dataTables.min.js"></script>

<script type="text/javascript">
    $(document).ready(function() {
    $('#example').DataTable();
} );
</script>

    <script>
        $(document).ready(function(){
            $("#wizard").steps();
            $("#form").steps({
                bodyTag: "fieldset",
                onStepChanging: function (event, currentIndex, newIndex)
                {
                    // Always allow going backward even if the current step contains invalid fields!
                    if (currentIndex > newIndex)
                    {
                        return true;
                    }

                    // Forbid suppressing "Warning" step if the user is to young
                    if (newIndex === 3 && Number($("#age").val()) < 18)
                    {
                        return false;
                    }

                    var form = $(this);

                    // Clean up if user went backward before
                    if (currentIndex < newIndex)
                    {
                        // To remove error styles
                        $(".body:eq(" + newIndex + ") label.error", form).remove();
                        $(".body:eq(" + newIndex + ") .error", form).removeClass("error");
                    }

                    // Disable validation on fields that are disabled or hidden.
                    form.validate().settings.ignore = ":disabled,:hidden";

                    // Start validation; Prevent going forward if false
                    return form.valid();
                },
                onStepChanged: function (event, currentIndex, priorIndex)
                {
                    // Suppress (skip) "Warning" step if the user is old enough.
                    if (currentIndex === 2 && Number($("#age").val()) >= 18)
                    {
                        $(this).steps("next");
                    }

                    // Suppress (skip) "Warning" step if the user is old enough and wants to the previous step.
                    if (currentIndex === 2 && priorIndex === 3)
                    {
                        $(this).steps("previous");
                    }
                },
                onFinishing: function (event, currentIndex)
                {
                    var form = $(this);

                    // Disable validation on fields that are disabled.
                    // At this point it's recommended to do an overall check (mean ignoring only disabled fields)
                    form.validate().settings.ignore = ":disabled";

                    // Start validation; Prevent form submission if false
                    return form.valid();
                },
                onFinished: function (event, currentIndex)
                {
                    var form = $(this);

                    // Submit form input
                    form.submit();
                }
            }).validate({
                        errorPlacement: function (error, element)
                        {
                            element.before(error);
                        },
                        rules: {
                            confirm: {
                                equalTo: "#password"
                            }
                        }
                    });
       });
    </script>

</body>

</html>
