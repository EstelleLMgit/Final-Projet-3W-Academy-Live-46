let callBackGetSuccess = function(data) {
    console.log("donnes api" , data)
    alert("libelle_formation_principal:" + data.facet_groups[3].facets[3].name)
   let element = document.getElementById("zone_formation");
   element.innerHTML = "Vous avez choisi la formation suivante " + data.facet_groups[3].facets[3].name;
}

function buttonClickGET() {
    let url = "https://data.education.gouv.fr/api/records/1.0/search/?dataset=fr-en-formations-initiales-en-france&q=&facet=code_cnis&facet=sigle_type_formation&facet=libelle_type_formation&facet=libelle_formation_principal";
    $.get(url, callBackGetSuccess).done(function() {
        //alert("second success");
    })
    .fail(function() {
        alert( "error" );
    })
    .always(function() {
        //alert( "finished" )
    });
}