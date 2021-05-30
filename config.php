<?php
//cette page permet de faire la connection à la base de donnée. Le Login et le MP sont root et root par défaut. 
    try 
    {
        $bdd = new PDO('mysql:host=localhost;dbname=projet_final_3wacademy;charset=UTF8', 'root', 'root');
        // connexion à la base de donnée 
    }
    catch(Exception $e)
    {
        die('Erreur : '.$e->getMessage());
    }
