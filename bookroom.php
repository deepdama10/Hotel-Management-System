<?php
$databasename="hotel_management"; //database name
$conn=new mysqli("localhost","root","",$databasename); 
if($conn->connect_error) // connecting
{
	die("Connection failed:".$conn->connect_error);
}
echo"Connected succesfully ";
if(isset($_REQUEST["fName"]))
{
	$fname=$_REQUEST['fName'];
}
else
{
	$fname="deep";
}
if(isset($_GET["lName"]))
{
	$sname=$_GET['lName'];
}
else
{
	$sname="dama";
}
if(isset($_GET["age"]))
{
	$age=$_GET['age'];
}
else
{
	$age="age";
}
if(isset($_GET["phone"]))
{
	$phone=$_GET['phone'];
}
else
{
	$phone="phone";
}
if(isset($_GET["email"]))
{
	$email=$_GET['email'];
}
else
{
	$email="admin@gmail.com";
}
if(isset($_REQUEST["room_no"]))
{
	$room_no=$_REQUEST["room_no"];
}
else
{
	$room_no=-1;
}
if(isset($_REQUEST["start"]))
{
	$start=$_REQUEST["start"];
}
else
{
	$start="99/99/9999";
}
if(isset($_REQUEST["end"]))
{
	$end=$_REQUEST["end"];
}
else
{
	$end="99/99/9999";
}
if(isset($_GET["address"]))
{
	$add=$_GET['address'];
}
else
{
	$add="meraghar";
}

echo "<br>";	
echo $room_no;
echo "<br>";
echo $fname;
echo "<br>";
echo $sname;
echo "<br>";
echo $age;
echo "<br>";
$phone =substr($phone,4,6);
echo $phone;
echo "<br>";
echo $email;
echo "<br>";
$day_in=(int)substr($start,0,2);
$month_in=(int)substr($start,3,2);
$year_in=(int)substr($start,6,4);

$day_out=(int)substr($end,0,2);
$month_out=(int)substr($end,3,2);
$year_out=(int)substr($end,6,4);
echo $day_in;
echo "<br>";
echo $month_in;
echo "<br>";
echo $year_in;

echo "<br>";
echo $end;



$sql ="UPDATE room SET available = '0' WHERE room_no = '$room_no';"; 
$conn->query($sql);
$advance_bookings ="INSERT INTO advance_bookings (day_in, month_in, year_in, day_out,month_out,year_out) VALUES ('$day_in' ,'$month_in' ,'$year_in', '$day_out','$month_out','$year_out');";
$conn->query($advance_bookings);
$customer="INSERT INTO customer (age,first_name,c_id,last_name,address,email) VALUES ('$age' ,'$fname' ,'$phone', '$sname','$add','$email');";
$conn->query($customer);

$log="INSERT INTO `log`(`day_in`, `month_in`, `year_in`, `day_out`, `month_out`, `year_out`, `room_no`, `c_id`) VALUES($day_in,$month_in,$year_in,$day_out,$month_out,$year_out,$room_no,$phone)";
$conn->query($log);
echo "executed query";

//customer id is phone


?>