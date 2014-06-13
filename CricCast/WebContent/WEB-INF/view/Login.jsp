<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <title></title>
    <meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <link rel="stylesheet" href="css/reset.css" type="text/css" media="screen">
    <link rel="stylesheet" href="css/style.css" type="text/css" media="screen"> 
	<link rel="stylesheet" href="css/zerogrid.css" type="text/css" media="screen">
	<link rel="stylesheet" href="css/responsive.css" type="text/css" media="screen"> 
	
	<!--[if lt IE 7]>
    <div style=' clear: both; text-align:center; position: relative;'>
        <a href="http://windows.microsoft.com/en-US/internet-explorer/products/ie/home?ocid=ie6_countdown_bannercode">
        	<img src="http://storage.ie6countdown.com/assets/100/images/banners/warning_bar_0000_us.jpg" border="0" height="42" width="820" alt="You are using an outdated browser. For a faster, safer browsing experience, upgrade for free today." />
        </a>
    </div>
	<![endif]-->
    <!--[if lt IE 9]>
   		<script type="text/javascript" src="js/html5.js"></script>
        <link rel="stylesheet" href="css/ie.css" type="text/css" media="screen">
	<![endif]-->
</head>
<body id="page1">
	<div class="extra">
    	<!--==============================header=================================-->
        <header>
        	<div class="row-top">
            	<div class="main">
                	<div class="wrapper">
                    	<h1><a href="index.html">CricCast</a></h1>
                        <form id="search-form" method="post" enctype="multipart/form-data">
                        <fieldset>	
                            <div class="search-field">
                                <input name="search" type="text" value="Search..." onBlur="if(this.value=='') this.value='Search...'" onFocus="if(this.value =='Search...' ) this.value=''" />
                                <a class="search-button" href="#" onClick="document.getElementById('search-form').submit()"></a>	
                            </div>						
                        </fieldset>
                    </form>
                    </div>
                </div>
            </div>
            <div class="menu-row">
            	<div class="menu-bg">
                    <div class="main">
                        <nav class="indent-left">
                            <ul class="menu wrapper">
                                <li class="active"><a href="index.html">Home</a></li>
                                <li><a href="team.html">Team</a></li>
                                <li><a href="score.html">Scores</a></li>
                                <li><a href="match.html">Matches</a></li>
                                <li><a href="contact.html">Contact Us</a></li>
                                <li><a href="login.html">Login</a></li>
                            </ul>
                        </nav>
                    </div>
                </div>
            </div>
            <div></div>
        </header>
        
        <!--==============================content================================-->
        <section id="content"><div class="ic">More Website Templates @ TemplateMonster.com. December10, 2011!</div>
            <div class="content-bg">
                <div class="main">
                  
                            	<h3 style=" margin-right:20px;">Login</h3>
                                <form id="contact-form2" method="post" enctype="multipart/form-data">                    
                                  
                                          <label><span  class="text-form">User Name:</span><input   name="p1" type="text" /></label>
                                          <label><span  class="text-form">Password:</span><input   name="p2" type="text" /></label>                              
                                       
                                          
                                                    <a href="login"><input type="button" value="Login"></a>
                                                   
                                                
                                           
                                                </div> 
                                            </div>
                                          </div>                            
                                   			
                                </form>
								</div>
                          
                                           
                        </div>
                    </div>
                </div>
                <div class="block"></div>
            </div>
        </section>
  
    </div>
	
	<!--==============================footer=================================  <footer></footer>-->
  
	
</body>
</html>
