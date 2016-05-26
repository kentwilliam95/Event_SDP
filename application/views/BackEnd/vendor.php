<html>
<head>
	<title></title>
	<link rel="stylesheet" type="text/css" href="<?php echo base_url("Asset/css/style.css")?>" />
	<link rel="stylesheet" type="text/css" href="<?php echo base_url("Asset/css/jquery.dataTables.min.css")?>" />
	<link rel="stylesheet" type="text/css" href="<?php echo base_url("Asset/css/jquery-ui.css")?>"/>
	<script src="<?php echo base_url("Asset/jquery/jquery.min.js")?>"></script>
	<script src="<?php echo base_url("Asset/jquery/jquery.dataTables.min.js")?>"></script>
	<script src="<?php echo base_url("Asset/jquery/jquery-ui.js")?>"></script>
	<script>
		$(document).ready(function(){
			var data1 = [["ABC","MC","08123244022"],
			["Potato","MC","08123456789"],
			["XHem","Entertainer","08123244444"]];
			$('#table').DataTable({
				data:data1,
				columns:[
				{title : "Nama Vendor"},
				{title : "Jenis"},
				{title : "No Telp"}
				]
			});
			//
			
			function ganti() {
				alert("tergantikan");
			}
		
			$("#button_insert").click(function(){
				$( "#vendor_baru" ).dialog();
				
			});
			
		});
	</script>
</head>

<body>

<div id="iContainer">
	<br>
	&nbsp
	<a href="#">
		<input type="submit" value="Vendor" class="button blue">
	</a>
	&nbsp
	<a href="<?php echo site_url("history/index")?>">
		<input type="submit" value="History" class="button blue">
	</a>
	&nbsp
	<a href="<?php echo site_url("adminevent/index")?>">
		<input type="submit" value="Home" class="button blue">
	</a>
	&nbsp
	
</div>
<div id="iContent">
	<h1 style="text-align:center">VENDOR PAGE</h1>
	<Table id="table" class="display">
	
	</Table>
	<br>
	<input type="submit" value="Insert New Vendor" id="button_insert" class="button blue" align="left"><br><br>
	<div id="vendor_baru" style="display:none">
		Name Vendor<br>
		<input type="text"><br><br>
		Type Vendor<br>
		<input type="text"><br><br>
		Contact Vendor<br>
		<input type="text"><br><br>
		<input type="submit">
	</div>
</div>
</body>