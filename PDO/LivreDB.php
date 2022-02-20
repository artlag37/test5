<?php
require_once "Constantes.php";
require_once "metier/Livre.php";
require_once "MediathequeDB.php";

class LivreDB extends MediathequeDB
{
	private $db; // Instance de PDO
	public $lastId;
	//TODO implementer les fonctions
	public function __construct($db)
	{
		$this->db = $db;
	}
	/**
	 * 
	 * fonction d'Insertion de l'objet Livre en base de donnee
	 * @param Livre $l
	 */
	public function ajout(Livre $l)
	{
		$q = $this->db->prepare('INSERT INTO livre(titre,edition,information,AUTEUR) values(:titre,:edition,:information,:AUTEUR)');


		$q->bindValue(':titre', $l->getTitre());
		$q->bindValue(':edition', $l->getEdition());
		$q->bindValue(':information', $l->getInformation());
		$q->bindValue(':AUTEUR', $l->getAuteur());
		$q->execute();
		$q->closeCursor();
		$q = NULL;
	}
	/**
	 * 
	 * fonction d'update de l'objet Livre en base de donnee
	 * @param Livre $l
	 */
	public function update(Livre $l)
	{
		try {
			$q = $this->db->prepare('UPDATE livre SET titre=:titre, edition=:edition, information=:information, auteur=:AUTEUR where id=:id');


			$q->bindValue(':titre', $l->getTitre());
			$q->bindValue(':edition', $l->getEdition());
			$q->bindValue(':information', $l->getInformation());
			$q->bindValue(':AUTEUR', $l->getAuteur());
			$q->bindValue(':id', $l->getId());
			$q->execute();
			$q->closeCursor();
			$q = NULL;
		} catch (Exception $e) {
			throw new Exception(Constantes::EXCEPTION_DB_LIV_SELECT);
		}
	}
	/**
	 * 
	 * fonction de Suppression de l'objet Livre
	 * @param Livre $l
	 */
	public function suppression($id)
	{
		$q = $this->db->prepare('delete from livre where id="' . $id . '"');
		$q->execute();
		$q->closeCursor();
		$q = NULL;
	}
	/**
	 * 
	 * Fonction qui retourne toutes les livres
	 * @throws Exception
	 */
	public function selectAll()
	{

		$query = 'SELECT * FROM livre';
		$q = $this->db->prepare($query);
		$q->execute();
		$array = $q->fetchAll(PDO::FETCH_ASSOC);

		if (empty($array)) {
			throw new Exception(Constantes::EXCEPTION_DB_LIVRE);
		}

		$result = $array;
		$q->closeCursor();
		$q = NULL;
		return $result;
	}
	public function selectLivre($id)
	{
		try {
			$query = 'SELECT * FROM livre where id="' . $id . '"';
			$q = $this->db->prepare($query);
			$q->execute();
			$array = $q->fetchAll(PDO::FETCH_ASSOC);

			if (empty($array)) {
				throw new Exception(Constantes::EXCEPTION_DB_LIVRE);
			}

			$result = $array;
			$q->closeCursor();
			$q = NULL;
			return $result;
		} catch (Exception $e) {
			throw new Exception(Constantes::EXCEPTION_DB_LIV_SELECT . $e);
		}
	}
	/**
	 * 
	 * Fonction qui convertie un PDO Livre en objet Livre
	 * @param $pdoLivr
	 * @throws Exception
	 */
	public function convertPdoLiv($pdoLivr)
	{
		if (empty($pdoLivr)) {
			throw new Exception(Constantes::EXCEPTION_DB_CONVERT_LIVR);
		}
		try {
			$obj = (object)$pdoLivr;
			$pers = new Livre($obj->titre, $obj->edition, $obj->information, $obj->auteur);
			$pers->setId($obj->id);
		} catch (Exception $e) {
			throw new Exception(Constantes::EXCEPTION_DB_CONVERT_LIVR . $e);
		}
	}
}
