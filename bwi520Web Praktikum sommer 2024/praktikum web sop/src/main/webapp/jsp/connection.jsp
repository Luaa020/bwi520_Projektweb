
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="../css/loginReg.css" >
    <title>Enregistrement</title>
  </head>
  <body>
    <div class="container mt-5">
      <div class="row">
        <div class="col-md-6 mx-auto">
          <div class="card">
            <div class="card-header">
              <h4>Enregistrement</h4>
            </div>
            <div class="card-body">
              <form action="../jsp/loginRegAppl.jsp" method="get">
                <div class="form-group">
                  <label for="inputName">Nom</label>
                  <input type="text" name="name" class="form-control" id="inputName" placeholder="Entrer votre nom">
                </div>
                <div class="form-group">
                  <label for="inputEmail">Adresse email</label>
                  <input type="email" name="email" class="form-control" id="inputEmail" placeholder="Entrer votre adresse email">
                </div>
                <div class="form-group">
                  <label for="inputPassword">Mot de passe</label>
                  <input type="password" name="pass" class="form-control" id="inputPassword" placeholder="Entrer un mot de passe">
                </div>
                <div class="form-group">
                  <label for="confirmPassword">Confirmer le mot de passe</label>
                  <input type="password" name="pass2" class="form-control" id="confirmPassword" placeholder="Confirmer le mot de passe">
                </div>
                <button type="submit" class="btn btn-primary btn-block" name="registration" value="Registrieren">S' enregistrer</button>
            <br> <hr>
                <button type="submit"  class="btn btn-primary btn-block" name="gastlogin" value="Gast">continuer sans compte</button>
              <div > <br> Vous avez déja un compte?  <a href="enregistrement.jsp">Connexion ici</a></div>
              </form>
              
              
            </div>
          </div>
        </div>
      </div>
    </div>
  </body>
</html>
