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
			$(".inputDate").datepicker();
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
					<li class="MenuLI"><a href="<?php echo site_url("vendorevent/index")?>">Vendor Event</a></li>
					<li id="tableActive" class="MenuLI"><a href="#">Pemesanan Event</a></li>
					
				</ul>
			</div>
			
			<div id="IsiHome">
				<div id="ContentHome" style="float:left;width:100%;">
					<div id="detailHeader"> 
						<h2 style="margin-top:50px;margin-left:10px; width:100%px">Form Pemesanan Event<hr></h2>
						<div id="ASDASD">
						&nbsp&nbsp&nbspContact Information
						<table style="margin-left:7px;">
							<tr>
								<th>Name</th>
								<th>Email</th>
							</tr>
							<tr>
								<td><input type="text" value="" placeholder="Name" id="InputTextStyle"/></td>
								
								<td><input type="text"value="" placeholder="Email"  /></td>
							</tr>
							<tr>
								<th>Phone</th>
								<th>Start Date</th>
								<th>End Date</th>
							</tr>
							<tr>
								<td><input type="text" value="" placeholder="Phone number" /></td>
								<td><input type="text" class="inputDate" value="" placeholder="Click here" /></td>
								<td><input type="text" class="inputDate" value="" placeholder="Click here" /></td>
							</tr>
							<tr>
							<th>Address<th>
							</tr>
							<tr>
								<td colspan="2"><input type="text" placeholder="Address home" style="width:100%;"/></td>
							</tr>
							<tr>
								<td colspan="2"><input type="text" placeholder="Address work" style="width:100%;"/></td>
							</tr>
							<tr>
								<th>Provinsi</th>
								<th>Kota</th>
								<th>Postal Code</th>
							</tr>
							<tr>
								<td>
									<input type="text"/>
								</td>
								
								<td>
									<select style="width:100%;">
										<option value="Surabaya">Surabaya</option>
										<option value="Malang">Malang</option>
										<option value="Jember">Jember</option>
									</select>
								</td>
								<td>
									<input type="text"></input>
								</td>
							</tr>
							<tr>
								<th>Paket Event</th>
							</tr>
							<tr>
								<td colspan="2">
									<select style="width:100%;">
									<option value="paket1">Paket1</option>
									<option value="paket2">Paket2</option>
									<option value="paket3">Paket3</option>								
									</select>
								</td>
								
								<td></td>
							</tr>
						</table>
						<input type="button" value="Pesan" />
						</div>
						
						</div>
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
</html>