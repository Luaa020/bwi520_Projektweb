<%@page import="de.hwg_lu.bw.beans.GetCodeAlsHtml"%>
<%@page import="de.hwg_lu.bw.beans.ReservationBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Recherche de réservation</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="../css/Acceuil.css">
  <link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;700&display=swap" rel="stylesheet">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    
    <style type="text/css">
     .container{
     background-color:AliceBlue ; 
     display: block;
     max-width :65%;
     
     padding: 30px;
     margin-top: 20Px;
     color: black;
      
     }
     
     .textarea {
     width: 100%;
     height: 1000px;
  
     resize: vertical;
}
    </style>
</head>
<body>
<jsp:useBean id="rbean" class="de.hwg_lu.bw.beans.ReservationBean" scope="session"></jsp:useBean>
<jsp:useBean id="CodeAShtml" class="de.hwg_lu.bw.beans.GetCodeAlsHtml" scope="session"/>
<jsp:getProperty property="headerAsHtml" name="CodeAShtml"/>
    <div class="container">
        <h1>Recherche de réservation</h1>
        <p><b>Attention! </b>Remplissez minimum deux champs</p>
        <form method="post" action="../jsp/reservationAppl.jsp">
            <div class="form-group">
                <label for="id">ID :</label>
                <input type="text" name="id" id="id" class="form-control" placeholder="Entrez l'ID de la réservation" required="required">
            </div>
            <div class="form-group">
                <label for="nom">Nom :</label>
                <input type="text" name="nom" id="nom" class="form-control" placeholder="Entrez le nom du client">
            </div>
            <div class="form-group">
                <label for="email">Adresse e-mail :</label>
                <input type="email" name="email" id="email" class="form-control" placeholder="Entrez l'adresse e-mail du client">
            </div>
            <button type="submit" class="btn btn-primary" name="recherche" value="Recherche">Rechercher</button>
        </form>
        <hr>
        
       
            <h2>Résultats de la recherche</h2>
            <table class="table">
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>Nom du client</th>
                        <th>Date</th>
                        <th>Heure</th>
                        <th>Nombre de personnes</th>
                        <th>Demandes particulières</th>
                        <th>Action</th>
                    </tr>
                </thead>
                <tbody>
                    
                    
                    <!--  resultat de la recherche-->
             <jsp:getProperty property="resultset" name="rbean"/>       
                  
                
                
            </tbody>
        </table>
   
     <p style="color: red; font-size: 22px;">  <jsp:getProperty property="resultNotFound" name="rbean"/></p>       
        
</div>
<jsp:getProperty property="footerAsHtml" name="CodeAShtml"/>
<!-- Chargement des fichiers JavaScript -->
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
                                
