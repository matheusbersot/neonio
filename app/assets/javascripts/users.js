/**
 * Created by matheus on 23/06/14.
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


    //############# MASKS ######################

    var mask_telephone = '(99) 9999-9999[9]';
    var mask_telephone_8_digits = '(99) 9999-9999[9]';
    var mask_mobile = '(99) 9999[9]-9999';
    $("#user_telephone1").inputmask(mask_telephone);
    $("#user_telephone2").inputmask(mask_telephone);
    $("#user_telephone3").inputmask(mask_telephone);
    $("#user_cnpj").inputmask("99.999.999/9999-99");

    function change_mask(label)
    {
        var value = $(label).val().replace(/[\-,\(, \),\_]/g,'');

        if (value.length == 11)
        {
            $(label).inputmask(mask_mobile);
        }
        else if (value.length == 10)
        {
            $(label).inputmask(mask_telephone_8_digits);
        }
        $(label).val(value);
    }

    $("#user_telephone1").blur(function() {
        change_mask("#user_telephone1");
    });

    $("#user_telephone2").blur(function() {
        change_mask("#user_telephone2");
    });

    $("#user_telephone3").blur(function() {
        change_mask("#user_telephone3");
    });

    $("#user_telephone1").focus(function() {
        $("#user_telephone1").inputmask(mask_telephone);
    });

    $("#user_telephone2").focus(function() {
        $("#user_telephone2").inputmask(mask_telephone);
    });

    $("#user_telephone3").focus(function() {
        $("#user_telephone3").inputmask(mask_telephone);
    });

    $("#new_user").submit(function()
    {
        $("#user_telephone1").inputmask('remove');
        $("#user_telephone2").inputmask('remove');
        $("#user_telephone3").inputmask('remove');
        $("#user_cnpj").inputmask('remove');
    });
});

