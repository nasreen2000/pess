<?php

//if(!isset($_POST['btnProcessCall']) && !isset($_POST['btnDispatch']))
	//header("Location: logcall.php");

?>
<!DOCTYPE HTML>
<html>
<head>
<title>Dispatch</title>
</head>

<body>
<?php
/*Search and retrieve similar pending incidents and populate a table*/

	// connect to a database
	$con = mysql_connect("localhost","nasreen","t0006135i");
	if(!con)
	{
		die('Cannot connect to database:'.mysql_error());
	}
	
	// select a table in the database
	mysql_select_db("pess_nasreen",$con);
	
	$sql = "SELECT patrolcarId, statusDesc FROM patrolcar JOIN patrolcar_status ON patrolcar.patrolcarStatusId=patrolcar_status.statusId WHERE patrolcar.patrolcarStatusId='2' OR patrolcar.patrolcarStatusId='3'";
	
	$result = mysql_query($sql,$con);
	
	$incidentArray;
	$count=0;
	
	while($row=mysql_fetch_array($result))
	{
		$patrolcarArray[$count]=$row;
		$count++;
	}
	
	if(!mysql_query($sql,$con))
	{
		die('Error:'.mysql_error());
	}
	
	mysql_close($con);
	
?>
	
		
		<form name="frmlogcall" method="POST" action="<?php echo htmlspecialchars($_SERVER['PHP_SELF']);?>">
		<table>
		<tr>
			<td>Caller's name:</td>
			<td>
				<?php echo $_POST['callerName']; ?>
				<input type="hidden" name="callerName" value="<?php echo $_POST['callerName']; ?>" />
			</td>
		</tr>
		
		<tr>
			<td>Contact Number:</td>
			<td>
				<?php echo $_POST['Contact Number']; ?>
				<input type="hidden" name="Contact Number" value="<?php echo $_POST['Contact Number']; ?>" />
			</td>
		</tr>
		
		<tr>
			<td>Location:</td>
			<td>
				<?php echo $_POST['Location']; ?>
				<input type="hidden" name="Location" value="<?php echo $_POST['Location']; ?>" />
			</td>
		</tr>
		<tr>
			<td></td>
			<td>
				<?php echo $_POST['incidentType']; ?>
				<input type="hidden" name="incidentType" value="<?php echo $_POST['incidentType']; ?>" />
			</td>
		</tr>
		
			<tr>
			<td></td>
			<td>
				<?php echo $_POST['incidentDesc']; ?>
				<input type="hidden" name="incidentDesc" value="<?php echo $_POST['incidentDesc']; ?>" />
			</td>
		</tr>
		
</table>

<table width="40%" border="1" align="center" cellpadding="4" cellspacing="8">
	<tr>
		<td width="20%">&nbsp;</td>
		<td width="51%">Patrol Car ID</td>
		<td width="29%">Status</td>
	</tr>
	
<?php
$i = 0;
while($i < $count){
?>
<tr>
	<td class="td_label"><input type="checkbox" name="chkPartolcar[]" value="<?php echo $patrolcarArray[$i]['patrolcarId']?>"></td>
	<td><?php echo $patrolcarArray[$i]['patrolcarId']?></td>
	<td><?php echo $patrolcarArray[$i]['statusDesc']?></td>
</tr>

<?php $i++;
}?>

</table>

<table width="80%" border="0" align="center" cellpadding="4" cellspacing="4">
	<td width="46%" class="td_label"><input type="reset" name="btnCancel" id="btnCancel" value="Reset"></td>
	<td width="54%" class="td_Data">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="submit" name="btnSubmit" id="btnSubmit" value="Submit"></td>
</table>

<?php
	if(!isset($_POST['btnSubmit']))
	{	
//connect to a database
	$con = mysql_connect("localhost","nasreen","t0006135i");
	if(!con)
	{
		die('Cannot connect to database:'.mysql_error());
	}
	
	mysql_select_db("pess_nasreen",$con);
	
	//update patrolcar status table and dispatch table
	$patrolcarDispatched=$_POST["chkPartolcar"];
	
	$c=count($patrolcarDispatched);
	}

?>

<?php

//insert new incident
$status;
if($c> 0)
{
	$status ='2';
}
else{
	$status='1';
	}
	
$sql = "INSERT INTO incident(callerName, phoneNumber, incidentTypeId, incidentLocation, incidentDesc, incidentStatusId)VALUES('".$_POST['callerName']."','".$_POST['contactNo']."','".$_POST['incidentType']."','".$_POST['location']."','".$_POST['incidentDesc']."','$status')";	

if(!mysql_query($sql,$con))
{
	die('Error1:' .mysql_error());
}

// retrieve new incremental key for incidentId
$incidentId=mysql_insert_id($con);;
		
		for($i=0;$i < $c;$i++)
		{
			$sql = "UPDATE patrolcar SET patrolcarStatusId='1' WHERE patrolcarId='$patrolcarDispatched[$i]'";
			
			if(!mysql_query($sql,$con))
			{
				die('Error2:'.mysql_error());
			}
			
			$sql = "INSERT INTO dispatch (incidentId, patrolcarId, timeDispatched)VALUES('$incidentId','$patrolcarDispatched[$i]',NOW())";
			
			if(!mysql_query($sql,$con))
			{
				die('Error3:'.mysql_error());
			}
			
		}
		mysql_close($con);

?>	
</body>
</html>
	