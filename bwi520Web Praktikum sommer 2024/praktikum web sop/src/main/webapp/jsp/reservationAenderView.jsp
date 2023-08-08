<%@page import="de.hwg_lu.bw.beans.GetCodeAlsHtml"%>
<%@page import="de.hwg_lu.bw.beans.ReservationBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <title>Réservation de restaurant</title>
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
     max-width :45%;
     
     padding: 30px;
     margin-top: 15Px;
     color: black;
      
     }
     
     .link{
     font-size: 25px;
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

    <div class="warp container">
        <h1>Modification de la Réservation</h1>
        <form action="../jsp/reservationAppl.jsp" method="post">
            <div class="form-group">
                <label for="nom">Numero de reservation :</label>
                <input type="text" class="form-control" id="nom" name="nom" value="<jsp:getProperty property="zaehler" name="rbean"/>" disabled="disabled" >
            </div>
            <div class="form-group">
                <label for="nom">Votre adresse E-mail :</label>
                <input type="email" class="form-control" id="mail" name="mail" value="<jsp:getProperty property="mail" name="rbean"/>" disabled="disabled">
            </div>
            <div class="form-group">
                <label for="date">Date :</label>
                <input type="text" class="form-control" id="date" name="date" value="<jsp:getProperty property="date" name="rbean"/> " >
            </div>
            <div class="form-group">
                <label for="heure">Heure :</label>
                <input type="text" class="form-control" id="heure" name="heure" value="<jsp:getProperty property="heur" name="rbean"/>" >
            </div>
            <div class="form-group">
                <label for="nb_personnes">Nombre de personnes :</label>
                <input type="text" class="form-control" id="nb_personnes" name="nb_personnes" min="1" max="20" value="<jsp:getProperty property="nb_personne" name="rbean"/>" >
            </div>
            <div class="form-group">
                <label for="Message">Message au restaurant :</label>
                <textarea class="textarea form-control " rows="6" name="msg" id="ph"  ><jsp:getProperty property="message" name="rbean"/> 
                </textarea>
            </div>
            <button type="submit" class="btn btn-primary" name="Interompre" value="Interompre">Interompre</button>
            <button type="submit" class="btn btn-success"  name="Sauvegarder" value="Sauvegarder" id="">Sauvegarder</button>
        </form>
       
        <hr>
        <p>retournez vers  la page d acceuil, <a class="link" href="../html/acceuil.jsp" > cliquez ici! </a> </p>
    </div>
    <jsp:getProperty property="footerAsHtml" name="CodeAShtml"/>
    <script type="text/javascript">
    
function replace() {
	document.getElementById("ph").innerHTML = "";
}
    
</script>
</body>
</html>
