<?php

class Db
{

    private $HOSTNAME = "localhost";
    private $USER = "root";
    private $PASSWORD = "";
    private $DATABASE = "taskflow";
    public $pdo;

    function Cconnection()
    {
        try {

            $dsn = "mysql:host=$this->HOSTNAME;dbname=$this->DATABASE;charset=utf8";

            $pdo = new PDO($dsn, $this->USER, $this->PASSWORD);

            $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
            echo "connexion reussite";
            return $pdo;
        } catch (PDOException $e) {
            echo "Erreur de connexion: " . $e->getMessage();
        }
    }
}
$db = new Db();
$db->Cconnection();
