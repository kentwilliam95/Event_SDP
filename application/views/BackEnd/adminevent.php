<html>
<head>
	<title></title>
	<link rel="stylesheet" type="text/css" href="<?php echo base_url("Asset/css/style.css")?>" />
	<link rel="stylesheet" type="text/css" href="<?php echo base_url("Asset/css/jquery.dataTables.min.css")?>" />
	<script src="<?php echo base_url("Asset/jquery/jquery.min.js")?>"></script>
	<script src="<?php echo base_url("Asset/jquery/jquery.dataTables.min.js")?>"></script>
	<script>
		$(document).ready(function(){
			var data1 = [["Yolo","A","MC","10-5-2016","15-5-2016","<input type='button' value='OK'>","<input type='button' value='Cancel'>"],
			["Rum","A","MC, Entertainer","13-5-2016","15-5-2016","<input type='button' value='OK'>","<input type='button' value='Cancel'>"],
			["Tokato","C","Entertainer","10-5-2016","13-5-2016","<input type='button' value='OK'>","<input type='button' value='Cancel'>"],
			["Rum","Custom","-","19-5-2016","20-5-2016","<input type='button' value='OK'>","<input type='button' value='Cancel'>"]];
			$('#table').DataTable({
				data:data1,
				columns:[
				{title : "Nama"},
				{title : "Paket Event"},
				{title : "Vendor Event"},
				{title : "Tanggal Mulai"},
				{title : "Tanggal Akhir"},
				{title : " "},
				{title : " "},
				]
			});
			//
			
			function ganti() {
				alert("tergantikan");
			}
		});
	</script>
</head>

<body>

<div id="iContainer">
	<br>
	&nbsp
	<a href="<?php echo site_url("vendor/index")?>">
		<input type="submit" value="Vendor" class="button blue">
	</a>
	&nbsp
	<a href="<?php echo site_url("history/index")?>">
		<input type="submit" value="History" class="button blue">
	</a>
	&nbsp
	<a href="#">
		<input type="submit" value="Home" class="button blue">
	</a>
	&nbsp
</div>
<div id="iContent">
	<h1 style="text-align:center">CONFIRMATION PAGE</h1>
	<Table id="table" class="display">
	
	</Table>
</div>
</body>