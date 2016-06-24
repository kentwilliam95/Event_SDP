<!DOCTYPE html>
<html>
<head>
     <meta charset="UTF-8">
    <title>Hotel Transylvania</title>
    <meta content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no' name='viewport'>
    <meta name="description" content="Developed By M Abdur Rokib Promy">
    <meta name="keywords" content="Admin, Bootstrap 3, Template, Theme, Responsive">
	<link rel="stylesheet" type="text/css" href="<?php echo base_url("Asset/widi/css/jquery.dataTables.min.css")?>">
	<link rel="stylesheet" type="text/css" href="<?php echo base_url("Asset/widi/css/jquery-ui.css")?>">
    <!-- bootstrap 3.0.2 -->
    <link href="<?php echo base_url("Asset/widi/css/bootstrap.min.css")?>" rel="stylesheet" type="text/css" />
    <!-- font Awesome -->
    <link href="<?php echo base_url("Asset/widi/css/font-awesome.min.css")?>" rel="stylesheet" type="text/css" />
    <!-- Ionicons -->
    <link href="<?php echo base_url("Asset/widi/css/ionicons.min.css")?>" rel="stylesheet" type="text/css" />
    <!-- Morris chart -->
    <link href="<?php echo base_url("Asset/widi/css/morris/morris.css")?>" rel="stylesheet" type="text/css" />
    <!-- jvectormap -->
    <link href="<?php echo base_url("Asset/widi/css/jvectormap/jquery-jvectormap-1.2.2.css")?>" rel="stylesheet" type="text/css" />
    <!-- Date Picker -->
    <link href="<?php echo base_url("Asset/widi/css/datepicker/datepicker3.css")?>" rel="stylesheet" type="text/css" />
    <!-- fullCalendar -->
    <!-- <link href="css/fullcalendar/fullcalendar.css" rel="stylesheet" type="text/css" /> -->
    <!-- Daterange picker -->
    <link href="<?php echo base_url("Asset/widi/css/daterangepicker/daterangepicker-bs3.css")?>" rel="stylesheet" type="text/css" />
    <!-- iCheck for checkboxes and radio inputs -->
    <link href="<?php echo base_url("Asset/widi/css/iCheck/all.css")?>" rel="stylesheet" type="text/css" />
    <!-- bootstrap wysihtml5 - text editor -->
    <!-- <link href="css/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css" rel="stylesheet" type="text/css" /> -->
    <link href='<?php echo base_url("Asset/widi/css/font.css")?>' rel='stylesheet' type='text/css'>
    <!-- Theme style -->
    <link href="<?php echo base_url("Asset/widi/css/style.css")?>" rel="stylesheet" type="text/css" />




    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
          <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
          <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
          <![endif]-->

	<style type="text/css">

	</style>
