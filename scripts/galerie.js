// Tableau contenant les images de la galerie :
var images = new Array();
images.push("grues");
images.push("bionnassay");
images.push("charmille");
images.push("aigrette_3");
images.push("lune_sapin");
images.push("aigrette_0");
images.push("coucou");
images.push("fleurs_printemps");
images.push("martin_pecheur_cessey");
images.push("prunus_sapin");
images.push("aigrette_5");
images.push("chevreuil_fontenelles");
images.push("lever_soleil_nuages");
images.push("demi_deuil_hauteroche");
images.push("mesange_pluie");
images.push("jeune_plante");
images.push("nuage_etourneaux");
images.push("alpes_lever_soleil_rouge");
images.push("moro_sphinx");
images.push("renard_neige_plaine");

// Overlay (initialisation de la variable + hauteur) :
var overlay = document.querySelector("#overlay");
overlay.style.height = window.innerHeight + "px";

// Image centrale de l'overlay (initialisation de la variable) :
var img_main = document.querySelector("#img_main");

// ------------------------------------------------------------ //

// Image d'accueil de la page galerie (redim. + afficher + faire apparaître l'overlay sur clic) :
var entry = document.querySelector("#galerie_accueil img");
entry.width = 300;
entry.style.display = "block";// Afficher seulement après  redim.
entry.addEventListener("click", function(e){
    // Hauteur de la galerie photos :
    var gal_ph = document.querySelector("#overlay");
    gal_ph.style.height = window.innerHeight + "px";

    // Redimensionnement de l'image principale de la galerie :
    change_main(img_main.src);

    // Redimensionnement des vignettes de la galerie :
    var vignettes = document.querySelectorAll("#img_list img");
    maxH = 80;
    for(var i = 0; i < vignettes.length; i++){
        img = vignettes[i];
        if(img.height > maxH){
            img.height = maxH;}}
    overlay.style.display = "flex";
});

// Gestion des clics sur vignettes en bas de la galerie :
var links = document.querySelectorAll("#img_list a");
var links_length = links.length;
for(var i = 0; i < links_length; i++){
    links[i].addEventListener("click", function(e){
        e.preventDefault();
        change_main(e.currentTarget);
    });
}

// Bouton close :
var close = document.querySelector("#close_button");
close.addEventListener("click", function(e){
    overlay.style.display = "none";
});

// Bouton image précédente :
var button_left = document.querySelector("#arrow_left");
button_left.addEventListener("click", function(e){
    for(var i = 0; i < 5; i++){
        var img = document.querySelector("#image_" + i);
        var offset = images.indexOf(img.alt);
        if(offset == 0){
            new_offset = images.length - 1;}
        else{
            new_offset = offset - 1;}
        var vignette = document.querySelector("#image_" + i);
        vignette.src = "vignettes/_galerie/" + images[new_offset] + "_thumb.jpg";
        vignette.alt = images[new_offset];
        var link = document.querySelector("#link_" + i);
        link.href = "images/_galerie/" + images[new_offset] + ".jpg";
        }
    var img_milieu = document.querySelector("#image_2").alt;
    change_main("images/_galerie/" + img_milieu + ".jpg");
});

// Bouton image suivante :
var button_right = document.querySelector("#arrow_right");
button_right.addEventListener("click", function(e){
    for(var i = 0; i < 5; i++){
        var img = document.querySelector("#image_" + i);
        var offset = images.indexOf(img.alt);
        if(offset == images.length - 1){
            new_offset =  0;}
        else{
            new_offset = offset + 1;}
        var vignette = document.querySelector("#image_" + i);
        vignette.src = "vignettes/_galerie/" + images[new_offset] + "_thumb.jpg";
        vignette.alt = images[new_offset];
        var link = document.querySelector("#link_" + i);
        link.href = "images/_galerie/" + images[new_offset] + ".jpg";
        }
    var img_milieu = document.querySelector("#image_2").alt;
    change_main("images/_galerie/" + img_milieu + ".jpg");
});


/* ------------------------- */
/* ------- FONCTIONS ------- */
/* ------------------------- */

// Changement et redimensionnement de l'image principale de la galerie :
function change_main(link){
    var img_new = new Image();
    img_new.src = link;
    img_new.onload = function(){
        var w = img_new.width;
        var h = img_new.height;
        var maxW = window.innerWidth / 1.4;
        var maxH = window.innerHeight / 1.6;
        if(w > maxW || h > maxH){
            var reduc = Math.min(maxW / w, maxH / h);
            img_main.width = Math.round(w * reduc);
            img_main.height = Math.round(h * reduc);}
        else{
            img_main.width = w;
            img_main.height = h;
        }
        img_main.src = link;
        img_new = null;
    }
}














