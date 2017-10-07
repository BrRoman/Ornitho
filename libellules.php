<!DOCTYPE html>
<html>
	<head>
        <?php include("includes/head.php");?>
	</head>
	
	<body>
		<div id="bloc_page">
			<header>
			    <?php include("includes/header.php");?>
            </header>
			
			<section>
				<nav>
				    <?php
                        $current_page = "libellules";
                        include("includes/nav.php");
                    ?>
                </nav>
				
				<article>
					<h1>Libellules</h1>
                    <table>
                        <tr>
                            <th>Nom</th>
                            <th>Image</th>
                            <th>Description</th>
                        </tr>
                        <?php
                        try
                        {
                            include("includes/connect_bdd.php"); 
                        }
                        catch (Exception $e)
                        {
                            die("Erreur : " . $e->getMessage());
                        }
                        $reponse = $bdd->query("SELECT * FROM Especes WHERE groupe='Libellules' ORDER BY nom");
                        while ($donnees = $reponse->fetch())
                        {
                            $message = "<tr>";
                            $message = $message."<td><div id=\"nom\">".$donnees["nom"]."</div></td>";
                            $msg = file_exists("images/".$donnees["abreviation"].".jpg") ? "<a href=\"images/".$donnees["abreviation"].".jpg\"><img src=\"vignettes/".$donnees["abreviation"]."_thumb.jpg\"/></a>" : "";
                            $message = $message."<td>".$msg."</td>";
                            $message = $message."<td><div id=\"texte_description\">".$donnees["descr_rapide"]."</div></td>";
                            $message = $message."</tr>";
                            print($message);
                        }
                        $reponse->closeCursor();
                        ?>
                    </table>
                </article>
            </section>
            <div id="overlay"></div>
		</div>
        <script src="scripts/pictures.js"></script>
    </body>
</html>


