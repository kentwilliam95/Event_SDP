<html>
<head>
	<title></title>
	<link rel="stylesheet" type="text/css" href="<?php echo base_url("Asset/css/style.css")?>" />
	<link rel="stylesheet" type="text/css" href="<?php echo base_url("Asset/css/jquery.dataTables.min.css")?>" />
	<script src="<?php echo base_url("Asset/jquery/jquery.min.js")?>"></script>
	<script src="<?php echo base_url("Asset/jquery/jquery.dataTables.min.js")?>"></script>
	<script>
		$(document).ready(function(){
			createTable(<?php echo $hasilhistory?>);
			function createTable(duata)
			{
				$('#table').DataTable({
					data:duata,
					columns:[
					{title : "Nama Event"},
					{title : "Paket Event"},
					{title : "Vendor Event"},
					{title : "Tanggal Mulai"},
					{title : "Tanggal Akhir"},
					{title : "Status"}
					],
					destroy:true
				});
			}
			
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
	<a href="<?php echo site_url("vendor/index/index")?>">
		<input type="submit" value="Vendor" class="button blue">
	</a>
	&nbsp
	<a href="#">
		<input type="submit" value="History" class="button blue">
	</a>
	&nbsp
	<a href="<?php echo site_url("adminevent/index")?>">
		<input type="submit" value="Home" class="button blue">
	</a>
	&nbsp
</div>
<div id="iContent">
	<h1 style="text-align:center">HISTORY PAGE</h1>
	<Table id="table" class="display">
	
	</Table>
</div>
</body>