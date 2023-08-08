<%@page import="de.hwg_lu.bw.beans.GetCodeAlsHtml"%>
<%@page import="de.hwg_lu.bw.beans.ReservationBean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>


<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" type="text/css" href="../css/Acceuil.css">
<style>
  body {
    font-family: Arial, sans-serif;
    background-color: #f4f4f4;
    margin: 0;
    padding: 0;
  }

  .menu-container {
    width: 80%;
    margin: auto;
    padding: 20px;
    background-color: #fff;
    border-radius: 5px;
    box-shadow: 0px 2px 5px rgba(0, 0, 0, 0.1);
  }

  .menu-item {
    display: flex;
    align-items: center;
    margin-bottom: 20px;
  }

  .menu-item img {
    width: 100px;
    height: 100px;
    object-fit: cover;
    border-radius: 5px;
    margin-right: 20px;
  }
</style>


<meta charset="ISO-8859-1">
<title>Salat</title>
</head>
<body>

<jsp:useBean id="rbean" class="de.hwg_lu.bw.beans.ReservationBean" scope="session"></jsp:useBean>
<jsp:useBean id="CodeAShtml" class="de.hwg_lu.bw.beans.GetCodeAlsHtml" scope="session"/>

<jsp:getProperty property="headerAsHtml" name="CodeAShtml"/>
 <!-- Lien vers la page du menu -->
    <a href="../html/speisekarte.jsp">salat</a>
<div class="menu-container">
    <div class="menu-item">
      <img src="../img/carotte salat.jpg" alt="carotte salat">
      <h2>carotte salat</h2>
    </div>
    <div class="menu-item">
      <img src="../img/Grilled lemon herb Mediterranean chicken Salad.jpg" alt="Grilled lemon herb Mediterranean chicken Salad">
      <h2>Grilled lemon herb Mediterranean chicken Salad</h2>
    </div>
    <div class="menu-item">
      <img src="../img/fresh Vegetables Greek Salad.jpeg" alt="fresh Vegetables Greek Salad">
      <h2>fresh Vegetables Greek Salad</h2>
    </div>
  </div>
  
  <jsp:getProperty property="footerAsHtml" name="CodeAShtml"/>
</body>
</html>