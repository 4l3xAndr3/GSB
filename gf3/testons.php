<html>
    <head>
        <title>Last 10 Results</title>
    </head>
    <body>
        
        <?php
            include 'fonctiongenevisiteur.php';
            // Connexion    la base de donn  es gsb_frais
            $cnxBDD = connexion();

            $idforfait = "SELECT id FROM etat" ;
            $result= $cnxBDD->query($idforfait);
            while ($row = mysqli_fetch_assoc($result)){
            echo "hello";
            }
        ?>
            
    </body>
</html>