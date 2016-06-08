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
			createTable(<?php echo $hasilvendor?>);
			var selectedData = null;
			var selectedData2=null;
			$('#table tbody').on( 'click', 'tr', function () {
			var table = $("#table").DataTable();
			if ( $(this).hasClass('selected') ) {
				$(this).removeClass('selected');
				
			}
			else {
				table.$('tr.selected').removeClass('selected');
				$(this).addClass('selected');
				selectedData=table.row(this).data()[0];
				selectedData2 = table.row(this).data();
			}
			
		} );
		$("#button_delete").click(function()
		{
			$.ajax({
					url:"<?php echo site_url("vendor/deleteData")?>",
					type:"post",
					data:{id:selectedData},
					success:function(res)
					{
						
						var table = $("#table").DataTable();
						table.row('.selected').remove().draw( false );
					}
				})
		});
		$("#updateBTN").click(function(){
			$.ajax({
					url:"<?php echo site_url("vendor/updateData")?>",
					type:"post",
					data:{id:selectedData,nama:$("#nama1").val(),notelp:$("#notelp1").val(),email:$("#email1").val(),costum:$("#costum1").val(),jenis:$("#jenis1").val(),alamat:$("#alamat1").val()},
					success:function(res)
					{
						$("#table").DataTable().destroy();
						createTable(JSON.parse(res));
						$("#update_vendor_baru").dialog('close');
					}
				})
		});
			function createTable(duata)
			{
				$('#table').DataTable({
					data:duata,
					columns:[
					{title : "ID Vendor"},
					{title : "Nama Vendor"},
					{title : "Alamat"},
					{title: "No Telp"},
					{title:"Email"},
					{title:"Jenis"},
					{title:"Costum?"}
					],
					destroy:true
				});
			}
			
			
			$("#SubmitBTN").click(function()
			{
				$.ajax({
					url:"<?php echo site_url("vendor/insertData")?>",
					type:"post",
					data:{nama:$("#nama").val(),notelp:$("#notelp").val(),email:$("#email").val(),costum:$("#costum").val(),jenis:$("#jenis").val(),alamat:$("#alamat").val()},
					success:function(res)
					{
						$("#table").DataTable().destroy();
						createTable(JSON.parse(res));
						$("#vendor_baru").dialog('close');
					}
				})
			});
			function ganti() {
				alert("tergantikan");
			}
		
			$("#button_insert").click(function(){
				$( "#vendor_baru" ).dialog();
				
			});
			$("#button_update").click(function()
			{
				$("#nama1").val(selectedData2[1]);$("#notelp1").val(selectedData2[3]);$("#email1").val(selectedData2[4]);
				$("#alamat1").val(selectedData2[2]);$("#jenis1").val(selectedData2[5]);$("#costum1").val(selectedData2[6]);
				$("#update_vendor_baru").dialog();
			})
			
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
	<input type="submit" value="Insert New Vendor" id="button_insert" class="button blue" align="left">
	<input type="submit" value="Update New Vendor" id="button_update" class="button blue" align="left">
	<input type="submit" value="Delete New Vendor" id="button_delete" class="button blue" align="left">
	
	
	<div id="vendor_baru" style="display:none">
		Name Vendor<br>
		<input type="text" id="nama" name="nama"><br><br>
		Nomor Telepon<br>
		<input type="text" id="notelp" name="notelp"><br><br>
		Alamat Vendor<br>
		<input type="text" id="alamat" name="alamat"><br><br>
		Email Vendor<br>
		<input type="text" id="email"><br><br>
		Jenis Vendor<br>
		<select id="jenis">
			<option value="MC" >MC</option>
			<option value="FNB" > Food And Baverages</option>
			<option value="SS" >Sound System</option>
			<option value="DECOR" >Decoration</option>
			<option value="ET" >Entertainment</option>
		</select><br><br>
		Costum?<br>
		<select id="costum">
			<option value="True" ><Strong>Yes</strong></option>
			<option value="False" ><Strong> No</Strong></option>
		</select><br><br>
		<input type="submit" id="SubmitBTN">
	</div>
	
	<div id="update_vendor_baru" style="display:none">
		Name Vendor<br>
		<input type="text" id="nama1" name="nama"><br><br>
		Nomor Telepon<br>
		<input type="text" id="notelp1" name="notelp"><br><br>
		Alamat Vendor<br>
		<input type="text" id="alamat1" name="alamat"><br><br>
		Email Vendor<br>
		<input type="text" id="email1"><br><br>
		Jenis Vendor<br>
		<select id="jenis1">
			<option value="MC" >MC</option>
			<option value="FNB" > Food And Baverages</option>
			<option value="SS" >Sound System</option>
			<option value="DECOR" >Decoration</option>
			<option value="ET" >Entertainment</option>
		</select><br><br>
		Costum?<br>
		<select id="costum1">
			<option value="True" ><Strong>Yes</strong></option>
			<option value="False" ><Strong> No</Strong></option>
		</select><br><br>
		<input type="submit" id="updateBTN">
	</div>
	
</div>
</body>