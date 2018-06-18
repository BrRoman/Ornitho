<!DOCTYPE html>
<html>
	<head>
        <?php include("includes/head.php");?>
	</head>
    
    <body>
		<div id="bloc_page">
			<header>
			    <?php
                    include("includes/header.php");
                ?>
            </header>
			
			<section>
				<nav>
				    <?php
                        $current_page = "galerie"; 
                        include("includes/nav.php");
                    ?>
                </nav>
			    
                <article>
                    <div id="galerie_accueil">
                        <img src="images/_galerie.jpg"/>
                        <div id="cliquez">Cliquez sur l'image pour entrer dans la galerie photos.</div>
                    </div>
                </article>
                <div id="overlay">
                    <?php
                        $images = array();
                        $images[] = "grues";
                        $images[] = "bionnassay";
                        $images[] = "charmille";
                        $images[] = "aigrette_3";
                        $images[] = "lune_sapin";
                        $images[] = "aigrette_0";
                        $images[] = "coucou";
                        $images[] = "pieride_navet";
                        $images[] = "fleurs_printemps";
                        $images[] = "martin_pecheur_cessey";
                        $images[] = "epeichette";
                        $images[] = "prunus_sapin";
                        $images[] = "aigrette_5";
                        $images[] = "chevreuil_fontenelles";
                        $images[] = "lever_soleil_nuages";
                        $images[] = "demi_deuil_hauteroche";
                        $images[] = "mesange_pluie";
                        $images[] = "jeune_plante";
                        $images[] = "rougequeue";
                        $images[] = "nuage_etourneaux";
                        $images[] = "petit_gravelot";
                        $images[] = "alpes_lever_soleil_rouge";
                        $images[] = "maudit";
                        $images[] = "fouine";
                        $images[] = "moro_sphinx";
                        $images[] = "gren_agile";
                        $images[] = "renard_neige_plaine";
                    ?>
                    <img id="close_button" src="images/close_button.png"/>
                    <div id="img_list">
                        <img id="arrow_left" src="images/arrow_left.png" />
                        <ul>
                            <li><a id="link_0" href="<?php print("images/_galerie/".$images[0].".jpg");?>"><img id="image_0" class="vignette" src="<?php print("vignettes/_galerie/".$images[0]."_thumb.jpg");?>" alt=<?php print($images[0]);?> /></a></li>
                            <li><a id="link_1" href="<?php print("images/_galerie/".$images[1].".jpg");?>"><img id="image_1" class="vignette" src="<?php print("vignettes/_galerie/".$images[1]."_thumb.jpg");?>" alt=<?php print($images[1]);?> /></a></li>
                            <li><a id="link_2" href="<?php print("images/_galerie/".$images[2].".jpg");?>"><img id="image_2" class="vignette" src="<?php print("vignettes/_galerie/".$images[2]."_thumb.jpg");?>" alt=<?php print($images[2]);?> /></a></li>
                            <li><a id="link_3" href="<?php print("images/_galerie/".$images[3].".jpg");?>"><img id="image_3" class="vignette" src="<?php print("vignettes/_galerie/".$images[3]."_thumb.jpg");?>" alt=<?php print($images[3]);?> /></a></li>
                            <li><a id="link_4" href="<?php print("images/_galerie/".$images[4].".jpg");?>"><img id="image_4" class="vignette" src="<?php print("vignettes/_galerie/".$images[4]."_thumb.jpg");?>" alt=<?php print($images[4]);?> /></a></li>
                        </ul>
                        <img id="arrow_right" src="images/arrow_right.png" />
                    </div>
                    <div id="central_image">
                        <img id="img_main" src="<?php print("images/_galerie/".$images[2].".jpg");?>"/>
                    </div>
                </div>
                <script src = "scripts/galerie.js"></script>
			</section>
		</div>
	</body>
</html>









