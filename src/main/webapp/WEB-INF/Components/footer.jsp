<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<footer class="">

	<div class="width-limiter justify-center flex-col"
		style="padding: 1rem 2rem;">
		<div id="footer-top" class="hFont">
			<a href="home" class="align-center text-deco-none">
				<h1>
					Ace<span>Adora</span>
				</h1>
			</a>
		</div>

		<div id="footer-mid" class="align-start justify-between">
			<div id="footer-mid-l">

				<ul class="foot-links align-start flex-col list-style-none">
					<h5 class="footer-subheader">Company</h5>
					<li><a></a></li>
					<li><a href="/about-us">About Us</a></li>
					<li><a href="/contact-us">Contact Us</a></li>
				</ul>

				<sec:authorize access="!isAuthenticated()">
					<ul class="foot-links align-start flex-col list-style-none">
						<h5 class="footer-subheader">Account</h5>
						<li><a></a></li>
						<li><a href="/login">Login</a></li>
						<li><a href="/signup">Sign Up</a></li>
					</ul>
				</sec:authorize>

				<sec:authorize access="isAuthenticated()">

					<sec:authorize access="hasRole('User')">
						<ul class="foot-links align-start flex-col list-style-none">
							<h5 class="footer-subheader">
								Ace<span>Adora</span>
							</h5>
							<li><a></a></li>
							<li><a href="/products">Products</a></li>
							<li><a href="/cart">My Cart</a></li>
							<li><a href="/my-profile">My Profile</a></li>
						</ul>
					</sec:authorize>

					<sec:authorize access="hasAnyRole('Staff', 'Admin')">
						<ul class="foot-links align-start flex-col list-style-none">
							<h5 class="footer-subheader">Manage</h5>

							<sec:authorize access="hasRole('Admin')">
								<li><a href="/user-management">Users</a></li>
							</sec:authorize>
							<li><a href="/categories">Categories</a></li>
							<li><a href="/products">Products</a></li>
							<li><a href="/add-product">Add</a></li>
							<li><a href="#">Pickups</a></li>
							<li><a href="#">Deliveries</a></li>
						</ul>
					</sec:authorize>

				</sec:authorize>


			</div>


		</div>

		<div id="footer-bot" class="align-center justify-between pFont">
			<div id="footer-bot-l"></div>

			<div id="footer-bot-r" class="align-center">
				<ul id="bot-links" class="align-center list-style-none">
					<li><a href="/privacy-policy">Privacy Policy</a></li>
					<li><a href="/terms-and-conditions">Terms & Conditions</a></li>
				</ul>
			</div>
		</div>
	</div>

</footer>
<script src="js/nav-menu.js"></script>
</body>
</html>