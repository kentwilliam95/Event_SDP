<html>
	<head>
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
			$("#kostumEvent").click(function()
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
					<li class="MenuLI"><a href="<?php echo site_url("paketevent/index")?>">Paket Event</a></li>
					<li id="tableActive" class="MenuLI"><a href="#">Vendor Event</a></li>
					<li class="MenuLI"><a href="<?php echo site_url("pemesananEvent/index")?>">Pemesanan Event</a></li>
					
				</ul>
			</div>
			
			<div id="IsiHome">
			<h1>Vendor Event</h1>
				<div id="ContentHome">
					<div id="DropDownJeniEvent">
					Jenis Event
					<select name="jenisVendor">
						<option value="Entertainment">Entertainment</option>
						<option value="Decoration">Decoration</option>
						<option value="Food and Baverages">Food and Baverages</option>
						<option value="MC">MC</option>
						<option value="Event Organizer">Event Organizer</option>
					</select>
					</div>
					<div id="PemesananEvent">
					<h3 style="text-align:center; color:gold;"> Pemesanan Event</h3>
					<p style="text-align:justify;text-justify:inter-word;">Lakukanlah Pemesanan Event Sekarang Juga</p>
					<input type="Button" id="ButtonPE" value="Pemesanan Event"/>
					</div>
					<div id="TableData" >
						<table style="width:100%">
							<tr>
							<th>Nama </th>
							<th>Alamat </th>
							<th>Jenis </th>
							<th>Contact </th>
							</tr>
							
							<tr>
								<td>Hans Kristian</td>
								<td>Ngagel</td>
								<td>Entertainment</td>
								<td>+62345678900</td>
							</tr>
							
							<tr>
								<td>Kent</td>
								<td>Satelit</td>
								<td>Food and Baverages</td>
								<td>+6234343434343</td>
							</tr>
							
							<tr>
								<td>Widiarta</td>
								<td>Ngagel</td>
								<td>MC</td>
								<td>+25467319827</td>
							</tr>
							
							
						</table>
						<input type="button" id="kostumEvent" value="Costum Vendor Event"/>
					</div>
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
		
	</body>
	<div id="Dialog" title="Kostum paket">
	Nama Paket:<input type="text" /><br>
	Nama Vendor:<input type="text" /><br>
	Nama Vendor:<input type="text" /><br>
	Nama Vendor:<input type="text" /><br>
	Nama Vendor:<input type="text" /><br>
	Total:<input type="text" />
	</div>
</html>