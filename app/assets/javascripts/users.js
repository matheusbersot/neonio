/**
 * Created by matheus on 23/06/14.
 */

/*
$(document).ready(function(){
    mascara_tel_fixo = '(99) 9999-9999';
    mascara_celular = '(99) 99999-9999';
    $("#user_telephone1").inputmask({
        mask: ["99.99", "99.99.99"]
    });
    $("#user_telephone2").inputmask(mascara_tel_fixo, mascara_celular);
    $("#user_telephone3").inputmask(mascara_tel_fixo, mascara_celular);
    $("#user_cnpj").inputmask("99.999.999/9999-99");
});
*/

$(document).ready(function() {

    $('#user_state').change(function() {

        $.ajax({
            url: "/get_cities_by_state",
            data: {
                state_id: $('#user_state').val()
            },
            dataType: "script"
        });
        $("#user_district").append('<option value="" selected >Selecione</option>');
        $('#user_district').attr("disabled", "disabled");
    });

    $('#user_city').change(function() {

        $.ajax({
            url: "/get_districts_by_city",
            data: {
                city_id: $('#user_city').val()
            },
            dataType: "script"
        });

    });
});

