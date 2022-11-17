<?php
require_once('DataBase.php');

class Clube{
    public $nome; 
    public $estadio; 
    public $capacidade_estadio; 
    public $num_titulos;

    public function consultarTodos(){ 
        $cx = (new DataBase())->connection();
        $cx = $cx->prepare('SELECT * FROM clube');
        if($cx->execute()){
            if($cx->rowCount()){
                return $cx->fetchAll(PDO::FETCH_CLASS,'Clube');
            }
        }
        return false;
    }

}