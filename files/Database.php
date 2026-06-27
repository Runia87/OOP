<?php 

class Database{
    private static $instance=null;
    private $pdo;
    private function __construct(){
        try{
            $this->pdo= new PDO("mysql:host=MySQL-8.0","data","root","");
            echo "OK";
        }
        catch(PDOException $exception){
            die($exception->getMessage());
        }

    }
public static function getInstance(){
    self::instance()=new Database();
}
}



?>