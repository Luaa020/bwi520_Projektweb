<%@page import="de.hwg_lu.bw.beans.GetCodeAlsHtml"%>
<%@page import="de.hwg_lu.bw.beans.ReservationBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="ISO-8859-1">
<title>Kmer-Delices</title>

<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<link rel="stylesheet" type="text/css" href="../css/Acceuil.css">


</head>

      
    
   
</head>
<body class="bg">
	

<jsp:useBean id="rbean" class="de.hwg_lu.bw.beans.ReservationBean" scope="session"></jsp:useBean>
<jsp:useBean id="CodeAShtml" class="de.hwg_lu.bw.beans.GetCodeAlsHtml" scope="session"/>


	<header>
		<a href="Acceuil.jsp" class="logo"><img class="logoimg"
			src="../img/logo.png"><span>K</span>mer-<span>D</span>elices</a>

		<ul class="navbar">
		
			<li><a href="../jsp/Acceuil.jsp">Startseite</a></li>
			
			<li><a href="../html/speisekarte.jsp">Speisekarte</a></li>

			<li><a href="../html/aboutus.jsp">&uuml;ber uns</a></li>
			
			<!-- 	<!-- a la place de login/Logout-->



			<li><a href="../jsp/enregistrement.jsp"><jsp:getProperty property="login" name="CodeAShtml"/></a></li>

			<a href="../jsp/reserFormView.jsp" class="btn-reserve">Reservieren</a>
		</ul>
	</header>


	<h2 class="h2acc">Ein kulinarisches Abenteuer.</h2>
	<br>
	<br>
	<br>
	<p class="pacc">entdencken Sie etwas anders mit kamerunischem Essen.</p>
	<main>
	
	
	
	<div class="d1"></div>

<div class="conteneur">
  <div class="d2"></div>
</div>
	
	</main>


	<!--


<jsp:getProperty property="footerAsHtml" name="CodeAShtml"/>
-->

	<footer class="footer" style="bottom: 0;">


		<div class="footer-container">

			<div class="footer-hours">

				<h3>oeffnungzeiten</h3>

				<p>Dienstag-Sonntag</p>

				<p>14:00 bis 22:00</p>

				<p>Montag (geschlossen)</p>

			</div>

			<div class="footer-contact">

				<h3>Kontakt</h3>

				<p>Telephone : 0176 23 45 67 89</p>

				<p>Email : KmerDelices@gmail.com</p>
			</div>

			<div class="footer-address">
				<h3>Anschrift</h3>
				<p>C2,16-18</p>
				<p>Mannheim</p>

				<p>Kmer-Delices</p>
			</div>
		</div>

	</footer>






</body>
</html>

