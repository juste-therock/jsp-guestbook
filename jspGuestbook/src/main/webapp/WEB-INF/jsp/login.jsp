<%-- <%@ page import="java.util.*"%> --%>
<%@ include file="header.jsp"%>
<body>
	<script>
  window.fbAsyncInit = function() {
    FB.init({
      appId      : '1006937109382101',
      status     : true,
      xfbml      : true,
      version    : 'v2.6'
    });
  };

  (function(d, s, id){
     var js, fjs = d.getElementsByTagName(s)[0];
     if (d.getElementById(id)) {return;}
     js = d.createElement(s); js.id = id;
     js.src = "//connect.facebook.net/en_US/sdk/debug.js";
     fjs.parentNode.insertBefore(js, fjs);
   }(document, 'script', 'facebook-jssdk'));
  
//This is called with the results from from FB.getLoginStatus().
  function statusChangeCallback(response) {
    console.log('statusChangeCallback');
    console.log(response);
    // The response object is returned with a status field that lets the
    // app know the current login status of the person.
    // Full docs on the response object can be found in the documentation
    // for FB.getLoginStatus().
    if (response.status === 'connected') {
      // Logged into your app and Facebook.
      testAPI();
    } else if (response.status === 'not_authorized') {
      // The person is logged into Facebook, but not your app.
      document.getElementById('status').innerHTML = 'Please log ' +
        'into this app.';
    } else {
      // The person is not logged into Facebook, so we're not sure if
      // they are logged into this app or not.
      document.getElementById('status').innerHTML = 'Please log ' +
        'into Facebook.';
    }
  }

  // This function is called when someone finishes with the Login
  // Button.  See the onlogin handler attached to it in the sample
  // code below.
  function checkLoginState() {
    FB.getLoginStatus(function(response) {
      statusChangeCallback(response);
    });
  }
//Here we run a very simple test of the Graph API after login is
  // successful.  See statusChangeCallback() for when this call is made.
  function testAPI() {
    console.log('Welcome!  Fetching your information.... ');
    FB.api('/me', function(response) {
      console.log('Successful login for: ' + response.name);
      document.getElementById('status').innerHTML =
        'Thanks for logging in, ' + response.name + '!';
    });
  }
</script>

	<div class="wrapper">
		<header>
			<%@ include file="banner.jsp"%>
		</header>
		 <h4>User Login:</h4>
		<c:url var="url" value="/login" />
		<form:form action="${pageContext.servletContext.contextPath}/login"
			method="get" modelAttribute="loginModel" name="loginForm">
			<form:hidden path="id" />
			<table>
				<tr>
					<td>User Name:</td>
					<td><form:input path="userName" type="text"
									required="required" /></td>
							<form:errors path="userName" />
				</tr>
				<tr>
					<td>Password:</td>
					<td><form:input path="password" type="password"
									required="required" /></td>
							<form:errors path="password" />
				</tr>
				<tr>
					<td colspan="2" align="right"><input type="submit"
						value="Submit"></td>
				</tr>
			</table>
			<div style="color: red">${error}</div>
		</form:form>
 	<br />
 	<div
  class="fb-like"
  data-share="true"
  data-width="450"
  data-show-faces="true">
</div>
<!--
  Below we include the Login Button social plugin. This button uses
  the JavaScript SDK to present a graphical Login button that triggers
  the FB.login() function when clicked.
-->
 <h4>Or Login with your facebook account</h4>
<fb:login-button scope="public_profile,email" onlogin="checkLoginState();">
</fb:login-button>

<div id="status">
</div>

 	<section>
			<br />
		</section>
		<%@ include file="footer.jsp"%></div>