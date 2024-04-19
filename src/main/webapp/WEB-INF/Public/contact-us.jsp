<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>

<sec:authorize access="!isAuthenticated()">
	<jsp:include page="../Components/header.jsp">
		<jsp:param value="Contact Us" name="HTMLtitle" />
	</jsp:include>
</sec:authorize>

<sec:authorize access="isAuthenticated()">
	<jsp:include page="../Components/nav-bar.jsp">
		<jsp:param value="Contact Us" name="HTMLtitle" />
	</jsp:include>
</sec:authorize>

<div class="page-divider"></div>

<main>

	<div class="width-limiter justify-center" style="margin-top: 3rem;">
		<div class="pub-card">
			<h3 class="pub-heading">Contact Us</h3>
			<img src="graphics/contact-us.svg" alt="svg">
			<div id="contactContainer" class="justify-evenly flex-wrap">
				<div class="contact-card">
					<h4 class="pub-subheading">Email</h4>
					<p class="pub-paragraph">aceadora@gmail.com</p>
				</div>
				<div class="contact-card">
					<h4 class="pub-subheading">Telephone</h4>
					<p class="pub-paragraph">03111111112</p>
				</div>
				<div class="contact-card">
					<h4 class="pub-subheading">Address</h4>
					<p class="pub-paragraph">Surabaya, Indonesia</p>
				</div>
				<br />

				<iframe
					src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d126646.25766546058!2d112.63028099130423!3d-7.275441715926772!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2dd7fbf8381ac47f%3A0x3027a76e352be40!2sSurabaya%2C%20East%20Java!5e0!3m2!1sen!2sid!4v1712498056856!5m2!1sen!2sid"
					width="500" height="350"
					style="border-radius: 20px; margin-top: 40px; border-color: limegreen;"
					allowfullscreen="" loading="lazy"
					referrerpolicy="no-referrer-when-downgrade"></iframe>
			</div>
		</div>
	</div>

</main>

<jsp:include page="../Components/footer.jsp"></jsp:include>