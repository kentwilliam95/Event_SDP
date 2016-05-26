
<html>
	<head>
	<meta charset="utf-8">
	
	<link rel="stylesheet" type="text/css" href="<?php echo base_url("Asset/css/mystyle.css")?>">
	<link rel="stylesheet" type="text/css" href="<?php echo base_url("Asset/css/jquery.dataTables.min.css")?>">
	<link rel="stylesheet" type="text/css" href="<?php echo base_url("Asset/css/jquery-ui.css")?>">
	<script src="<?php echo base_url("Asset/Jquery/jquery-2.2.3.js")?>"></script>
	<script src="<?php echo base_url("Asset/Jquery/jquery.dataTables.min.js")?>"></script>
	<script src="<?php echo base_url("Asset/Jquery/jquery-ui.js")?>"></script>
		
		<script>
		$(document).ready(function()
		{
			$("#Dialog").dialog();
			$("#Dialog").dialog("close");
			$("#datepick").datepicker();
			$("#kostumPaket").click(function()
			{
					$("#Dialog").dialog("open");
			})
		})
		</script>
		
	</head>
	
	<body>
	
	
	
	<div id="Header">
			<img src="<?php echo base_url("Asset/img/logo1.png")?>" style="width:350px; height:150px;margin:20px;" ></img>
			<ul id="HeaderUL">
				<li class="HeaderLI"><a href="#">Contact</a></li>
				<li class="HeaderLI"><a href="#">Find Hotel</a></li>
				<li class="HeaderLI"><a href="#">Select Language</a></li>
			<ul>
		</div>
		<div id="Content">
			<div id="Menu">
				<ul id="MenuUL">
					
					<li id="tableActive" class="MenuLI"><a href="#">Paket Event</a></li>
					<li class="MenuLI"><a href="<?php echo site_url("vendorevent/index")?>">Vendor Event</a></li>
					<li class="MenuLI"><a href="<?php echo site_url("pemesananEvent/index")?>">Pemesanan Event</a></li>
					
				</ul>
			</div>
			
			<div id="IsiHome">
			<table id="example" class="display">

			</table>
			<h1>Paket Event</h1>
				<div id="ContentHome">
					<div id="DropDownJeniEvent">
					Jenis Paket
					<select name="jenisVendor">
						<option value="Paket1">Paket 1</option>
						<option value="Paket2">Paket 2</option>
						<option value="Paket3">Paket 3</option>
						<option value="Paket4">Paket 4</option>
						<option value="Paket5">Paket 5</option>
					</select>
					</div>
				</div>
				<div id="PemesananEvent">
				<h3 style="text-align:center; color:gold;"> Pemesanan Event</h3>
				<p style="text-align:justify;text-justify:inter-word;">Lakukanlah Pemesanan Event Sekarang Juga</p>
					<input type="Button" id="ButtonPE" value="Pemesanan Event"/>
				</div>
				
				<div id="TableData" >
						<table style="width:100%">
							<tr>
							<th>Nama Paket </th>
							<th>Nama Vendor </th>
							<th>Jenis Vendor </th>
							<th>Harga </th>
							</tr>
							
							<tr>
								<td>Hans Kristian</td>
								<td>Ngagel</td>
								<td>Entertainment</td>
								<td>Rp.500000</td>
							</tr>
							
							<tr>
								<td>Kent</td>
								<td>Satelit</td>
								<td>Food and Baverages</td>
								<td>Rp.500000</td>
							</tr>
							
							<tr>
								<td>Widiarta</td>
								<td>Ngagel</td>
								<td>MC</td>
								<td>Rp.1000000</td>
							</tr>
							<tr>
								<td colspan="2">Subtotal<td>
								<td>Rp.2000000</td>
							</tr>
						</table>
						<input type="button" id="kostumPaket" value="Costum Paket Event"/>
					</div>
					
			</div>
			
		</div>
		<div id="Footer">
			<div id="TempGambar">
			<img id="GambarIcon" src="<?php echo base_url("Asset/img/facebookIcon.png")?>" />
			</div>
		
			<div id="TempGambar">
			<img id="GambarIcon" src="<?php echo base_url("Asset/img/youtubeIcon.png")?>" />
			</div>
			
			<div id="FooterContent">
				Connect us With:
			</div>
			
			<div id="Address" style="color:white;float:left;margin-top:5px;">
			Jalan Ngagel Jaya Selatan no. 73 -77, Surabaya Jawa Timur&nbspPhone:(031)&nbsp 5027920
			</div>
		</div>
	
	<div id="Dialog" title="Kostum paket" style="display:none;">
	Nama Paket:<input type="text" /><br>
	Nama Vendor:<input type="text" /><br>
	Nama Vendor:<input type="text" /><br>
	Nama Vendor:<input type="text" /><br>
	Nama Vendor:<input type="text" /><br>
	Total:<input type="text" />
	</div>
	
	</body>
</html>