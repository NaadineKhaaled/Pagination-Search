<?php
	// Connect database 

	$conn = mysqli_connect('localhost','root','');
    mysqli_select_db($conn, 'lab4db');

	if(!$conn){
	die('An error happened'.mysqli_error());
	}

		$limit = 3;

		if (isset($_POST['page_no'])) {
		    $page_no = $_POST['page_no'];
		}else{
		    $page_no = 1;
		}

		$index = ($page_no-1) * $limit;
		//var_dump($index);

		$query = "SELECT course.course_name,
               course.course_description,
               department.department_name,
               professor.professor_name,
               course.course_id
		        FROM course
				JOIN department
				  ON department.department_id = course.department_id
				JOIN professor
				  ON professor.professor_id = course.professor_id";
				 

		 if ($_POST['name']!=''){
            // echo "string";
		 	$field=$_POST['name'];
		 	

		  $query .= "
		  WHERE REPLACE(course.course_name,' ','') LIKE '%$field%'|| REPLACE(course.course_description,' ','') LIKE '%$field%' || REPLACE(department.department_name,' ','') LIKE '%$field%' || REPLACE( professor.professor_name,' ','') LIKE '%$field%'
		  ";
		 }


	 

		 $query .= ' ORDER BY course.course_id ';
		// var_dump($query);	

		 $resultBeforeLimit=mysqli_query($conn, $query);
         $limit_query = $query . ' LIMIT '.$index.', '.$limit.'';
		
		 $resultAfterLimit = mysqli_query($conn, $limit_query);

		 $output = "";
       
		if (mysqli_num_rows($resultAfterLimit) > 0) {

		$output.="<table class='table table-striped table-dark'>
			    <thead>
			        <tr>
				        <th>Course Name</th>
		    	        <th>Course Description</th>
					    <th>Departement Name</th>
					    <th>Professor Name</th>
					    <th>Course ID</th>

				   
		            </tr>
			    </thead>
		         <tbody>";
		while ($row = mysqli_fetch_assoc($resultAfterLimit)) {
         
		$output.="<tr>
		            <td>{$row['course_name']}</td>
		            <td>{$row['course_description']}</td>
		            <td>{$row['department_name']}</td>
		            <td>{$row['professor_name']}</td>
		            <td>{$row['course_id']}</td>

		 
			 </tr>";
		} 
		$output.="</tbody>
			</table>";

		$totalRecords = mysqli_num_rows($resultBeforeLimit);

		$totalPage = ceil($totalRecords/$limit);

		$output.="<ul class='pagination justify-content-center' style='margin:20px 0'>";

		for ($i=1; $i <= $totalPage ; $i++) { 
		   if ($i == $page_no) {
			$active = "active";
		   }else{
			$active = "";
		   }

		    $output.="<li class='page-item $active'>
		                <a class='page-link' id='$i' href=''>$i</a>
		            </li>";
		}

		$output .= "</ul>";

		echo $output;

		}

	?>