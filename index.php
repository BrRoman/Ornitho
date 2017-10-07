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
                        $current_page = "index";
                        include("includes/nav.php");
                    ?>
				</nav>
				
				<article>
                    <p>
                        <div id="bienvenue">
                            Bienvenue sur le site</br> des moines naturalistes de Flavigny !
                        </div>
					</p>
                    <div id="presentation">
                        Sur "Ornitho - Voir le parc autrement", vous pourrez :</b>
                        <img src="images/jumelles.jpg"></img>
                        <p>… apprendre à identifier les animaux du parc et d'ailleurs.</p>
                        <img src="images/fantome.jpg"></img>
                        <p>… parcourir une splendide galerie de photos</br> gracieusement mise à notre disposition par le Fr. Romain<br/>(ici en posture d'affût).</p>
                        <img src="images/moine.jpg"></img>
                        <p>… louer le Créateur pour les beautés de la création.</p>
                        <img src="images/chapelet.jpg"></img>
                        <p>Avec "Ornitho - Voir le parc autrement",</br>
                        vous ne direz plus le chapelet comme avant !</p>
                    </div>
				</article>
			</section>
		</div>
	</body>
</html>

