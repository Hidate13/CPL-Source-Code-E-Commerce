<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<jsp:include page="../Components/header.jsp">
	<jsp:param value="Home" name="HTMLtitle" />
</jsp:include>
<link rel="stylesheet" href="css/post-login.css">
<link rel="stylesheet" href="css/styles.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<main>
	<div class="width-limiter">
		<div id="landing-display" class="no-select">
			<c:if test="${empty hideSearch }">
				<form class="search-form nav flex " action="search" method="get"
					style="margin: auto; padding: 20px 0;">
					<input class="search-bar" type="search" placeholder="Search"
						name="keyword" value="${keyword}" />
					<button class="search-btn material-icons" type="submit">search</button>
				</form>
			</c:if>
			<div id="banner-text" class="pFont text-center">
				<h1>
					Ace<span>Adora</span>
				</h1>
				<p>Revolutionizing Retail Inventory Management!</p>
				<button id="banner-button" class="align-center justify-between"
					onclick="window.location.href='signup'">
					Shop Now<i class="material-icons">shopping_cart</i>
				</button>
			</div>
			<img alt="bannerImage" src="assets/landing.jpg">
		</div>

		<h2 class="section-heading hFont text-left" style="padding-left: 25px">What's
			new?</h2>

		<div id="landing-content" class="no-select">
			<div class="content-row">
				<img alt="content" src="assets/1.jpg" height="500">
			</div>

			<div class="content-row">
				<img alt="content" src="assets/2.jpg" height="500">
			</div>

			<div class="content-row">
				<img alt="content" src="assets/3.png" height="500">
			</div>
		</div>
		<section>
			<div class="container" style="height: 250px; padding-top: 40px">
				<div class="row">
					<div class="col-12">
						<table class="table">
							<tr>
								<th><i class="fa fa-usd" style="font-size: 40px;"
									aria-hidden="true"></i></th>
								<th><i class="fa fa-truck" style="font-size: 40px;"
									aria-hidden="true"></i></th>
								<th><i class="fa fa-credit-card-alt"
									style="font-size: 40px;" aria-hidden="true"></i></th>
								<th><i class="fa fa-shield" style="font-size: 40px;"
									aria-hidden="true"></i></th>
							</tr>
							<tr>
								<td style="font-weight: bold; font-size: 25px" class="tdup">Great
									value</td>
								<td style="font-weight: bold; font-size: 25px" class="tdup">Worldwide
									shopping</td>
								<td style="font-weight: bold; font-size: 25px" class="tdup">Safe
									payment</td>
								<td style="font-weight: bold; font-size: 25px" class="tdup">Shop
									with confidence</td>
							</tr>
							<tr>
								<td>We offer competitive prices on over 100 million items.</td>
								<td>We ship to over 200 countries and regions, and our site
									comes in 12 languages.</td>
								<td>Pay with the world's most popular and secure payment
									methods.</td>
								<td>Our Buyer Protection policy covers your entire purchase
									journey.</td>
							</tr>
						</table>
					</div>
				</div>
			</div>
		</section>


	</div>
</main>

<jsp:include page="../Components/footer.jsp"></jsp:include>