<%@page import="de.hwg_lu.bw.beans.ReservationBean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="rbean" class="de.hwg_lu.bw.beans.ReservationBean" scope="session"></jsp:useBean>

<%!
public String denullify(String inputString){
	if (inputString == null) return ""; else return inputString;
//	return (inputString == null)?"":inputString;
}
public String[] denullify(String[] inputStringArray){
	if (inputStringArray == null) return new String[0]; 
	else return inputStringArray;
}
%>


<%
//Reservation view 1
String name = request.getParameter("nom");
String mail = request.getParameter("mail");
String date = request.getParameter("date");
String heur = request.getParameter("heure");
String nb_personne = request.getParameter("nb_personnes");
String message = request.getParameter("msg");

//recherche des reservation
String email =request.getParameter("email");
String id=request.getParameter("id");
String nom=request.getParameter("nom");

// modifcation und annulaton Ids
String idModif=request.getParameter("idModif");
String idAnnul=request.getParameter("idAnnul");
// achtennnnn
String idSaufveg=request.getParameter("idAnnul");

System.out.println("annuller id " +idAnnul);


//Buttons
String confirmation = this.denullify(request.getParameter("confirmation"));
String modification = this.denullify(request.getParameter("modification"));
String annullation = this.denullify(request.getParameter("annullation"));
String reserver = this.denullify(request.getParameter("Reserver"));

//recherche des reservation buttons..
String recherche = this.denullify(request.getParameter("recherche"));
String Sauvegarder = this.denullify(request.getParameter("Sauvegarder"));
String Interompre = this.denullify(request.getParameter("Interompre"));

if (confirmation.equals("Confirmer")){
	System.out.println("Confirmer-Button wurde geklickt");
	
	
	rbean.createReservation();
	
	response.sendRedirect("../jsp/Accueil.jsp");
}
	
else if (modification.equals("Modifier")){
	System.out.println("Modifier-Button wurde geklickt");

	rbean.setReservationZeiger(idModif);
	
	response.sendRedirect("../jsp/reservationAenderView.jsp");
}	
else if (Interompre.equals("Interompre")){
	System.out.println("Interompre-Button wurde geklickt");

	
	
	response.sendRedirect("../jsp/reservationAendernUndStorniren.jsp");
}	
else if (Sauvegarder.equals("Sauvegarder")){
	System.out.println("Sauvegarder-Button wurde geklickt");

	rbean.setDate(date);
	rbean.setHeur(heur);
	rbean.setMessage(message);
	rbean.setNb_personne(nb_personne);
	rbean.setName(name);
	
	rbean.modificationReservation();
	
	
	response.sendRedirect("../jsp/accueil.jsp");
}	
else if (reserver.equals("Reserver")){
	System.out.println("Reserver-Button wurde geklickt");
	
	rbean.setDate(date);
	rbean.setHeur(heur);
	rbean.setMessage(message);
	rbean.setNb_personne(nb_personne);
	rbean.setName(name);
	rbean.setMail(mail);
	
	response.sendRedirect("../jsp/reserConfirmView.jsp");
}	
else if (annullation.equals("Annuller")){
	System.out.println("Annuller-Button wurde geklickt");
	  
	
		rbean.annullerReservation(idAnnul);
		
	response.sendRedirect("../jsp/Accueil.jsp");
	   
	   }
else if (recherche.equals("Recherche")){
	System.out.println("Recherche-Button wurde geklickt");
	  
	int newId=Integer.parseInt(id);
	
	System.out.println(newId);

		rbean.setEmailRecher(email);
		rbean.setIdRecher(newId);
		rbean.setNomRecher(nom);
		rbean.recherche();
	response.sendRedirect("../jsp/reservationAendernUndStorniren.jsp");
	   
	   }

else {
	System.out.println("kein Button wurde geklickt");
response.sendRedirect("../jsp/Accueil.jsp");
	
}


%>
</body>
</html>