<%-- 
    Document   : index
    Created on : 3 janv. 2018, 23:28:04
    Author     : tran
--%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="entite.Produit"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>page acceuil</title>
	<script type="text/javascript" src="js/jquery-2.0.2.min.js"></script>
	<link href="css/style.css" rel="stylesheet" type="text/css">
    </head>
    <body>
    <div id= "header-wrap">
        <div id="header">
            <div id ="nav">
                <ul>
                    <li><a href="#">ACCUEIL</a></li>
                    <li><a href="#">OFFRES</a></li>
                    <li><a href="#">SE CONNECTER</a></li>
                    <li><a href="#">CONTACT</a></li>
                </ul>
            </div>
        </div>
    </div>
        <div class="main">
            <div id="header-main">
                <div>
                <ul>
                    <li>
                    <input type ="text" maxlength="500" id="txt-search" name="q" class="" placeholder="Que recherchez-vous ?"/>
                    <select>
                        <optgroup label="Marque France">
                            <option value="renault">Renault</option>
                            <option value="citroen">Citroen</option>
                            <option value="peugeot">Peugeot</option>
                        </optgroup>
                        <optgroup label="Marque Allemagne">
                                <option value="bmw">BMW</option>
                                <option value="mercedes">Mercedes</option>
                                <option value="audi">Audi</option>
                        </optgroup>
                    </select>
                    <input type ="text" id="text-search" name="location_p" class="null" placeholder="Ville ou code postal" >
                    <input type ="submit" id="btn-search" name="rechercher" value="rechercher"/>
                    </li>
                </ul>
            </div>
            </div><!-- end header nav-->
            <div id="container">
                <div id="main-content">
                    <div>
                        <%
                            if(request.getAttribute("listpdt") != null){
                                List nomList = (List)session.getAttribute("listpdt");
                            }
                         
                         %>
                        
                         <c:forEach items="${nomList}" var="p">
                             <c:choose>
                             <li>
                                  
                                 <c:out value="${p.marque}"/>
                             </li>
                             </c:choose>
                         </c:forEach>
                    </div>
 		<span class="posts-list-title">Annonces</span>
 		<div class="post">
 			<div class="post-thumb">
 				<a href="#"><img src="images/post1.jpg"></a>
 			</div>
 			<div class="post-info">
 				<h1 class="post-title"><a href="#">What is lorem ipsum?</a></h1>
 				<ul>
 					<li><span>June 5, 2015 8:54 am</span></li>
 					<li><span>12 Comments</span></li>
 				</ul>
 				<p class="post-desc">
 					Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries [...]
 				</p>
 			</div>
 		</div><!--end .post-->

 		<div class="post">
 			<div class="post-thumb">
 				<a href="#"><img src="images/post2.jpg"></a>
 			</div>
 			<div class="post-info">
 				<h1 class="post-title"><a href="#">What is lorem ipsum?</a></h1>
 				<ul>
 					<li><span>June 5, 2015 8:54 am</span></li>
 					<li><span>12 Comments</span></li>
 				</ul>
 				<p class="post-desc">
 					Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries [...]
 				</p>
 			</div>
 		</div><!--end .post-->

 		<div class="post">
 			<div class="post-thumb">
 				<a href="#"><img src="images/post3.jpg"></a>
 			</div>
 			<div class="post-info">
 				<h1 class="post-title"><a href="#">What is lorem ipsum?</a></h1>
 				<ul>
 					<li><span>June 5, 2015 8:54 am</span></li>
 					<li><span>12 Comments</span></li>
 				</ul>
 				<p class="post-desc">
 					It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here' [...]
 				</p>
 			</div>
 		</div><!--end .post-->

 		<div class="post">
 			<div class="post-thumb">
 				<a href="#"><img src="images/post4.jpg"></a>
 			</div>
 			<div class="post-info">
 				<h1 class="post-title"><a href="#">What is lorem ipsum?</a></h1>
 				<ul>
 					<li><span>June 5, 2015 8:54 am</span></li>
 					<li><span>12 Comments</span></li>
 				</ul>
 				<p class="post-desc">
 					Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries [...]
 				</p>
 			</div>
 		</div><!--end .post-->

 		<div class="post">
 			<div class="post-thumb">
 				<a href="#"><img src="images/post5.jpg"></a>
 			</div>
 			<div class="post-info">
 				<h1 class="post-title"><a href="#">What is lorem ipsum?</a></h1>
 				<ul>
 					<li><span>June 5, 2015 8:54 am</span></li>
 					<li><span>12 Comments</span></li>
 				</ul>
 				<p class="post-desc">
 					Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of [...]
 				</p>
 			</div>
 		</div><!--end .post-->

 		<div class="post">
 			<div class="post-thumb">
 				<a href="#"><img src="images/post6.jpg"></a>
 			</div>
 			<div class="post-info">
 				<h1 class="post-title"><a href="#">What is lorem ipsum?</a></h1>
 				<ul>
 					<li><span>June 5, 2015 8:54 am</span></li>
 					<li><span>12 Comments</span></li>
 				</ul>
 				<p class="post-desc">
 					There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum [...]
 				</p>
 			</div>
 		</div><!--end .post-->
                 <div id="pagination">
 			<ul>
 				<li><a href="#"><<</a></li>
 				<li><a href="#">1</a></li>
 				<li><span id="current-page">2</span></li>
 				<li><a href="#">3</a></li>
 				<li><a href="#">4</a></li>
 				<li><a href="#">5</a></li>
 				<li><a href="#">>></a></li>
 			</ul>
 		</div>
                    

 		
 	</div><!--end #main-content-->

 	<div id="sidebar">
                <div class="sidebar-block" id="fb-block">
 			<div class="sidebar-block-title">
 				<span>Connecter Facebook</span>
 			</div>
 			<div class="sidebar-block-content">
 				

 			</div>
 		</div>

 		<div class="sidebar-block">
 			<div class="sidebar-block-title">
 				<span>Categories</span>
 			</div>
 			<div class="sidebar-block-content">
 				<ul>
 					<li><a href="#">Java</a></li>
 					<li><a href="#">Hibernate</a></li>
 					<li><a href="#">Spring</a></li>
 					<li><a href="#">Strust</a></li>
 					<li><a href="#">HTML/CSS</a></li>
 					<li><a href="#">JavaScript/JQuery</a></li>
 				</ul>
 			</div>
 		</div>

 		<div class="sidebar-block" id="other-post">
 			<div class="sidebar-block-title">
 				<span>Interesser</span>
 			</div>
 			<div class="sidebar-block-content">
 				<div class="other-post-item">
 					<div class="other-post-img">
 						<a href="#"><img src="images/post1.jpg"></a>
 					</div>
 					<div class="other-post-info">
 						<a href="#">What is lorem ipsum</a>
 						<p>There are many variations of passages of...</p>
 					</div>
 				</div>

 				<div class="other-post-item">
 					<div class="other-post-img">
 						<a href="#"><img src="images/post2.jpg"></a>
 					</div>
 					<div class="other-post-info">
 						<a href="#">What is lorem ipsum</a>
 						<p>There are many variations of passages of...</p>
 					</div>
 				</div>

 				<div class="other-post-item">
 					<div class="other-post-img">
 						<a href="#"><img src="images/post3.jpg"></a>
 					</div>
 					<div class="other-post-info">
 						<a href="#">What is lorem ipsum</a>
 						<p>There are many variations of passages of...</p>
 					</div>
 				</div>

 				<div class="other-post-item">
 					<div class="other-post-img">
 						<a href="#"><img src="images/post4.jpg"></a>
 					</div>
 					<div class="other-post-info">
 						<a href="#">What is lorem ipsum</a>
 						<p>There are many variations of passages of...</p>
 					</div>
 				</div>

 				<div class="other-post-item">
 					<div class="other-post-img">
 						<a href="#"><img src="images/post5.jpg"></a>
 					</div>
 					<div class="other-post-info">
 						<a href="#">What is lorem ipsum</a>
 						<p>There are many variations of passages of...</p>
 					</div>
 				</div>
 			</div>
 		</div>
 	</div><!--end #sidebar-->
 </div><!--end #container-->
            
               
 </div>
        
        
       <div id="footer">
                <h2>Design by: <a href="http://vente-auto.fr/">vente-auto.fr</a></h2>
       </div><!--end #footer-->
           
    </body>
</html>
