<%@page import="java.util.List"%>
<%@page import="com.javawebtutor.service.LoginService"%>
<%@page import="java.util.Date"%>
<%@page import="com.javawebtutor.model.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<!--[if IE 7]>    <html class="no-js lt-ie9 lt-ie8" lang="en"> <![endif]-->
<!--[if IE 8]>    <html class="no-js lt-ie9" lang="en"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js" lang="en"> <!--<![endif]-->
<head>
    <meta charset="utf-8">
    <title>Welcome to | FootballClubDoodhwa</title>    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="//static.vsco.co/bower/28854e/modernizr/modernizr.js"></script>
    <script src="//static.vsco.co/js/28854e/thirdparty/lazy-retina.min.js"></script>
    <link rel="stylesheet" media="all" href="//static.vsco.co/css/28854e/style.css">
    <link rel="stylesheet" media="all" href="css/style.css">
    <link rel="shortcut icon" href="images/favicon.ico">
    <link rel="apple-touch-icon-precomposed" href="//assets.vsco.co/assets/images/favicon-152.png">
    <meta name="msapplication-TileColor" content="#999999">
    <meta name="msapplication-TileImage" content="//assets.vsco.co/assets/images/favicon-152.png">
    <meta name="google-site-verification" content="gfZiQeApsecy0dJHAojvcrAaU_XBO6CMGHc9rZG2sSs" />
    <link rel="stylesheet" media="all" href="//static.vsco.co/css/28854e/account/style.css">
	<script>window.VSCOVARS = window.VSCOVARS || {}; VSCOVARS.Domain = "vsco.co"; VSCOVARS.Static = "static.vsco.co"; VSCOVARS.RIS = "i.vsco.co";</script>
	<script src='//static.vsco.co/js/28854e/corp-dist/build/corp-config.js'></script>
	<script src='//static.vsco.co/js/28854e/corp-dist/build/corp-base.js'></script>
	<script src='//static.vsco.co/js/28854e/corp-dist/build/pages/account.js'></script>
	<script defer>require(['pages/account']);</script>
       <script>
function emptyCellsOnly(row) {
  var cells =  row.cells;
  for(var j = 0; j < cells.length; j++) {
    if(cells[j].innerHTML !== '') {
      return false;
    }
  }
  return true;
}
var rows = document.getElementsById('empt');
for(var i = 0; i < rows.length; i++) {
  if(emptyCellsOnly(rows[i])) {
    rows[i].style.display = 'none';
  }
}
</script>
</head>
<body class="user-account user-signin">
<!-- Google Tag Manager -->
            <noscript><iframe src='//www.googletagmanager.com/ns.html?id=GTM-WMVBHV'
            height='0' width='0' style='display:none;visibility:hidden'></iframe></noscript>
           <script>(function(w,d,s,l,i){w[l]=w[l]||[];w[l].push(
            {
               
               'gtm.start': new Date.getTimezoneOffset(),event:'gtm.js'}
            );var f=d.getElementsByTagName(s)[0],
            j=d.createElement(s),dl=l!='dataLayer'?'&l='+l:'';j.async=true;j.src=
            '//www.googletagmanager.com/gtm.js?id='+i+dl;f.parentNode.insertBefore(j,f);
            })(window,document,'script','dataLayer','GTM-WMVBHV');</script>
            <!-- End Google Tag Manager --><div class="pageWrapper">
<section id="veggieburger-content" class="veggieburger-content clearfix">

  

    <div class="veggieburger-account">
       
    </div>

    <ul class="veggieburger-main-nav">
       <li> </li>
	  <li> </li>
	  <li> </li>
	  <li> </li>
    </ul>

    <nav class="veggieburger-secondary-nav mt20">
        <ul>
             <li> </li>
	  <li> </li>
	  <li> </li>
	  <li> </li>
        </ul>
        <ul>
             <li> </li>
	  <li> </li>
	  <li> </li>
	  <li> </li>
        </ul>
    </nav>
</section>


<main id="pageBounds" class="pageBounds " role="main">

