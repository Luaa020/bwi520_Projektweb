
<%@page import="de.hwg_lu.bw.beans.GetCodeAlsHtml"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>

<html>
<meta charset="ISO-8859-1">
<title>Kmer-Delices</title>

<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css" href="../css/Speisekarte.css">
<link rel="stylesheet" type="text/css" href="../css/Acceuil.css">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link  href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;700&display=swap"
	rel="stylesheet">	
	

</head>

<body class="bg">
<jsp:useBean id="rbean" class="de.hwg_lu.bw.beans.ReservationBean" scope="session"></jsp:useBean>
<jsp:useBean id="CodeAShtml" class="de.hwg_lu.bw.beans.GetCodeAlsHtml" scope="session"/>

<jsp:getProperty   name="CodeAShtml" property="headerAsHtml"/>
	
	<h1>Speisekarte</h1>

	<section class="menu">

		<div class="menu-item">
		<a href="../jsp/Acceuil.jsp">
			<img src="../img/dg.jpg">
			<h2>Hauptmen&uuml</h2>
			</a>
		</div>
		
		
		<div class="menu-item">
		<a href="menu.jsp">
			<img src="../img/poisson.jpg">
			<h2>Gegrillte Hauptspeise</h2>
			</a>
		</div>
		
		
		<div class="menu-item">
		<a href="menu.jsp">
			<img src="../img/Hamburger.jpg">
			<h2>schnell Men&uuml</h2>
			</a>
		</div>
		
		<div class="menu-item">
		<a href="menu.jsp">
			<img src="../img/beignets.jpg">
			<h2>Beilagen</h2></a>
		</div>
		
		<div class="menu-item">
		<a href="menu.jsp">
			<img src="../img/salat.jpg">
			<h2>Salat</h2>
			</a>
		</div>
		<div class="menu-item">
		<a href="menu.jsp">
			<img src="../img/cocktails.jpg">
			<h2>Getr&aumlnke</h2>
			</a>
		</div>

	</section>



<jsp:getProperty property="footerAsHtml" name="codeAShtml"/>
</body>
</html>
