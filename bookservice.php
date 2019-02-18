<?php
$databasename="hotel_management"; //database name
$conn=new mysqli("localhost","root","",$databasename); 
if($conn->connect_error) // connecting
{
	die("Connection failed:".$conn->connect_error);
}
//echo"Connected succesfully ";
if(isset($_GET["from"]))
{
	$startdate=$_GET['from'];
}
else
{
	$startdate="mm/dd/yyyy";
}
if(isset($_GET["to"]))
{
	$enddate=$_GET['to'];
}
else
{
	$enddate="mm/dd/yyyy";
}
if(isset($_GET["type"]))
{
	$type=$_GET['type'];
}
else
{
	$type="deluxe";
}
//echo "dates";
//echo $startdate;
$month_in =substr($startdate, 0,2);
$month_in=(int)$month_in;
$day_in =substr($startdate,3,2);
$day_in=(int)$day_in;
$year_in =substr($startdate,6,4);
$year_in=(int)$year_in;
$day_out =substr($enddate,3,2);
$day_out=(int)$day_out;
$month_out =substr($enddate,0,2);
$month_out=(int)$month_out;
$year_out =substr($enddate,6,4);
$year_out=(int)$year_out;

$earlier = new DateTime($startdate);
$later = new DateTime($enddate);

$diff = $later->diff($earlier)->format("%a");

if ($month_in < 10)
	$month_in = '0'.$month_in;
if ($month_out < 10)
	$month_out = '0'.$month_out;
if ($day_in < 10)
	$day_in = '0'.$day_in;
if ($day_out < 10)
	$day_out = '0'.$day_out;

$startdate = $day_in.'-'.$month_in.'-'.$year_in;
$enddate = $day_out.'-'.$month_out.'-'.$year_out;

//echo "<br>";
// echo "sday ";
// echo $day_in;
// echo "<br>";
// echo "smonth ";
// echo $month_in;
// echo "<br>";
// echo "syear ";
// echo $year_in;
// echo "<br>";
 //echo $enddate;
 //echo "<br>";
// echo "<br>";
//echo $day_out;
//echo "<br>";
//echo $month_out;
//echo "<br>";
//echo $year_out;
//echo "<br>";
//echo $type;
$room_no=-1;
$sql ="SELECT room_no,type,available FROM room;"; //query that is to be passed to the database, 
$result=$conn->query($sql); //passing the query and storing result in variable result
while($row=$result->fetch_assoc()) //traversion in db row by row
{
	if($row['available']==1 && $row['type']==$type)
	{
		//echo "exc";
		$room_no=$row['room_no'];

		break;
	}
}

$cost = 1000;

if ($type == "Executive")
	$cost = 3000;
else if ($type == "Deluxe")
	$cost = 5000;

if ($room_no == -1)
	header('Location: index.html?var=-1');
else
	header('Location: booking.html?room='.$room_no.'&rate='.$cost.'&start='.$startdate.'&end='.$enddate.'&days='.$diff);

echo "Your room no is "; 
echo $room_no;
//eader('Location: xyz.html?var='.'x');  
// GOTO("xyz.html?var="."x");
?>