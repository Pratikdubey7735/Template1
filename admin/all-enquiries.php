<?php
include('includes/connection.php');
include('includes/allfunction.php');

// Function to fetch all enquiries from the database
function fetchAllEnquiries($conn) {
    $query = "SELECT * FROM gard_enquiry ORDER BY added_date DESC";
    $result = mysqli_query($conn, $query);
    return $result;
}

// Delete enquiry if delid is set in the URL
if (isset($_GET['delid'])) {
    $delresult = deletedata('gard_enquiry', $_GET['delid']);
    header('location: all-enqueries.php'); 
}

// Fetch all enquiries
$enquiries = fetchAllEnquiries($conn);
?>

<!DOCTYPE html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>All Enquiries</title>
   
   <?php include_once('includes/css.php'); ?>
   
  </head>
  <body>
    <div class="container-scroller">

   
   <?php include_once('includes/header.php'); ?>
   
      <!-- partial -->
      <div class="container-fluid page-body-wrapper">
        <!-- partial:partials/_sidebar.html -->
       
	   <?php include_once('includes/sidebar.php'); ?>
	   
            </div>
            
            
            <div class="col-12 grid-margin stretch-card">
                <div class="card">
                  <div class="card-body">
                    <h4 class="card-title">All Enquiries</h4>
                 
                    <table class="table">
                        <thead>
                        <tr>
                            <th>Sr.No</th>
                            <th>Date</th>
                            <th>Name</th>
                            <th>Email</th>
                            <th>Mobile</th>
                            <th>Subject</th>
                            <th>Message</th>
                        </tr>
                        </thead>
                        <tbody>
                        <?php
                        $i = 1;
                        while ($data = mysqli_fetch_array($enquiries)) {
                            ?>
                            <tr>
                                <td><?php echo $i; ?></td>
                                <td><?php echo date('d M Y', strtotime($data['added_date'])); ?></td>
                                <td><?php echo $data['name']; ?></td>
                                <td><?php echo $data['email']; ?></td>
                                <td><?php echo $data['mobile']; ?></td>
                                <td><?php echo $data['subject']; ?></td>
                                <td><?php echo $data['message']; ?></td>
                            </tr>
                            <?php
                            $i++;
                        }
                        ?>
                        </tbody>
                    </table>
                  </div>
                </div>
              </div>
            
            
          </div>
          <!-- content-wrapper ends -->
          <!-- partial:partials/_footer.html -->
				
		<?php include_once('includes/footer.php'); ?>		
				
          <!-- partial -->
        </div>
        <!-- main-panel ends -->
      </div>
      <!-- page-body-wrapper ends -->
    </div>
   
   <?php include_once('includes/script.php'); ?>
   
  </body>
</html>