<!DOCTYPE html>
<html>
<head>
<title>Dashboard</title>
<meta charset="UTF-8">
</head>
<body>
	<div class="wrapper">
		<jsp:include page="/partial/admin/css_lib.jsp"></jsp:include>
		<jsp:include page="/partial/admin/panel.jsp"></jsp:include>
		<div class="main-panel ps-container ps-theme-default ps-active-y">
			<jsp:include page="/partial/admin/nav.jsp"></jsp:include>
			<div class="content">
				<div class="container-fluid">
					<div class="row">
						<div class="col-lg-3 col-sm-6">
							<div class="card">
								<div class="card-content">
									<div class="row">
										<div class="col-xs-5">
											<div class="icon-big icon-warning text-center">
												<i class="ti-server"></i>
											</div>
										</div>
										<div class="col-xs-7">
											<div class="numbers">
												<p>Capacity</p>
												105GB
											</div>
										</div>
									</div>
								</div>
								<div class="card-footer">
									<hr>
									<div class="stats">
										<i class="ti-reload"></i> Updated now
									</div>
								</div>
							</div>
						</div>
						<div class="col-lg-3 col-sm-6">
							<div class="card">
								<div class="card-content">
									<div class="row">
										<div class="col-xs-5">
											<div class="icon-big icon-success text-center">
												<i class="ti-wallet"></i>
											</div>
										</div>
										<div class="col-xs-7">
											<div class="numbers">
												<p>Revenue</p>
												$1,345
											</div>
										</div>
									</div>
								</div>
								<div class="card-footer">
									<hr>
									<div class="stats">
										<i class="ti-calendar"></i> Last day
									</div>
								</div>
							</div>
						</div>
						<div class="col-lg-3 col-sm-6">
							<div class="card">
								<div class="card-content">
									<div class="row">
										<div class="col-xs-5">
											<div class="icon-big icon-danger text-center">
												<i class="ti-pulse"></i>
											</div>
										</div>
										<div class="col-xs-7">
											<div class="numbers">
												<p>Errors</p>
												23
											</div>
										</div>
									</div>
								</div>
								<div class="card-footer">
									<hr>
									<div class="stats">
										<i class="ti-timer"></i> In the last hour
									</div>
								</div>
							</div>
						</div>
						<div class="col-lg-3 col-sm-6">
							<div class="card">
								<div class="card-content">
									<div class="row">
										<div class="col-xs-5">
											<div class="icon-big icon-info text-center">
												<i class="ti-twitter-alt"></i>
											</div>
										</div>
										<div class="col-xs-7">
											<div class="numbers">
												<p>Followers</p>
												+45
											</div>
										</div>
									</div>
								</div>
								<div class="card-footer">
									<hr>
									<div class="stats">
										<i class="ti-reload"></i> Updated now
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-lg-4 col-sm-6">
							<div class="card">
								<div class="card-content">
									<div class="row">
										<div class="col-xs-7">
											<div class="numbers pull-left">$34,657</div>
										</div>
										<div class="col-xs-5">
											<div class="pull-right">
												<span class="label label-success"> +18% </span>
											</div>
										</div>
									</div>
									<h6 class="big-title">
										total earnings <span class="text-muted">in last</span> ten <span
											class="text-muted">quarters</span>
									</h6>
									<div id="chartTotalEarnings">
										<svg xmlns:ct="http://gionkunz.github.com/chartist-js/ct"
											width="100%" height="210px" class="ct-chart-line"
											style="width: 100%; height: 210px;">
											<g class="ct-grids"></g>
											<g>
											<g class="ct-series ct-series-a">
											<path
												d="M50,129C56.49,125.333,75.962,112.667,88.943,107C101.924,101.333,114.905,93.667,127.885,95C140.866,96.333,153.847,120.667,166.828,115C179.809,109.333,192.79,67.667,205.771,61C218.752,54.333,231.733,82.667,244.714,75C257.694,67.333,277.166,25,283.656,15"
												class="ct-line ct-green"></path></g></g>
											<g class="ct-labels">
											<foreignobject style="overflow: visible;" x="50" y="180"
												width="38.942708333333336" height="20">
											<span class="ct-label ct-horizontal ct-end"
												style="width: 39px; height: 20px"
												xmlns="http://www.w3.org/2000/xmlns/">Jan</span></foreignobject>
											<foreignobject style="overflow: visible;"
												x="88.94270833333334" y="180" width="38.942708333333336"
												height="20">
											<span class="ct-label ct-horizontal ct-end"
												style="width: 39px; height: 20px"
												xmlns="http://www.w3.org/2000/xmlns/">Feb</span></foreignobject>
											<foreignobject style="overflow: visible;"
												x="127.88541666666667" y="180" width="38.94270833333333"
												height="20">
											<span class="ct-label ct-horizontal ct-end"
												style="width: 39px; height: 20px"
												xmlns="http://www.w3.org/2000/xmlns/">Mar</span></foreignobject>
											<foreignobject style="overflow: visible;" x="166.828125"
												y="180" width="38.94270833333334" height="20">
											<span class="ct-label ct-horizontal ct-end"
												style="width: 39px; height: 20px"
												xmlns="http://www.w3.org/2000/xmlns/">April</span></foreignobject>
											<foreignobject style="overflow: visible;"
												x="205.77083333333334" y="180" width="38.94270833333334"
												height="20">
											<span class="ct-label ct-horizontal ct-end"
												style="width: 39px; height: 20px"
												xmlns="http://www.w3.org/2000/xmlns/">May</span></foreignobject>
											<foreignobject style="overflow: visible;"
												x="244.71354166666669" y="180" width="38.942708333333314"
												height="20">
											<span class="ct-label ct-horizontal ct-end"
												style="width: 39px; height: 20px"
												xmlns="http://www.w3.org/2000/xmlns/">June</span></foreignobject>
											<foreignobject style="overflow: visible;" y="155" x="10"
												height="20" width="30">
											<span class="ct-label ct-vertical ct-start"
												style="height: 20px; width: 30px"
												xmlns="http://www.w3.org/2000/xmlns/">0</span></foreignobject>
											<foreignobject style="overflow: visible;" y="135" x="10"
												height="20" width="30">
											<span class="ct-label ct-vertical ct-start"
												style="height: 20px; width: 30px"
												xmlns="http://www.w3.org/2000/xmlns/">100</span></foreignobject>
											<foreignobject style="overflow: visible;" y="115" x="10"
												height="20" width="30">
											<span class="ct-label ct-vertical ct-start"
												style="height: 20px; width: 30px"
												xmlns="http://www.w3.org/2000/xmlns/">200</span></foreignobject>
											<foreignobject style="overflow: visible;" y="95" x="10"
												height="20" width="30">
											<span class="ct-label ct-vertical ct-start"
												style="height: 20px; width: 30px"
												xmlns="http://www.w3.org/2000/xmlns/">300</span></foreignobject>
											<foreignobject style="overflow: visible;" y="75" x="10"
												height="20" width="30">
											<span class="ct-label ct-vertical ct-start"
												style="height: 20px; width: 30px"
												xmlns="http://www.w3.org/2000/xmlns/">400</span></foreignobject>
											<foreignobject style="overflow: visible;" y="55" x="10"
												height="20" width="30">
											<span class="ct-label ct-vertical ct-start"
												style="height: 20px; width: 30px"
												xmlns="http://www.w3.org/2000/xmlns/">500</span></foreignobject>
											<foreignobject style="overflow: visible;" y="35" x="10"
												height="20" width="30">
											<span class="ct-label ct-vertical ct-start"
												style="height: 20px; width: 30px"
												xmlns="http://www.w3.org/2000/xmlns/">600</span></foreignobject>
											<foreignobject style="overflow: visible;" y="15" x="10"
												height="20" width="30">
											<span class="ct-label ct-vertical ct-start"
												style="height: 20px; width: 30px"
												xmlns="http://www.w3.org/2000/xmlns/">700</span></foreignobject>
											<foreignobject style="overflow: visible;" y="-15" x="10"
												height="30" width="30">
											<span class="ct-label ct-vertical ct-start"
												style="height: 30px; width: 30px"
												xmlns="http://www.w3.org/2000/xmlns/">800</span></foreignobject></g></svg>
									</div>
								</div>
								<div class="card-footer">
									<hr>
									<div class="footer-title">Financial Statistics</div>
									<div class="pull-right">
										<button class="btn btn-info btn-fill btn-icon btn-sm">
											<i class="ti-plus"></i>
										</button>
									</div>
								</div>
							</div>
						</div>
						<div class="col-lg-4 col-sm-6">
							<div class="card">
								<div class="card-content">
									<div class="row">
										<div class="col-xs-7">
											<div class="numbers pull-left">169</div>
										</div>
										<div class="col-xs-5">
											<div class="pull-right">
												<span class="label label-danger"> -14% </span>
											</div>
										</div>
									</div>
									<h6 class="big-title">
										total subscriptions <span class="text-muted">in last</span> 7
										days
									</h6>
									<div id="chartTotalSubscriptions">
										<svg xmlns:ct="http://gionkunz.github.com/chartist-js/ct"
											width="100%" height="210px" class="ct-chart-line"
											style="width: 100%; height: 210px;">
											<g class="ct-grids"></g>
											<g>
											<g class="ct-series ct-series-a">
											<path
												d="M50,79C55.563,81.667,72.253,87,83.379,95C94.506,103,105.632,127,116.759,127C127.885,127,139.012,105.667,150.138,95C161.265,84.333,172.391,65.667,183.518,63C194.644,60.333,205.771,84.333,216.897,79C228.024,73.667,239.15,41.667,250.277,31C261.403,20.333,278.093,17.667,283.656,15"
												class="ct-line ct-red"></path></g></g>
											<g class="ct-labels">
											<foreignobject style="overflow: visible;" x="50" y="180"
												width="33.379464285714285" height="20">
											<span class="ct-label ct-horizontal ct-end"
												style="width: 33px; height: 20px"
												xmlns="http://www.w3.org/2000/xmlns/">M</span></foreignobject>
											<foreignobject style="overflow: visible;"
												x="83.37946428571428" y="180" width="33.379464285714285"
												height="20">
											<span class="ct-label ct-horizontal ct-end"
												style="width: 33px; height: 20px"
												xmlns="http://www.w3.org/2000/xmlns/">T</span></foreignobject>
											<foreignobject style="overflow: visible;"
												x="116.75892857142857" y="180" width="33.37946428571429"
												height="20">
											<span class="ct-label ct-horizontal ct-end"
												style="width: 33px; height: 20px"
												xmlns="http://www.w3.org/2000/xmlns/">W</span></foreignobject>
											<foreignobject style="overflow: visible;"
												x="150.13839285714286" y="180" width="33.37946428571428"
												height="20">
											<span class="ct-label ct-horizontal ct-end"
												style="width: 33px; height: 20px"
												xmlns="http://www.w3.org/2000/xmlns/">T</span></foreignobject>
											<foreignobject style="overflow: visible;"
												x="183.51785714285714" y="180" width="33.37946428571428"
												height="20">
											<span class="ct-label ct-horizontal ct-end"
												style="width: 33px; height: 20px"
												xmlns="http://www.w3.org/2000/xmlns/">F</span></foreignobject>
											<foreignobject style="overflow: visible;"
												x="216.89732142857142" y="180" width="33.379464285714306"
												height="20">
											<span class="ct-label ct-horizontal ct-end"
												style="width: 33px; height: 20px"
												xmlns="http://www.w3.org/2000/xmlns/">S</span></foreignobject>
											<foreignobject style="overflow: visible;"
												x="250.27678571428572" y="180" width="33.37946428571428"
												height="20">
											<span class="ct-label ct-horizontal ct-end"
												style="width: 33px; height: 20px"
												xmlns="http://www.w3.org/2000/xmlns/">S</span></foreignobject>
											<foreignobject style="overflow: visible;" y="155" x="10"
												height="20" width="30">
											<span class="ct-label ct-vertical ct-start"
												style="height: 20px; width: 30px"
												xmlns="http://www.w3.org/2000/xmlns/">0</span></foreignobject>
											<foreignobject style="overflow: visible;" y="135" x="10"
												height="20" width="30">
											<span class="ct-label ct-vertical ct-start"
												style="height: 20px; width: 30px"
												xmlns="http://www.w3.org/2000/xmlns/">12.5</span></foreignobject>
											<foreignobject style="overflow: visible;" y="115" x="10"
												height="20" width="30">
											<span class="ct-label ct-vertical ct-start"
												style="height: 20px; width: 30px"
												xmlns="http://www.w3.org/2000/xmlns/">25</span></foreignobject>
											<foreignobject style="overflow: visible;" y="95" x="10"
												height="20" width="30">
											<span class="ct-label ct-vertical ct-start"
												style="height: 20px; width: 30px"
												xmlns="http://www.w3.org/2000/xmlns/">37.5</span></foreignobject>
											<foreignobject style="overflow: visible;" y="75" x="10"
												height="20" width="30">
											<span class="ct-label ct-vertical ct-start"
												style="height: 20px; width: 30px"
												xmlns="http://www.w3.org/2000/xmlns/">50</span></foreignobject>
											<foreignobject style="overflow: visible;" y="55" x="10"
												height="20" width="30">
											<span class="ct-label ct-vertical ct-start"
												style="height: 20px; width: 30px"
												xmlns="http://www.w3.org/2000/xmlns/">62.5</span></foreignobject>
											<foreignobject style="overflow: visible;" y="35" x="10"
												height="20" width="30">
											<span class="ct-label ct-vertical ct-start"
												style="height: 20px; width: 30px"
												xmlns="http://www.w3.org/2000/xmlns/">75</span></foreignobject>
											<foreignobject style="overflow: visible;" y="15" x="10"
												height="20" width="30">
											<span class="ct-label ct-vertical ct-start"
												style="height: 20px; width: 30px"
												xmlns="http://www.w3.org/2000/xmlns/">87.5</span></foreignobject>
											<foreignobject style="overflow: visible;" y="-15" x="10"
												height="30" width="30">
											<span class="ct-label ct-vertical ct-start"
												style="height: 30px; width: 30px"
												xmlns="http://www.w3.org/2000/xmlns/">100</span></foreignobject></g></svg>
									</div>
								</div>
								<div class="card-footer">
									<hr>
									<div class="footer-title">View all members</div>
									<div class="pull-right">
										<button class="btn btn-default btn-fill btn-icon btn-sm">
											<i class="ti-angle-right"></i>
										</button>
									</div>
								</div>
							</div>
						</div>
						<div class="col-lg-4 col-sm-6">
							<div class="card">
								<div class="card-content">
									<div class="row">
										<div class="col-xs-7">
											<div class="numbers pull-left">8,960</div>
										</div>
										<div class="col-xs-5">
											<div class="pull-right">
												<span class="label label-warning"> ~51% </span>
											</div>
										</div>
									</div>
									<h6 class="big-title">
										total downloads <span class="text-muted">in last</span> 6
										years
									</h6>
									<div id="chartTotalDownloads">
										<svg xmlns:ct="http://gionkunz.github.com/chartist-js/ct"
											width="100%" height="210px" class="ct-chart-line"
											style="width: 100%; height: 210px;">
											<g class="ct-grids"></g>
											<g>
											<g class="ct-series ct-series-a">
											<path
												d="M50,153.667C56.49,154.259,75.962,164.007,88.943,157.222C101.924,150.437,114.905,134.719,127.885,112.956C140.866,91.193,153.847,25.951,166.828,26.644C179.809,27.338,192.79,99.993,205.771,117.116C218.752,134.239,238.223,127.338,244.714,129.382"
												class="ct-line ct-orange"></path></g></g>
											<g class="ct-labels">
											<foreignobject style="overflow: visible;" x="50" y="180"
												width="38.942708333333336" height="20">
											<span class="ct-label ct-horizontal ct-end"
												style="width: 39px; height: 20px"
												xmlns="http://www.w3.org/2000/xmlns/">2009</span></foreignobject>
											<foreignobject style="overflow: visible;"
												x="88.94270833333334" y="180" width="38.942708333333336"
												height="20">
											<span class="ct-label ct-horizontal ct-end"
												style="width: 39px; height: 20px"
												xmlns="http://www.w3.org/2000/xmlns/">2010</span></foreignobject>
											<foreignobject style="overflow: visible;"
												x="127.88541666666667" y="180" width="38.94270833333333"
												height="20">
											<span class="ct-label ct-horizontal ct-end"
												style="width: 39px; height: 20px"
												xmlns="http://www.w3.org/2000/xmlns/">2011</span></foreignobject>
											<foreignobject style="overflow: visible;" x="166.828125"
												y="180" width="38.94270833333334" height="20">
											<span class="ct-label ct-horizontal ct-end"
												style="width: 39px; height: 20px"
												xmlns="http://www.w3.org/2000/xmlns/">2012</span></foreignobject>
											<foreignobject style="overflow: visible;"
												x="205.77083333333334" y="180" width="38.94270833333334"
												height="20">
											<span class="ct-label ct-horizontal ct-end"
												style="width: 39px; height: 20px"
												xmlns="http://www.w3.org/2000/xmlns/">2013</span></foreignobject>
											<foreignobject style="overflow: visible;"
												x="244.71354166666669" y="180" width="38.942708333333314"
												height="20">
											<span class="ct-label ct-horizontal ct-end"
												style="width: 39px; height: 20px"
												xmlns="http://www.w3.org/2000/xmlns/">2014</span></foreignobject>
											<foreignobject style="overflow: visible;"
												y="139.44444444444446" x="10" height="35.55555555555556"
												width="30">
											<span class="ct-label ct-vertical ct-start"
												style="height: 36px; width: 30px"
												xmlns="http://www.w3.org/2000/xmlns/">0</span></foreignobject>
											<foreignobject style="overflow: visible;"
												y="103.8888888888889" x="10" height="35.55555555555556"
												width="30">
											<span class="ct-label ct-vertical ct-start"
												style="height: 36px; width: 30px"
												xmlns="http://www.w3.org/2000/xmlns/">2000</span></foreignobject>
											<foreignobject style="overflow: visible;"
												y="68.33333333333333" x="10" height="35.55555555555556"
												width="30">
											<span class="ct-label ct-vertical ct-start"
												style="height: 36px; width: 30px"
												xmlns="http://www.w3.org/2000/xmlns/">4000</span></foreignobject>
											<foreignobject style="overflow: visible;"
												y="32.77777777777777" x="10" height="35.55555555555556"
												width="30">
											<span class="ct-label ct-vertical ct-start"
												style="height: 36px; width: 30px"
												xmlns="http://www.w3.org/2000/xmlns/">6000</span></foreignobject>
											<foreignobject style="overflow: visible;"
												y="2.7777777777777715" x="10" height="30" width="30">
											<span class="ct-label ct-vertical ct-start"
												style="height: 30px; width: 30px"
												xmlns="http://www.w3.org/2000/xmlns/">8000</span></foreignobject></g></svg>
									</div>
								</div>
								<div class="card-footer">
									<hr>
									<div class="footer-title">View more details</div>
									<div class="pull-right">
										<button class="btn btn-success btn-fill btn-icon btn-sm">
											<i class="ti-info"></i>
										</button>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-lg-3 col-sm-6">
							<div class="card card-circle-chart" data-background-color="blue">
								<div class="card-header text-center">
									<h5 class="card-title">Dashboard</h5>
									<p class="description">Monthly sales target</p>
								</div>
								<div class="card-content">
									<div id="chartDashboard" class="chart-circle" data-percent="70">
										70%
										<canvas height="160" width="160"></canvas>
									</div>
								</div>
							</div>
						</div>
						<div class="col-lg-3 col-sm-6">
							<div class="card card-circle-chart" data-background-color="green">
								<div class="card-header text-center">
									<h5 class="card-title">Orders</h5>
									<p class="description">Completed</p>
								</div>
								<div class="card-content">
									<div id="chartOrders" class="chart-circle" data-percent="34">
										34%
										<canvas height="160" width="160"></canvas>
									</div>
								</div>
							</div>
						</div>
						<div class="col-lg-3 col-sm-6">
							<div class="card card-circle-chart"
								data-background-color="orange">
								<div class="card-header text-center">
									<h5 class="card-title">New Visitors</h5>
									<p class="description">Out of total number</p>
								</div>
								<div class="card-content">
									<div id="chartNewVisitors" class="chart-circle"
										data-percent="62">
										62%
										<canvas height="160" width="160"></canvas>
									</div>
								</div>
							</div>
						</div>
						<div class="col-lg-3 col-sm-6">
							<div class="card card-circle-chart" data-background-color="brown">
								<div class="card-header text-center">
									<h5 class="card-title">Subscriptions</h5>
									<p class="description">Monthly newsletter</p>
								</div>
								<div class="card-content">
									<div id="chartSubscriptions" class="chart-circle"
										data-percent="10">
										10%
										<canvas height="160" width="160"></canvas>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<jsp:include page="/partial/admin/js_lib.jsp"></jsp:include>
</body>
</html>
