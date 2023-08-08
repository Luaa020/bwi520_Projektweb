<%@page import="de.hwg_lu.bw.beans.GetCodeAlsHtml"%>
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
      margin-bottom:20px;
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
<jsp:useBean id="CodeAShtml" class="de.hwg_lu.bw.beans.GetCodeAlsHtml" scope="session"/>


<jsp:getProperty property="headerAsHtml" name="CodeAShtml"/>
    <div class="warp container">
        <h1>Réservation de restaurant</h1>
        <form action="../jsp/reservationAppl.jsp" method="post">
            <div class="form-group">
                <label for="nom">Nom :</label>
                <input type="text" class="form-control" id="nom" name="nom" required>
            </div>
            <div class="form-group">
                <label for="nom">Votre adresse E-mail :</label>
                <input type="email" class="form-control" id="mail" name="mail" required>
            </div>
            <div class="form-group">
                <label for="date">Date :</label>
                <input type="date" class="form-control" id="date" name="date" required>
            </div>
            <div class="form-group">
                <label for="heure">Heure :</label>
                <input type="time" class="form-control" id="heure" name="heure" required>
            </div>
            <div class="form-group">
                <label for="nb_personnes">Nombre de personnes :</label>
                <input type="number" class="form-control" id="nb_personnes" name="nb_personnes" min="1" max="10" required>
            </div>
            <div class="form-group">
                <label for="Message">Message au restaurant :</label>
                <textarea class="textarea form-control " rows="6" name="msg" id="ph"  onclick="replace();">Avez vous des souhaits ou exigeances particuliers?
                </textarea>
            </div>
            <button type="submit" class="btn btn-primary" name="Reserver" value="Reserver">Réserver</button>
        </form>
       
        <hr>
        <p>si vous voulez apporter des modifications à une réservation, <a class="link" href="../jsp/reservationAendernUndStorniren.jsp" > cliquez ici! </a> </p>
    </div>
    
    <jsp:getProperty property="footerAsHtml" name="CodeAShtml"/>
    
    <script type="text/javascript">
    
function replace() {
	document.getElementById("ph").innerHTML = "";
}
    
</script>
</body>
</html>
