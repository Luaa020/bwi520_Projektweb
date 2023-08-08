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



<meta charset="ISO-8859-1">
  <title>Salat-Gerichte</title>
  
  <!-- faire le fichier css externe pour toute les autres pages .
   ca c est un css individiuel donc le nom peut etre salade&grill.css -->
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f4;
        }

        .container {
            max-width: 1500px;
            margin: auto;
            padding: 20px;
        }

        .dish {
            background-color: #fff;
            border-radius: 5px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
            padding: 20px;
            margin-bottom: 20px;
            display: flex;
            align-items: center;
        }

        .dish img {
            width: 250px;
            height: 250px;
            margin-right: 20px;
            border-radius: 5px;
        }

        .dish-info {
            flex: 1;
        }

        .dish-name {
            font-size: 24px;
            margin-bottom: 10px;
        }

        .dish-ingredients {
            margin-bottom: 10px;
        }

        .dish-price {
            font-size: 18px;
            color: #e74c3c;
        }
         .dish-list {
            display: grid;
            grid-template-columns: repeat(2, 1fr);
            grid-gap: 20px;
        }
    </style>
</head>
<body>

<jsp:useBean id="rbean" class="de.hwg_lu.bw.beans.ReservationBean" scope="session"></jsp:useBean>
<jsp:useBean id="CodeAShtml" class="de.hwg_lu.bw.beans.GetCodeAlsHtml" scope="session"/>

<jsp:getProperty property="headerAsHtml" name="CodeAShtml"/>
 <!-- Lien vers la page du menu -->
   <div class="container">
           <div class="dish-list">
            <div class="dish">
                <img src="../img/mouton brais�.jpg" alt="Steak">
                <div class="dish-info">
                    <h2 class="dish-name">Gegrilltes Steak</h2>
                    <p class="dish-ingredients">Hauptzutaten: Rindersteak, Gew�rze</p><br>
                    <p class="dish-price">Preis: &euro;15.99</p>
                </div>
            </div>
            <div class="dish">
                <img src="../img/poulet braise.jpeg" alt="H�hnchen">
                <div class="dish-info">
                    <h2 class="dish-name">Gegrilltes H�hnchen</h2>
                    <p class="dish-ingredients">Hauptzutaten: H�hnchenbrust, Marinade</p><br>
                    <p class="dish-price">Preis: &euro;12.99</p>
                </div>
            </div>
            <div class="dish">
                <img src="../img/poisson braise.jpg" alt="Steak">
                <div class="dish-info">
                    <h2 class="dish-name">Gegrilltes Steak</h2>
                    <p class="dish-ingredients">Hauptzutaten: Rindersteak, Gew�rze</p><br>
                    <p class="dish-price">Preis: &euro;15.99</p>
                </div>
            </div>
            <div class="dish">
                <img src="../img/menu2.jpg" alt="H�hnchen">
                <div class="dish-info">
                    <h2 class="dish-name">Gegrilltes Rindfleich: Filet mignon</h2>
                    <p class="dish-ingredients">Hauptzutaten: H�hnchenbrust, Marinade</p><br>
                    <p class="dish-price">Preis: &euro;12.99</p>
                </div>
            </div>
            <div class="dish">
                <img src="../img/porc braise.jpg" alt="Steak">
                <div class="dish-info">
                    <h2 class="dish-name">Gegrilltes Schwein</h2>
                    <p class="dish-ingredients">Hauptzutaten: SchweinenKotelleten, Gew�rze, Marinade</p><br>
                    <p class="dish-price">Preis: &euro;15.99</p>
                </div>
            </div>
            <div class="dish">
                <img src="../img/poisson.jpg" alt="H�hnchen">
                <div class="dish-info">
                    <h2 class="dish-name">Gegrilltes Fisch a la Camerounaise</h2>
                    <p class="dish-ingredients">Hauptzutaten: Fish, Marinade</p><br>
                    <p class="dish-price">Preis: &euro;12.99</p>
                </div>
            </div>
        <!-- Weitere Gerichte hier einf�gen -->
    </div>
    </div>
  
  <jsp:getProperty property="footerAsHtml" name="CodeAShtml"/>
</body>
</html>