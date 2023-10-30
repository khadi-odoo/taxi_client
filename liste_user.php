
<?php

include("db_taxi.php");

class User_taxi
{
    private $dbase;

    public function __construct($pdost)
    {
        $this->dbase = $pdost;
    }

    public function listerUser($pdost)
    {
        $sql2 = "SELECT * FROM inscription";
        $pdost2 = $pdost->query($sql2);

        if ($pdost2->rowCount() > 0) {
            echo "<table border='1'>";
            echo "<tr><th>Id utilisateurs</th><th>Nom</th><th>Prénom</th><th>Tel</th><th>Adress mail</th></tr>";

            while ($row = $pdost2->fetch()) {
                echo "<tr>";
                echo "<td>" . $row["id_user"] . "</td>";
                echo "<td>" . $row["nom_user"] . "</td>";
                echo "<td>" . $row["pr_user"] . "</td>";
                echo "<td>" . $row["telephone"] . "</td>";
                echo "<td>" . $row["adrss_mail"] . "</td>";
                echo "</tr>";
            }
            echo "</table>";
        } else {
            echo "Pas d'utilisateurs dans taxi-bokko";
        }
    }
}

$pdost = new PDO("mysql:host=localhost;dbname=taxi_bokko", "root", "");
$affiche = new User_taxi($pdost);
$affiche->listerUser($pdost);
