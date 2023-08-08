<%@page import="de.hwg_lu.bw.beans.GetCodeAlsHtml"%>
<%@page import="de.hwg_lu.bw.beans.ReservationBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <title>Confirmation de réservation</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="../css/Acceuil.css">
  <link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;700&display=swap" rel="stylesheet">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</head>
<style>
body {
    background-color: #f8f9fa;
    font-family: Arial, sans-serif;
}


     .container{
     background-color:AliceBlue ; 
     display: block;
     max-width :45%;
     
     padding: 30px;
   
     margin-top:15px;
    
     color: black;
      
     }

h1 {
    margin-top: 0;
}

.btn {
    margin-top: 20px;
   
   
}
.bton1s{
display:flex;
 justify-content:space-between; 
}
table {
    margin-top: 20px;
}

table td:first-child {
    font-weight: bold;
}

</style>
<body>
<jsp:useBean id="rbean" class="de.hwg_lu.bw.beans.ReservationBean" scope="session"></jsp:useBean>
<jsp:useBean id="CodeAShtml" class="de.hwg_lu.bw.beans.GetCodeAlsHtml" scope="session"/>

<jsp:getProperty property="headerAsHtml" name="CodeAShtml"/>
    <div class="container">
    <h1>Confirmation de réservation</h1>
    <p>Merci pour votre réservation, voici les détails :</p>
    <table class="table">
        <tbody>
            <tr>
                <td>Numero de reservation :</td>
                <td><jsp:getProperty property="zaehler" name="rbean"/> </td>
            </tr>
            <tr>
                <td>Nom :</td>
                <td><jsp:getProperty property="name" name="rbean"/> </td>
            </tr>
            <tr>
                <td>Adresse Mail :</td>
                <td><jsp:getProperty property="mail" name="rbean"/> </td>
            </tr>
            <tr>
                <td>Date :</td>
                <td><jsp:getProperty property="date" name="rbean"/> </td>
            </tr>
            <tr>
                <td>Heure :</td>
                <td><jsp:getProperty property="heur" name="rbean"/> </td>
            </tr>
            <tr>
                <td>Nombre de personnes :</td>
                <td><jsp:getProperty property="nb_personne" name="rbean"/> </td>
            </tr>
            <tr>
                <td>Message au restaurateur :</td>
                <td><jsp:getProperty property="message" name="rbean"/> </td>
            </tr>
            
        </tbody>
    </table>
    <div class="btons">
    <form action="../jsp/reservationAppl.jsp" method="get">
      <button type="submit" class="btn btn-success" name="confirmation" value="Confirmer">Confirmer</button>
       <a href="reservationAppl.jsp?modification=Modifier&idModif=<jsp:getProperty property="zaehler" name="rbean"/>" class="btn btn-sm btn-warning">Modifier</a>
      <a class="btn btn-danger" href="reservationAppl.jsp?annullation=Annuller&idAnnul=<jsp:getProperty property="zaehler" name="rbean"/>" >Annuller</a>
      </form>
</div>
    </div>
    
    
    <jsp:getProperty property="footerAsHtml" name="CodeAShtml"/>
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
<script >

$(document).ready(function() {
    // Fonction de confirmation pour l'annulation de la réservation
    $(".btn-danger").click(function(event) {
        event.preventDefault();
        Swal.fire({
            title: 'Êtes-vous sûr?',
            text: "La réservation sera annulée définitivement!",
            icon: 'warning',
            showCancelButton: true,
            confirmButtonColor: '#d33',
            cancelButtonColor: '#3085d6',
            confirmButtonText: 'Oui, annuler!'
        }).then((result) => {
            if (result.isConfirmed) {
                window.location.href = $(this).attr("href");
            }
        });
    });
});


</script>
</body>
</html>