<?php include('admin/includes/dbconnection.php'); ?>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Teacher Subject Allocation System</title>
        <!-- Favicon-->
        <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="css/styles.css" rel="stylesheet" />
		<link href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet">
    <style>
        h3 span {
            font-size: 22px;
        }
        h3 input.search-input {
            width: 300px;
            margin-left: auto;
            float: right
        }
        .mt32 {
            margin-top: 32px;
        }
    
	body
	{
	background-image: url("back.jpg");
    background-repeat: no-repeat;
    background-attachment: fixed;
    background-size: 100% 100%;

	}
	
	.bg-table
	{
	background-color: #CCCCFF ;
    
	}
	.bg-pink
	{
	background-color: pink;
    
	}
	.bg-1
	{
	background-color: #CC99FF;
    
	}
         </style>
		
    </head>
    <body>
        <!-- Responsive navbar-->
        <nav class="navbar navbar-expand-lg bg-pink">
            
                <a class="navbar-brand" href="#!">Teacher Subject Allocation System (TSAS)</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
                        <li class="nav-item"><a class="nav-link" href="index.php">Home</a></li>
                        <li class="nav-item"><a class="nav-link" href="admin/login.php">Admin</a></li>
                    </ul>
                </div>
            
        </nav>
        <!-- Page header with logo and tagline-->
        <header class="py-2 bg-dark border-bottom mb-4">            
                <div class="text-center my-5">
                    <h1 class="fw-bolder"><font color="white"><marquee>Teacher Subject Allocation System</marquee></font></h1>
                    <!-- <p class="lead mb-0">A Bootstrap 5 starter layout for your next blog homepage</p> -->
                </div>          
        </header>
        <!-- Page content-->
        <center><div class="col-lg-6">
                    <!-- Search widget-->
                       
                        <font color="blue"><h4><i>Search</i><h4></font>   `
                        <form method="post">
                        
                            <div class="input-group">
                                <input class="form-control" type="text" placeholder="Search teacher by name or emp id" aria-label="Enter search term..." aria-describedby="button-search" name="searchdata" />
                                <button class="btn btn-primary" id="button-search" name="search" type="submit" type="button">Go!</button>
                            </div>
                        </form>
                    </div>
					
					</center><br>
                    <!-- Categories widget-->
                       <?php
if(isset($_POST['search']))
{ 
$sdata=$_POST['searchdata'];
  ?>
                    <div class="card ">
                       <h3> <div class="bg-1 card-header"><font color="white">Categories</font>
						<input type="search" placeholder="Search..." class="form-control search-input" data-table="customers-list"/></div>
                        <div class="bg-light"></h3>


                   <h6 align="center">Result against "<?php echo $sdata;?>" keyword </h6>

                                        <table  class="table   bg-table table-striped customers-list table-bordered" border="1">
                                            <thead>
                                               <tr>
                                                    <th><center>S.No</center></th>
                                                    <th>Staff Name</th>
                                                    <th><center>Class Name</center></th>
													<th><center>Shift</center></th>
                                                    <th>Subject Name</th>
													<th><center>Code</center></th>
                                                    <th><center>Semester</center></th>
                                                    <th><center>Year</center></th>
                                                    
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <?php
$sql="SELECT tblsuballocation.ID as suballid,tblsuballocation.CourseID,tblsuballocation.Teacherempid,tblsuballocation.Subid,tblsuballocation.Years,tblsuballocation.AllocationDate,tblteacher.EmpID,tblteacher.FirstName,tblteacher.LastName,tblteacher.Shift,tblcourse.BranchName,tblcourse.CourseName,tblsubject.ID,tblsubject.CourseID,tblsubject.SubjectFullname,tblsubject.Course,tblsubject.Year,tblsubject.Semester,tblsubject.SubjectCode from tblsuballocation join tblteacher on tblteacher.EmpID=tblsuballocation.Teacherempid join tblcourse on tblcourse.ID=tblsuballocation.CourseID join tblsubject on tblsubject.ID=tblsuballocation.Subid where tblteacher.EmpID like '$sdata%' || tblteacher.FirstName like '$sdata%' || tblteacher.LastName like '$sdata%' || tblsubject.SubjectFullname like '$sdata%'";
$query = $dbh -> prepare($sql);
$query->execute();
$results=$query->fetchAll(PDO::FETCH_OBJ);

$cnt=1;
if($query->rowCount() > 0)
{
foreach($results as $row)
{               ?>
   
                                                <tr>
                                                    <td><center><?php echo htmlentities($cnt);?></td></center>
                                                    <td>
                                                        <?php  echo htmlentities($row->FirstName);?> <?php  echo htmlentities($row->LastName);?> <b>(<?php  echo htmlentities($row->Teacherempid);?>)</b>
                                                    </td>
                                                    <td>
                                                        <?php  echo htmlentities($row->Year);?>-<?php  echo htmlentities($row->Course);?> (<?php  echo htmlentities($row->BranchName);?>)
                                                    </td>
													<td>
                                                        <center><?php  echo htmlentities($row->Shift);?></center>
                                                    </td>
                                                   <td>
                                                        <?php  echo htmlentities($row->SubjectFullname);?>
                                                    </td>
													<td>
                                                        <center><?php  echo htmlentities($row->SubjectCode);?></center>
                                                    </td>
                                                    <td>
                                                       <center><?php  echo htmlentities($row->Semester);?> </center>
                                                    </td>
                                                    <td>
                                                        <center><?php  echo htmlentities($row->Years);?></center>
                                                    </td>
                                                    
                                                </tr>
                                             <?php 
$cnt=$cnt+1;
} } else { ?>
  <tr>
    <td colspan="9"> No record found against this search</td>

  </tr>
                                            </tbody>
                                            
 
                                        </table>
                                        
              
                        </div>
						
                    </div>
					
                          <?php } }?>
                    <!-- Side widget-->
               
                </div>
            </div>
			
        
        <!-- Footer-->
		

        <!-- Bootstrap core JS-->
		
		<script>
        (function(document) {
            'use strict';

            var TableFilter = (function(myArray) {
                var search_input;

                function _onInputSearch(e) {
                    search_input = e.target;
                    var tables = document.getElementsByClassName(search_input.getAttribute('data-table'));
                    myArray.forEach.call(tables, function(table) {
                        myArray.forEach.call(table.tBodies, function(tbody) {
                            myArray.forEach.call(tbody.rows, function(row) {
                                var text_content = row.textContent.toLowerCase();
                                var search_val = search_input.value.toLowerCase();
                                row.style.display = text_content.indexOf(search_val) > -1 ? '' : 'none';
                            });
                        });
                    });
                }

                return {
                    init: function() {
                        var inputs = document.getElementsByClassName('search-input');
                        myArray.forEach.call(inputs, function(input) {
                            input.oninput = _onInputSearch;
                        });
                    }
                };
            })(Array.prototype);

            document.addEventListener('readystatechange', function() {
                if (document.readyState === 'complete') {
                    TableFilter.init();
                }
            });

        })(document);
        </script>
		
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
        <script src="js/scripts.js"></script>
	
   </body>
</html>