<div id="loginpage" class="loginpage">
<div class="sign-in-box container_12">
    
    <div class="message-bar ta-center">
        <div id="errorBar" class="messageBar error"></div>        <div id="infoBar" class="messageBar info"></div>    </div>
   <p>
        <img src="images/logocreate.png" width="160" height="160"/>
   </p>
   
    <div class="message-bar ta-center">
        <div id="errorBar" class="messageBar error"></div>        <div id="infoBar" class="messageBar info"></div>    </div>
 
	<p>
	<p style="color:#6495ED"> <%=new Date()%></br> </p>
			 <%
				 User user = (User) session.getAttribute("user");
			 %>		
		
		<p style="color:#6495ED"><b>Welcome <%= user.getFirstName() + " " + user.getLastName()%></b><br>
		 to <br>Football Club&nbsp;Doodhwa.</p>
			 <br/>	 
			 
	<p>
            
    <div class="message-bar ta-center">
        <div id="errorBar" class="messageBar error"></div>        <div id="infoBar" class="messageBar info"></div>    </div>
	
		<a style="color:#67736f" href="resetpass.jsp" class="left accountLink link">Reset Password </a><br/>
		<a style="color:#67736f" href="logout.jsp" class="left accountLink link">Sign Out</a><br/>
		
                <p>
	<div class="message-bar ta-center">
        <div id="errorBar" class="messageBar error"></div>        <div id="infoBar" class="messageBar info"></div>    </div>
		
	 <p style="color:#6495ED">List of Registered candidates <br>with football club&nbsp;doodhwa.</p></br>

    <div class="loginBox">
        	 <table style="empty-cells: hide">
			 <thead>
				 <tr style="color:#6495ED">
					 <th>User ID</th>
					 <th>First Name</th>
					 <th>Middle Name</th>
					 <th>Last Name</th>
					 <th>email</th>					
				 </tr>
			 </thead>
			 <tbody>
				 <%
					 LoginService loginService = new LoginService();
					 List<User> list = loginService.getListOfUsers();
					 for (User u : list) {
				 %>
				 <tr style="color:#82E0AA">
					 <td><%=u.getUserId()%></td>
					 <td><%=u.getFirstName()%></td>
					 <td><%=u.getMiddleName()%></td>
					 <td><%=u.getLastName()%></td>
					 <td><%=u.getEmail()%></td>
				 </tr>
				 <%}%>
			 <tbody>
		 </table>		
		 <br/>
    </div>
                          <div class="message-bar ta-center">
        <div id="errorBar" class="messageBar error"></div>        <div id="infoBar" class="messageBar info"></div>    </div>
                         
                        <marquee direction="right"> <a href="admin.jsp" class="left accountLink link"> <p style="color:#67736f">Admin Access for upload event details.</p></a></marquee><br/>
                         
                          <div class="message-bar ta-center">
        <div id="errorBar" class="messageBar error"></div>        <div id="infoBar" class="messageBar info"></div>    </div>
        
                          <p style="color:#6495ED">Upcoming events details <br>at football club&nbsp;doodhwa.</p></br>

    <div class="loginBox">
        	 <table style="empty-cells: hide">
			 <thead>
				 <tr style="color:#6495ED">
                                     
                                          <th>Event Name</th>    							
                                         <th>Event Date</th>
					 <th>Upcoming Events</th>
						
				 </tr>
			 </thead>
			 <tbody>
                              <%
					
					 for (User u : list) {
				 %>
				
				 <tr id="empt" style="color:#82E0AA">
                                         <td><%=u.getEventName()%></td>
                                       <td><%=u.getEventDate()%></td>
                                      <td><a href="<%=u.getUpcomingEvents()%>"><p style="color:#82E0AA"><%=u.getUpcomingEvents()%></p></a></td>
					
				 </tr>
				 <%}%>
			 <tbody>
		 </table>		
		 <br/>
    </div>
	 <div class="message-bar ta-center">
        <div id="errorBar" class="messageBar error"></div>        <div id="infoBar" class="messageBar info"></div>    </div>
</div>

<div id="consentContainer" class="consent-container" style="display: none;">
    <div class="consent mx-auto">
    <div class="mb50">
       
        <p class="consent-intro ta-left"></p>
    </div>

   
</div>
</div>

</div> <!-- /container loginpage--> 

</main>

	<script async src='https://cantorlytics.vsco.co'>
        </script>
	<script>
            (function(i,s,o,g,r,a,m){ i['GoogleAnalyticsObject']=r; i[r]=i[r] || function(){
                (i[r].q=i[r].q||[]).push(arguments)}, i[r].l=1*new Date();
                a=s.createElement(o),
                m=s.getElementsByTagName(o)[0];
                a.async=1;
                a.src=g;
                m.parentNode.insertBefore(a,m)
            })(window,document,'script','//www.google-analytics.com/analytics.js','ga');

            ga('create', 'UA-23285656-1', 'auto');
            ga('send', 'pageview');
            </script>
	<script>
            !function(f,b,e,v,n,t,s){if(f.fbq)return;n=f.fbq=function()
            {n.callMethod? n.callMethod.apply(n,arguments):n.queue.push(arguments)}
            ;if(!f._fbq)f._fbq=n;
            n.push=n;n.loaded=!0;n.version='2.0';n.queue=[];t=b.createElement(e);t.async=!0;
            t.src=v;s=b.getElementsByTagName(e)[0];s.parentNode.insertBefore(t,s)}(window,
            document,'script','//connect.facebook.net/en_US/fbevents.js');

            fbq('init', '405259746325035');
            fbq('track', 'PageView');
            </script>
            <noscript><img height="1" width="1" style="display:none"
            src="https://www.facebook.com/tr?id=405259746325035&ev=PageView&noscript=1"
            /></noscript>
</div>
</body></html>