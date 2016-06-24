
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
						<li class="active">
							<a href="#">
								<i class="fa fa-gavel"></i> <span>Paket Event</span>
							</a>
						</li>

						<li>
							<a href="<?php echo site_url("vendorevent/index")?>">
								<i class="fa fa-globe"></i> <span>Vendor Event</span>
							</a>
						</li>

						<li>
							<a href="<?php echo site_url("pemesananEvent/index")?>">
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
					<div class="col-md-9">
						<section class="panel">
							<header class="panel-heading">
								Paket Event
							</header>
							<div class="form-group col-sm-3">
								<label for="sel1">Jenis Paket</label>
								
								<select class="form-control" name="jenisVendor" id="sel1">
									<option value="Paket1">Paket 1</option>
									<option value="Paket2">Paket 2</option>
									<option value="Paket3">Paket 3</option>
									<!--<option value="Paket4">Paket 4</option>
									<option value="Paket5">Paket 5</option>-->
								</select>
							</div>
							<div class="form-group col-sm-9">				
								<h3 style="text-align:right; color:gold;"> Pemesanan Event</h3>
								
								<p style="text-align:right;text-justify:inter-word;">Lakukanlah Pemesanan Event Sekarang Juga</p>
								
								<button type="button" class="btn btn-info btn-lg pull-right">Pemesanan Event</button>
							</div>
							<div class="panel-body table-responsive">
								<table class="table table-hover" id="tabel1">
									
								</table>	
								<br>
								<div class="col-sm-9"></div>								
								<div style="font-size:20pt" id="subtotal">Subtotal: </div>
								<!--<button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModal">Costum Paket Event</button>
							--></div>
							<div class="form-group col-sm-9">
							
							</div>
						</section>
					</div><!--end col-6 -->
			</section><!-- /.content -->
						<div class="footer-main">
							Copyright &copy Director, 2014
						</div>
		</aside><!-- /.right-side -->
			</div><!-- ./wrapper -->
		<div id="myModal" class="modal fade" role="dialog" title="Kostum paket">
			<div class="modal-dialog">
				<!-- Modal content-->
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal">&times;</button>
						<h4 class="modal-title">Custom Paket</h4>
					</div>
					<div class="modal-body">
						<form class="form-horizontal" role="form">
							<div class="form-group">
								<label class="control-label col-sm-3" for="paket">Nama Paket:</label>
								<div class="col-sm-5">          
								<input type="text" class="form-control" id="paket" placeholder="Nama Paket">
								</div>
							</div>
							<div class="form-group">	
								<label class="control-label col-sm-3" for="vendor1">Nama Vendor:</label>
								<div class="col-sm-5">          
								<input type="text" class="form-control" id="vendor1" placeholder="Nama Vendor">
								</div>
							</div>
							<div class="form-group">	
								<label class="control-label col-sm-3" for="vendor2">Nama Vendor:</label>
								<div class="col-sm-5">          
								<input type="text" class="form-control" id="vendor2" placeholder="Nama Vendor">
								</div>
							</div>
							<div class="form-group">
								<label class="control-label col-sm-3" for="vendor3">Nama Vendor:</label>
								<div class="col-sm-5">          
								<input type="text" class="form-control" id="vendor3" placeholder="Nama Vendor">
								</div>
							</div>
							<div class="form-group">						
								<label class="control-label col-sm-3" for="vendor4">Nama Vendor:</label>
								<div class="col-sm-5">          
								<input type="text" class="form-control" id="vendor4" placeholder="Nama Vendor">
								</div>
							</div>
							<div class="form-group">
								<label class="control-label col-sm-3" for="total">Total:</label>
								<div class="col-sm-5">          
								<input type="text" class="form-control" id="total" placeholder="Total">
								</div>
							</div>
							<div class="form-group">        
								<div class="col-sm-offset-3 col-sm-5">
								<button type="submit" class="btn btn-default">Submit</button>
								</div>
							</div>
						</form>
					</div>
				  <div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
				  </div>
				</div>
			</div>
		</div>

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
		<script>
	$("document").ready(function()
	{
		createTabel(<?php echo $hasil?>);
		$("#sel1").change(function()
		{
			$.ajax({
				url:"<?php echo site_url("paketevent/showpaket")?>",
				type:"post",
				data:{id:$(this).val()},
				success:function(res)
				{
					//alert(res);
					createTabel(JSON.parse(res));
				}
			})
		})
		function createTabel(duata)
		{
			$("#tabel1").DataTable({
			data:duata,
			columns:[
			{title:"Menu"},
			{title:"Harga"},
			],
			destroy:true
			})
			
			var table = $('#tabel1').DataTable();
			var potong=0;
			for($i=0; $i < table.rows().data().length; $i++)
			{
				potong = potong + parseInt(table.rows().column(1).data()[$i]);
			}		
			$("#subtotal").html("Subtotal: "+potong+"");
		}
	})
	</script>
	</body>
</html>