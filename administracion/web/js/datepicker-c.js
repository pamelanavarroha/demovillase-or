/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


function datePickerInit() {
    var dateToday = new Date();
    $('input[name="ddesde"]').daterangepicker({
        opens: 'right',
        minDate: dateToday,
        singleDatePicker: true,
//        timePicker:true,
        "maxSpan": {
            "days": 1
        },
        "linkedCalendars": false,
        "minYear": 2020,
        "showWeekNumbers": true,
        "autoApply": true,
        "buttonClasses": "uk-button-primary uk-button-default",
        "applyButtonClasses": "uk-button-primary  uk-button-default",
        "cancelClass": "uk-button-default",
        showDropdowns: true,
        "locale": {
            "format": "DD/MM/YYYY",
            "separator": " - ",
            "applyLabel": "Seleccionar",
            "cancelLabel": "Cancelar",
            "fromLabel": "Desde",
            "toLabel": "Hasta",
            "customRangeLabel": "Personalizar",
            "weekLabel": "KW",
            "daysOfWeek": [
                "Su",
                "Mo",
                "Tu",
                "We",
                "Th",
                "Fr",
                "Sa"
            ],
            "monthNames": [
                "January",
                "February",
                "March",
                "April",
                "May",
                "June",
                "July",
                "August",
                "September",
                "October",
                "November",
                "December"
            ],
            "firstDay": 1
        }
    });
}