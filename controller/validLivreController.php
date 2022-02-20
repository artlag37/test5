<?php
class validLivreController
{

  public function __construct()
  {
    session_start();
    error_reporting(1);
    require_once "controller/Controller.php";
    require_once "metier/Livre.php";
    require_once "PDO/LivreDB.php";
    require_once "PDO/connectionPDO.php";
    require_once "Constantes.php";
    //recuperation des valeurs du compte venant du formulaire MonCompte
    //personne
    $auteur = $_POST['auteur'] ?? null;
    $information = $_POST['info'] ?? null;
    $edition = $_POST['edition'] ?? null;
    $titre = $_POST['titre'] ?? null;
    //action pour update ou insert, delete, select selectall
    $operation = $_GET['operation'] ?? null;
    //TODO
    if (Controller::auth()) {
      if ($operation == "insert") {
        try {
          $livreDB = new LivreDB($pdo);
          try{
            $livreDB->ajout(new Livre($titre, $edition, $information, $auteur));
            $check=true;
          }catch(Exception $e){
            $check=false;
          }
          
          if ($check==true) { ?>
            <div class="alert alert-success d-flex" role="alert">
              <div>
                <h4 class="alert-heading">Livre ajouté avec succès</h4>
                Titre -> <?php echo $titre; ?><br>
                Edition -> <?php echo $edition; ?><br>
                Information -> <?php echo $information; ?><br>
                Auteur -> <?php echo $auteur; ?>
              </div>
            </div>
<?php };
        } catch (Exception $e) {
          echo($e);
        }
      }
    } else {
      //erreur on renvoit à la page d'accueil
      header('Location: accueil.php?id=' . $_SESSION["token"]);
    }
  }
}