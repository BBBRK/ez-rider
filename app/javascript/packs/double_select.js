/*jshint esversion: 6 */

let select = document.getElementById("moto_marque");
let modeleSelect = document.getElementById("moto_modele");



select.addEventListener("change", marque_select);


function marque_select(){




        fetch(
          `/double_select/${select.value}`
          // { credentials: "same-origin" }
          )
        .then(response => response.json())
        .then((data) => {
            let result = "";

            for (var i = 0; i < data.modeles.length; i++) {
                result += "<option value='" + data.modeles[i] + "'>" + data.modeles[i] + "</option>";
            }

            $("#moto_modele").html(result);


    });
}
