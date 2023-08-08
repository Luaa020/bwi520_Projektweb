<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta http-equiv="X-UA-Compatible" content="ie=edge" />
    <link
      rel="stylesheet"
      href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
      integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
      crossorigin="anonymous"
    />
    <link
      href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"
      rel="stylesheet"
      integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN"
      crossorigin="anonymous"
    />
   

 
    <title>Page d'accueil pour les administrateurs</title>
    
    
    <style type="text/css">
      .btn{
        display: flex;
        justify-content: center;
      }



   .btn {
    width: 200px;
    height: 200px;
    border-radius: 30%;
    display: flex;
    align-items: center;
    justify-content: center;
    margin: auto;
    font-size: 20px;
    transition: all 0.3s;
  }

   .btn:hover {
    transform: scale(1.05);
    box-shadow: 0 0 10px #333;
  }

   .btn i {
    font-size: 50px;
    margin-bottom: 10px;
  }
    
    </style>
  </head>
  <body>
    <header>
      <nav class="navbar navbar-expand-sm navbar-dark bg-dark">
        <a class="navbar-brand" href="adminAcceuil.jsp">Mon restaurant</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
          <ul class="navbar-nav">
            <li class="nav-item">
              <a class="nav-link" href="accueil.jsp">Accueil</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="commandeView.jsp">Commandes</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="menu.jsp">Menus</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="enregistrement.jsp">Déconnexion</a>
            </li>
          </ul>
        </div>
      </nav>
    </header>
    <main class="container my-5">
      <h1 class="text-center">Bienvenue sur la page d'accueil pour les administrateurs</h1>
      <p class="text-center">Vous pouvez gérer les commandes et les menus de votre restaurant en ligne à partir de cette page.</p>
      
       <br>
  <div class="admin-btns">
   
      <div class="d-flex  mt-5">
    <a href="accueil.jsp" class="btn btn-primary btn-lg mb-3">
      <i class="fa fa-home mr-2"></i>
      Acceuil
    </a>
    <a href="feedback.html" class="btn btn-secondary btn-lg mb-3">
      <i class="fa fa-handshake-o mr-2"></i>
      Feedback
    </a> 
   
    <a href="test2.jsp" class="btn btn-secondary btn-lg mb-3">
      <i class="fa fa-list mr-2"></i>
      Menu
    </a>
     <a href="test2.jsp" class="btn btn-primary btn-lg mb-3">
      <i class="fa fa-pencil-square-o mr-2"></i>
      Modifier un menu
    </a>
    </div>
    
    <br> <br>
    
     <div class="admin-btns d-flex  mt-5">
    
    
    <a href="test2.jsp" class="btn btn-success btn-lg mb-3">
      <i class="fa fa-plus mr-2"></i>
      Ajouter une commande
    </a>
    <a href="commandeView.jsp" class="btn btn-danger btn-lg mb-3">
      <i class="fa fa-trash mr-2"></i>
      Supprimer une commande
    </a>
    <a href="test2.jsp" class="btn btn-info btn-lg mb-3">
      <i class="fa fa-plus mr-2"></i>
      Ajouter un menu
    </a>
    <a href="test2.jsp" class="btn btn-warning btn-lg mb-3">
      <i class="fa fa-trash mr-2"></i>
      Supprimer un menu
    </a>
  </div>
  </div>
  
    </main>
     </body>
</html>
