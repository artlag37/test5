<?php


echo '<nav class="navbar navbar-expand-md navbar-dark bg-dark" aria-label="Fourth navbar example">
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>

      <div class="navbar-collapse collapse" id="navbarsExample04">';
      echo '<ul class="nav justify-content-center">';
      echo '  <li class="nav-item"><a class="nav-link active" aria-current="page" href="index.php?action=accueil&id='.$_SESSION["token"].'">Accueil</a></li>';
      echo '<li class="nav-item"><a class="nav-link" href="index.php?action=ajoutLivre&id='.$_SESSION["token"].'">Ajouter un livre</a></li>';
      echo '<li class="nav-item"><a class="nav-link" href="index.php?action=allLivre&id='.$_SESSION["token"].'">Liste des livres</a></li>';
      echo '  <li class="nav-item"><a class="nav-link" href="index.php?action=deleteLivre&id='.$_SESSION["token"].'">Supprimer un livre</a></li>';
      echo '  <li class="nav-item"><a class="nav-link" href="index.php?action=moncompte&id='.$_SESSION["token"].'">Mon Compte</a></li>';
      echo '  <li class="nav-item"><a class="nav-link " href="index.php">Déconnexion</a></li>';
      echo '</ul>';
      echo '</div>
    </div>
  </nav>'



?>