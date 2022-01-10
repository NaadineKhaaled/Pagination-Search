<!DOCTYPE html>
<html>
<head>
	<title>Welcome!</title>
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
        
        <label for="searchText">Search</label>
	    <input type="text" id="searchText" placeholder="Search Course" />
	    <div id="display"></div>
        
		<div id="table-data">
		</div>
       
	        

 <script type="text/javascript">


  $(document).ready(function(){

    function loadDataOrSearch(page,searchName=''){
      $.ajax({
        url  : "ajax.php",
        type : "POST",
        cache: false,
        data : {page_no:page,name:searchName},
        success:function(response){
          $("#table-data").html(response);
        }
      });
    }
   loadDataOrSearch();
    
    // Pagination code
    $(document).on("click", ".page-link", function(e){
      e.preventDefault();
      var pageNo = $(this).attr("id");
      var searchName=$('#searchText').val();
      loadDataOrSearch(pageNo,searchName);
    });
    
   $("#searchText").keyup(function() {

     
        var searchName = $('#searchText').val();
        if (searchName == "") {
                    
          loadDataOrSearch();
       }
       //If name is not empty.
       else if(searchName.length>=3) {
            loadDataOrSearch(1,searchName);
        }
     });
      
  });

 </script>
 </body>
</html>