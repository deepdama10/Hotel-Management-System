

<!DOCTYPE html>
<html>
<head>
	<title>Occupied Rooms</title>
	<link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.1/jquery-ui.css">
	<link rel="stylesheet" type="text/css" href="roomsList-style.css">
	<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
</head>
<body>
	<h1>Occupied Rooms</h1>
	<table>
	  <tr>
	    <th>Room No.</th>
	    <th>Room Type</th>
	    <th>Rate per Night (Rs.)</th>
	    <th>Customer Name</th>
	    <th>Check-in Date</th>
	    <th>Check-out Date</th>
	    <th>Total Cost (Rs.)</th>
	  </tr>
	  <?
	  	$databasename="hotel_management"; //database name
		$conn=new mysqli("localhost","root","",$databasename);

		while($row=$result->fetch_assoc()) //traversion in db row by row
		{		
			if($row['available']==1 && $row['type']==$type)
			{
				//echo "exc";
				$room_no=$row['room_no'];

				break;
			}
		}
	  ?>

	  <tr>
	    <td>101</td>
	    <td>Standard</td>
	    <td>1000</td>
	    <td>Gaurav Bhagwanani</td>
	    <td>2019-2-14</td>
	    <td>2019-2-19</td>
	    <td>5000</td>
	  </tr>
	  <tr>
	    <td>101</td>
	    <td>Standard</td>
	    <td>1000</td>
	    <td>Gaurav Bhagwanani</td>
	    <td>2019-2-14</td>
	    <td>2019-2-19</td>
	    <td>5000</td>
	  </tr>
	</table>
</body>
</html>