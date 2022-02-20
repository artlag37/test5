<?php

use PHPUnit\Framework\TestCase;

require_once "Constantes.php";
require_once "metier/Livre.php";
require_once "PDO/LivreDB.php";


class LivreDBTest extends TestCase
{

    /**
     * @var LivreDB
     */
    protected $object;
    protected $pdodb;

    /**
     * Sets up the fixture, for example, opens a network connection.
     * This method is called before a test is executed.
     */
    protected function setUp(): void
    {
        //parametre de connexion à la bae de donnée
        $strConnection = Constantes::TYPE . ':host=' . Constantes::HOST . ';dbname=' . Constantes::BASE;
        $arrExtraParam = array(PDO::MYSQL_ATTR_INIT_COMMAND => "SET NAMES utf8");
        $this->pdodb = new PDO($strConnection, Constantes::USER, Constantes::PASSWORD, $arrExtraParam); //Ligne 3; Instancie la connexion
        $this->pdodb->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    }

    /**
     * Tears down the fixture, for example, closes a network connection.
     * This method is called after a test is executed.
     */
    protected function tearDown(): void
    {
    }

    /**
     * @covers LivreDB::ajout
     * @todo   Implement testAjout().
     */
    public function testAjout()
    {
        try {
            $this->livre = new LivreDB($this->pdodb);

            $l = new Livre("Au pays du soleil", "Gallimard", "C'est l'histoire de ...", "JL");
            //insertion en bdd
            $this->livre->ajout($l);

            $liv = $this->livre->selectLivre($l->getId());
            //echo "pers bdd: $pers";
            $this->assertEquals($l->getTitre(), $liv->getTitre());
            $this->assertEquals($l->getEdition(), $liv->getEdition());
            $this->assertEquals($l->getInformation(), $liv->getInformation());
            $this->assertEquals($l->getAuteur(), $liv->getAuteur());
        } catch (Exception $e) {
            echo 'Exception recue : ', $e->getMessage(), "\n";
        }
    }

    /**
     * @covers LivreDB::update
     * @todo   Implement testUpdate().
     */
    public function testUpdate()
    {
        $this->object = new LivreDB($this->pdodb);
        $l = new Livre("Flaubert", "livre de Flaubert", "Galimard", "titre update");
        $l->setId(58);
        $this->object->update($l);

        $l = new Livre("Flauberte", "livre de Flauberte", "Galimarde", "titre updatee");
        //update livre 
        $lastId = $this->pdodb->lastInsertId();
        $l->setId($lastId);
        $this->livre->update($l);
        $livre = $this->livre->selectionId($l->getId());
        $this->assertEquals($l->getTitre(), $livre->getTitre());
        $this->assertEquals($l->getEdition(), $livre->getEdition());
        $this->assertEquals($l->getInformation(), $livre->getInformation());
        $this->assertEquals($l->getAuteur(), $livre->getAuteur());
    }

    /**
     * @covers LivreDB::suppression
     * @todo   Implement testSuppression().
     */
    public function testSuppression()
    {
        try {
            $this->livre = new LivreDB($this->pdodb);
            $unid = $this->pdodb->lastInsertId();
            $liv = $this->livre->selectLivre($unid);
            $this->livre->suppression($liv);
            $liv2 = $this->livre->selectLivre($unid);
            if ($liv2 != null) {
                $this->markTestIncomplete(
                    "La suppression de l'enreg livre a echoué"
                );
            }
        } catch (Exception $e) {
            //verification exception
            $exception = "RECORD LIVRE not present in DATABASE";
            $this->assertEquals($exception, $e->getMessage());
        }
    }

    /**
     * @covers LivreDB::selectAll
     * @todo   Implement testSelectAll().
     */
    public function testSelectAll()
    {
        $this->livre = new LivreDB($this->pdodb);
        $res = $this->livre->selectAll();
        $i = 0;
        $ok = true;
        foreach ($res as $key => $value) {
            $i++;
        }
        if ($i == 0) {
            $this->markTestIncomplete(
                'Pas de résultats'
            );
            $ok = false;
        }
        $this->assertTrue($ok);
    }

    /**
     * @covers LivreDB::selectLivre
     * @todo   Implement testSelectLivre().
     */
    public function testSelectLivre()
    {
        $this->livre = new LivreDB($this->pdodb);
        $liv = new Livre('Le test ultime', 'Biblio', 'Bonjour ceci est une information', 'Jimmy');
        $this->livre->ajout($liv);
        $liv->setId($this->pdodb->lastInsertId());
        $l = $this->livre->selectLivre($liv->getId());
        $this->assertEquals($l->getId(), $liv->getId());
        $this->assertEquals($l->getTitre(), $liv->getTitre());
        $this->assertEquals($l->getEdition(), $liv->getEdition());
        $this->assertEquals($l->getInformation(), $liv->getInformation());
        $this->assertEquals($l->getAuteur(), $liv->getAuteur());
    }
}