</head>
	<body class="skin-black">
        <!-- header logo: style can be found in header.less -->
        <header class="header">
           <div class="logo">
				<a href="index.html">
					<img src="<?php echo base_url("Asset/widi/img/Logo1.png")?>" alt="User Image" style="height:40px"/>
				</a>
			</div>
            <!-- Header Navbar: style can be found in header.less -->
            <nav class="navbar navbar-static-top" role="navigation">
                <!-- Sidebar toggle button-->
                <a href="#" class="navbar-btn sidebar-toggle" data-toggle="offcanvas" role="button">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </a>
                <div class="navbar-right">
                    <ul class="nav navbar-nav">
                        <!-- User Account: style can be found in dropdown.less -->
                        <li class="dropdown user user-menu">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                <i class="fa fa-user"></i>
                                <span>Jane Doe <i class="caret"></i></span>
                            </a>
                            <ul class="dropdown-menu dropdown-custom dropdown-menu-right">
                                <li class="dropdown-header text-center">Account</li>

                                <li>
                                    <a href="#">
										<i class="fa fa-clock-o fa-fw pull-right"></i>
                                        <span class="badge badge-success pull-right">10</span> Updates</a>
                                    <a href="#">
										<i class="fa fa-envelope-o fa-fw pull-right"></i>
                                        <span class="badge badge-danger pull-right">5</span> Messages</a>
                                    <a href="#">
										<i class="fa fa-magnet fa-fw pull-right"></i>
                                        <span class="badge badge-info pull-right">3</span> Subscriptions</a>
                                    <a href="#">
										<i class="fa fa-question fa-fw pull-right"></i> <span class=
                                        "badge pull-right">11</span> FAQ</a>
                                </li>

                                <li class="divider"></li>
								<li>
									<a href="#">
										<i class="fa fa-user fa-fw pull-right"></i>
										Profile
									</a>
									<a data-toggle="modal" href="#modal-user-settings">
										<i class="fa fa-cog fa-fw pull-right"></i>
										Settings
									</a>
								</li>

								<li class="divider"></li>

								<li>
									<a href="#"><i class="fa fa-ban fa-fw pull-right"></i> Logout</a>
								</li>
							</ul>
						</li>
					</ul>
				</div>
			</nav>
		</header>
				
		<div class="wrapper row-offcanvas row-offcanvas-left">
			<!-- Left side column. contains the logo and sidebar -->
			<aside class="left-side sidebar-offcanvas">
                        <!-- sidebar: style can be found in sidebar.less -->
				<section class="sidebar">
					<!-- sidebar menu: : style can be found in sidebar.less -->
					<ul class="sidebar-menu">
						<li>
							<a href="<?php echo site_url("paketevent/index")?>">
								<i class="fa fa-gavel"></i> <span>Paket Event</span>
							</a>
						</li>

						<li>
							<a href="<?php echo site_url("vendorevent/index")?>">
								<i class="fa fa-globe"></i> <span>Vendor Event</span>
							</a>
						</li>

						<li class="active">
							<a href="#">
								<i class="fa fa-glass"></i> <span>Pemesanan Event</span>
							</a>
						</li>

					</ul>
				</section>
				<!-- /.sidebar -->
			</aside>

		<aside class="right-side">
					<!-- Main content -->
			<section class="content">
					<!-- Main row -->
				<div class="row"><!-- ./wrapper -->
					<div class="col-md-10">
						<section class="panel">
							<header class="panel-heading">
								Form Pemesanan Event
							</header>
						
							<form class="form-horizontal" role="form">
								<div class="form-group">
									<label class="control-label col-sm-2" for="paket">Nama :</label>
									<div class="col-sm-5">          
									<input type="text" class="form-control" id="nama" placeholder="Nama">
									</div>
								</div>
								<div class="form-group">
									<label class="control-label col-sm-2" for="email">Email:</label>
									<div class="col-sm-5"> 
									<input type="email" class="form-control" id="email" placeholder="Alamat Email">
									</div>
								</div>
								<div class="form-group">	
									<label class="control-label col-sm-2" for="vendor1">No.Telp / Handphone:</label>
									<div class="col-sm-5">          
									<input type="tel" class="form-control" id="telp" placeholder="No.Telp / Handphone">
									</div>
								</div>
								<div class="form-group">	
									<label class="control-label col-sm-2" for="Mulai">Tanggal Mulai:</label>
									<div class="col-xs-3">          
										<select class="form-control">
											<option value="">Tanggal</option> 
											<option value="">01</option> 
											<option value="">02</option> 
											<option value="">03</option> 
											<option value="">04</option> 
											<option value="">05</option> 
											<option value="">06</option> 
											<option value="">07</option> 
											<option value="">08</option> 
											<option value="">09</option> 
											<option value="">10</option> 
											<option value="">11</option> 
											<option value="">12</option> 
											<option value="">13</option> 
											<option value="">14</option> 
											<option value="">15</option> 
											<option value="">16</option> 
											<option value="">17</option> 
											<option value="">18</option> 
											<option value="">19</option> 
											<option value="">20</option> 
											<option value="">21</option> 
											<option value="">22</option> 
											<option value="">23</option> 
											<option value="">24</option> 
											<option value="">25</option> 
											<option value="">26</option> 
											<option value="">27</option> 
											<option value="">28</option> 
											<option value="">29</option> 
											<option value="">30</option> 
											<option value="">31</option> 
										</select>
									</div>
									<div class="col-xs-3">
										<select class="form-control">
											<option value="">Bulan</option>
											<option value="">Januari</option>
											<option value="">Februari</option>
											<option value="">Maret</option>
											<option value="">April</option>
											<option value="">Mei</option>
											<option value="">Juni</option>
											<option value="">Juli</option>
											<option value="">Agustus</option>
											<option value="">September</option>
											<option value="">Oktober</option>
											<option value="">Nopember</option>
											<option value="">Desember</option>
										</select>
									</div>
									<div class="col-xs-3">
										<select class="form-control">
											<option value="">Tahun</option>
											<option value="">1990</option>
											<option value="">1991</option>
											<option value="">1992</option>
											<option value="">1993</option>
											<option value="">1994</option>
											<option value="">1995</option>
											<option value="">1996</option>
											<option value="">1997</option>
											<option value="">1998</option>
											<option value="">1999</option>
											<option value="">2000</option>
											<option value="">2001</option>
											<option value="">2002</option>
											<option value="">2003</option>
											<option value="">2004</option>
											<option value="">2005</option>
											<option value="">2006</option>
											<option value="">2007</option>
											<option value="">2008</option>
											<option value="">2009</option>
											<option value="">2010</option>
											<option value="">2011</option>
											<option value="">2012</option>
											<option value="">2013</option>
											<option value="">2014</option>
											<option value="">2015</option>
											<option value="">2016</option>
										</select>
									</div>
								</div>
								<div class="form-group">
									<label class="control-label col-sm-2" for="Berakhir">Tanggal Berakhir:</label>
									<div class="col-xs-3">          
										<select class="form-control">
											<option value="">Tanggal</option> 
											<option value="">01</option> 
											<option value="">02</option> 
											<option value="">03</option> 
											<option value="">04</option> 
											<option value="">05</option> 
											<option value="">06</option> 
											<option value="">07</option> 
											<option value="">08</option> 
											<option value="">09</option> 
											<option value="">10</option> 
											<option value="">11</option> 
											<option value="">12</option> 
											<option value="">13</option> 
											<option value="">14</option> 
											<option value="">15</option> 
											<option value="">16</option> 
											<option value="">17</option> 
											<option value="">18</option> 
											<option value="">19</option> 
											<option value="">20</option> 
											<option value="">21</option> 
											<option value="">22</option> 
											<option value="">23</option> 
											<option value="">24</option> 
											<option value="">25</option> 
											<option value="">26</option> 
											<option value="">27</option> 
											<option value="">28</option> 
											<option value="">29</option> 
											<option value="">30</option> 
											<option value="">31</option> 
										</select>
									</div>
									<div class="col-xs-3">
										<select class="form-control">
											<option value="">Bulan</option>
											<option value="">Januari</option>
											<option value="">Februari</option>
											<option value="">Maret</option>
											<option value="">April</option>
											<option value="">Mei</option>
											<option value="">Juni</option>
											<option value="">Juli</option>
											<option value="">Agustus</option>
											<option value="">September</option>
											<option value="">Oktober</option>
											<option value="">Nopember</option>
											<option value="">Desember</option>
										</select>
									</div>
									<div class="col-xs-3">
										<select class="form-control">
											<option value="">Tahun</option>
											<option value="">1990</option>
											<option value="">1991</option>
											<option value="">1992</option>
											<option value="">1993</option>
											<option value="">1994</option>
											<option value="">1995</option>
											<option value="">1996</option>
											<option value="">1997</option>
											<option value="">1998</option>
											<option value="">1999</option>
											<option value="">2000</option>
											<option value="">2001</option>
											<option value="">2002</option>
											<option value="">2003</option>
											<option value="">2004</option>
											<option value="">2005</option>
											<option value="">2006</option>
											<option value="">2007</option>
											<option value="">2008</option>
											<option value="">2009</option>
											<option value="">2010</option>
											<option value="">2011</option>
											<option value="">2012</option>
											<option value="">2013</option>
											<option value="">2014</option>
											<option value="">2015</option>
											<option value="">2016</option>
										</select>
									</div>
								</div>
								<div class="form-group">
									<label class="control-label col-sm-2" for="Rumah">Alamat Rumah:</label>
									<div class="col-sm-5">          
									<input type="text" class="form-control" id="Rumah" placeholder="Alamat Rumah">
									</div>
								</div>
								<div class="form-group">
									<label class="control-label col-sm-2" for="Kantor">Alamat Kantor:</label>
									<div class="col-sm-5">          
									<input type="text" class="form-control" id="Kantor" placeholder="Alamat Kantor">
									</div>
								</div>
								<div class="form-group">
									<label class="control-label col-sm-2" for="Provinsi">Provinsi:</label>
									<div class="col-xs-2">          
										<select class="form-control" id="provinsi">
											<option>Surabaya</option>
											<option>Jakarta</option>
											<option>Malang</option>
											<option>Jember</option>
										</select>
									</div>
									<label class="control-label col-sm-1" for="Kota">Kota:</label>
									<div class="col-xs-2">          
										<select class="form-control" id="provinsi">
											<option>Surabaya</option>
											<option>Jakarta</option>
											<option>Malang</option>
											<option>Jember</option>
										</select>
									</div>
									<label class="control-label col-sm-2" for="Kodepos">Kode Pos</label>
									<div class="col-xs-2">          
										<input type="text" class="form-control" id="KodePos" placeholder="Kode Pos">
									</div>
								</div>
								<div class="form-group">
									<label class="control-label col-sm-2" for="Event">Paket Event:</label>
									<div class="col-xs-2">          
										<select class="form-control" id="Event">
											<option>Paket 1</option>
											<option>Paket 2</option>
											<option>Paket 3</option>
											<option>Paket 4</option>
										</select>
									</div>
								</div>
								<div class="form-group">        
									<div class="col-sm-offset-5 col-sm-3">
									<button type="submit" class="btn btn-default">Submit</button>
									</div>
								</div>
							</form>
						</section>
					</div><!--end col-6 -->
			</section><!-- /.content -->
						<div class="footer-main">
							Copyright &copy Director, 2014
						</div>
		</aside><!-- /.right-side -->
			</div><!-- ./wrapper -->


        <!-- jQuery 2.0.2 -->
        <script src="<?php echo base_url("Asset/widi/js/jquery.min.js")?>" type="text/javascript"></script>

        <!-- jQuery UI 1.10.3 -->
        <script src="<?php echo base_url("Asset/widi/js/jquery-ui-1.10.3.min.js")?>" type="text/javascript"></script>
        <!-- Bootstrap -->
        <script src="<?php echo base_url("Asset/widi/js/bootstrap.min.js")?>" type="text/javascript"></script>
        <!-- daterangepicker -->
        <script src="<?php echo base_url("Asset/widi/js/plugins/daterangepicker/daterangepicker.js")?>" type="text/javascript"></script>

		<script src="<?php echo base_url("Asset/widi/js/jquery.dataTables.min.js")?>"></script>
		
        <script src="<?php echo base_url("Asset/widi/js/plugins/chart.js")?>" type="text/javascript"></script>

        <!-- datepicker
        <script src="js/plugins/datepicker/bootstrap-datepicker.js" type="text/javascript"></script>-->
        <!-- Bootstrap WYSIHTML5
        <script src="js/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.all.min.js" type="text/javascript"></script>-->
        <!-- iCheck -->
        <script src="<?php echo base_url("Asset/widi/js/plugins/iCheck/icheck.min.js")?>" type="text/javascript"></script>
        <!-- calendar -->
        <script src="<?php echo base_url("Asset/widi/js/plugins/fullcalendar/fullcalendar.js")?>" type="text/javascript"></script>

        <!-- Director App -->
        <script src="<?php echo base_url("Asset/widi/js/Director/app.js")?>" type="text/javascript"></script>

        <!-- Director dashboard demo (This is only for demo purposes) -->
        <script src="<?php echo base_url("Asset/widi/js/Director/dashboard.js")?>" type="text/javascript"></script>

        <!-- Director for demo purposes -->
		<script type="text/javascript">
			$('input').on('ifChecked', function(event) {
				// var element = $(this).parent().find('input:checkbox:first');
				// element.parent().parent().parent().addClass('highlight');
				$(this).parents('li').addClass("task-done");
				console.log('ok');
			});
			$('input').on('ifUnchecked', function(event) {
				// var element = $(this).parent().find('input:checkbox:first');
				// element.parent().parent().parent().removeClass('highlight');
				$(this).parents('li').removeClass("task-done");
				console.log('not');
			});

		</script>
		<script>
			$('#noti-box').slimScroll({
				height: '400px',
				size: '5px',
				BorderRadius: '5px'
			});

			$('input[type="checkbox"].flat-grey, input[type="radio"].flat-grey').iCheck({
				checkboxClass: 'icheckbox_flat-grey',
				radioClass: 'iradio_flat-grey'
			});
		</script>
	</body>
</html>