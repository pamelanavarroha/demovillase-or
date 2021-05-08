/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
function llenarTablaPacientes() {

    var dataSet = getPacientes();

    $('#listaPacientes').DataTable({
        data: dataSet,
        lengthMenu: [[10, 15, 20, 50, -1], [10, 15, 20, 50, 'All']],
        scrollY: '50vh',
        scrollX: 600,
        responsive: true,
        paging: true,
        ordering: true,
        "order": [[1, "desc"]],
//        "order": [[8, "asc"]],
        info: true,
        fixedColumns: {
            heightMatch: 'none'
        },
        columnDefs: [
            {
                className: "dt-center", "targets": "_all"},
            {
                "targets": 0, // "PKN" COLUMN
                "createdCell": function (td, nofisico, rowData, row, col) {
                    var nombrePaciente = rowData[0];
                    var idSolicitud = rowData[11];


                    $(td).html('<button class="uk-button uk-button-link-villaseñor uk-text-bold" uk-toggle="target: #modal-mostrar-mensualidades"  uk-tooltip="title: Clic para mostrar detalles del Paciente; delay: 500;pos: right"\n\
             ">' + nombrePaciente + '</button>');

                }
            },
        ]
    });

    var table = $('#listaPacientes').DataTable();

    $('#lista tbody').on('click', 'tr', function () {
        if ($(this).hasClass('selected')) {
            $(this).removeClass('selected');
        }
        else {
            table.$('tr.selected').removeClass('selected');
            $(this).addClass('selected');
        }
    });

}

function llenaInput() {
    $("#paciente-agendar").val("Azucena Aguas Garcia");
}
function llenarTablaPacientesModal() {

    var dataSet = getPacientes();

    $('#listaPacientesModal').DataTable({
        data: dataSet,
        lengthMenu: [[10, 15, 20, 50, -1], [10, 15, 20, 50, 'All']],
        scrollY: '50vh',
        scrollX: 600,
        responsive: true,
        paging: true,
        ordering: true,
        "order": [[1, "desc"]],
//        "order": [[8, "asc"]],
        info: true,
        fixedColumns: {
            heightMatch: 'none'
        },
        columnDefs: [
            {
                className: "dt-center", "targets": "_all"},
            {
                "targets": 0, // "PKN" COLUMN
                "createdCell": function (td, nofisico, rowData, row, col) {
                    var nombrePaciente = rowData[0];
                    var idSolicitud = rowData[11];
//<button class="uk-button uk-button-default uk-modal-close" type="button">Cancelar</button>

                    $(td).html('<button class="uk-button uk-button-link-villaseñor uk-text-bold uk-modal-close" type="button"  uk-tooltip="title: Seleccionar Paciente; delay: 500;pos: right"\n\
             " onclick="llenaInput();">' + nombrePaciente + '</button>');

                }
            },
        ]
    });

    var table = $('#listaPacientes').DataTable();

    $('#lista tbody').on('click', 'tr', function () {
        if ($(this).hasClass('selected')) {
            $(this).removeClass('selected');
        }
        else {
            table.$('tr.selected').removeClass('selected');
            $(this).addClass('selected');
        }
    });

}
function llenarTablaAgenda2() {

    var dataSet = getAgenda2();
    var datatable = $('#listaAgenda').DataTable();

    datatable.clear().draw();
    datatable.rows.add(dataSet); // Add new data
    datatable.columns.adjust().draw(); // Redraw the DataTable

}
function llenarTablaAgendaPaciente() {

    var dataSet = getAgendaPaciente();
    var datatable = $('#listaAgenda').DataTable();

    datatable.clear().draw();
    datatable.rows.add(dataSet); // Add new data
    datatable.columns.adjust().draw(); // Redraw the DataTable

}
function llenarTablaAgenda() {

    var dataSet = getAgenda1();

    $('#listaAgenda').DataTable({
        data: dataSet,
        lengthMenu: [[10, 15, 20, 50, -1], [10, 15, 20, 50, 'All']],
        scrollY: '50vh',
        scrollX: 600,
        responsive: true,
        paging: true,
        ordering: true,
        "order": [[1, "asc"]],
//        "order": [[8, "asc"]],
        info: true,
        fixedColumns: {
            heightMatch: 'none'
        },
        columnDefs: [
            {
                className: "dt-center", "targets": "_all"},
            {
                "targets": 2, // "PKN" COLUMN
                "createdCell": function (td, nofisico, rowData, row, col) {
                    var horario = rowData[2];
                    var disponible = rowData[3];
                    if (disponible === "Disponible") {
                        $(td).html('<button class="uk-button uk-button-link-success uk-text-bold" uk-toggle="target: #modal-mostrar-mensualidades"  uk-tooltip="title: Clic para mostrar detalles de la cita; delay: 500;pos: right"\n\
             ">' + horario + '</button>');
                    } else {
                        $(td).html('<button class="uk-button uk-button-link-villaseñor uk-text-bold" uk-toggle="target: #modal-mostrar-mensualidades"  uk-tooltip="title: Clic para agendar cita; delay: 500;pos: right"\n\
             ">' + horario + '</button>');
                    }
                }
            },
            {
                "targets": [0, 1, 3, 4], // "PKN" COLUMN
                "createdCell": function (td, nofisico, rowData, row, col) {
                    var disponible = rowData[3];
                    if (disponible === "Disponible") {
                        $(td).html('<button class="uk-button uk-button-link-success uk-text-bold" uk-toggle="target: #modal-mostrar-mensualidades"  uk-tooltip="title: Clic para mostrar detalles del Paciente; delay: 500;pos: right"\n\
             ">' + rowData[col] + '</button>');
                    } else {
                        $(td).html('<button class="uk-button uk-button-link-villaseñor uk-text-bold" uk-toggle="target: #modal-mostrar-mensualidades"  uk-tooltip="title: Clic editar esta cita; delay: 500;pos: right"\n\
             ">' + rowData[col] + '</button>');
                    }
                }
            }
        ]
    });

    var table = $('#listaAgenda').DataTable();

    $('#lista tbody').on('click', 'tr', function () {
        if ($(this).hasClass('selected')) {
            $(this).removeClass('selected');
        }
        else {
            table.$('tr.selected').removeClass('selected');
            $(this).addClass('selected');
        }
    });

}

function getPacientes() {
    var dataPacientes = [
        //[Nombre, Edad, email, Tratamiento, Fecha Inicio, Fecha Cierre, $Mensualidad,# Mens cubiertas, # Mens. pendientes, $ Monto cubierto, $Monto Cubrir]
        ["Joaquín Gutierrez Robles", "24", "jgr@gmail.com", "Ortodoncia", "01/06/2018", "01/06/2022", 1000, 30, 18, 30000, 18000],
        ["Mario Ruiz Martinez", "31", "mrm@gmail.com", "Ortodoncia", "21/08/2020", "21/07/2021", 800, 10, 2, 16000, 18000],
        ["Teresa Martinez Moreno", "18", "tmm@gmail.com", "Ortodoncia", "13/03/2019", "22/02/2021", 2000, 30, 18, 33000, 10000],
        ["Fernanda Hernandez Leal", "27", "fhl@gmail.com", "Ortodoncia", "06/11/2020", "01/05/2022", 600, 28, 18, 30000, 2000],
        ["Rubén Gutierrez Mendoza", "38", "fgm@gmail.com", "Ortodoncia", "03/08/2019", "23/06/2022", 1500, 10, 18, 20000, 3000],
        ["Azucena Aguas Garcia", "29", "aag@gmail.com", "Ortodoncia", "17/05/2019", "23/05/2021", 850, 24, 0, 23900, 0],
        ["Julio Moises Miranda", "42", "jmm@gmail.com", "Ortodoncia", "14/01/2017", "18/03/2019", 2500, 15, 2, 27500, 5000],
        ["Romeo Juarez Robles", "29", "rjr@gmail.com", "Ortodoncia", "05/09/2021", "05/11/2023", 1000, 20, 18, 30000, 18000],
        ["Susana Parra Carranza", "33", "spc@gmail.com", "Ortodoncia", "15/12/2015", "01/06/2017", 1000, 15, 0, 30000, 0],
        ["Rubén Gutierrez Mendoza", "38", "fgm@gmail.com", "Ortodoncia", "03/08/2019", "23/06/2022", 1500, 10, 18, 20000, 3000],
        ["Azucena Aguas Garcia", "29", "aag@gmail.com", "Ortodoncia", "17/05/2019", "23/05/2021", 850, 24, 0, 23900, 0],
        ["Julio Moises Miranda", "42", "jmm@gmail.com", "Ortodoncia", "14/01/2017", "18/03/2019", 2500, 15, 2, 27500, 5000],
        ["Romeo Juarez Robles", "29", "rjr@gmail.com", "Ortodoncia", "05/09/2021", "05/11/2023", 1000, 20, 18, 30000, 18000],
        ["Silvia Ruiz Robles", "23", "srr@gmail.com", "Ortodoncia", "15/12/2015", "01/06/2017", 1000, 15, 0, 30000, 0]
    ];
    return dataPacientes;
}
function getPacientesModal() {
    var dataPacientes = [
        //[Nombre, Edad, email, Tratamiento, Fecha Inicio, Fecha Cierre, $Mensualidad,# Mens cubiertas, # Mens. pendientes, $ Monto cubierto, $Monto Cubrir]
        ["Joaquín Gutierrez Robles", "24", "jgr@gmail.com"],
        ["Mario Ruiz Martinez", "31", "mrm@gmail.com"],
        ["Teresa Martinez Moreno", "18", "tmm@gmail.com"],
        ["Fernanda Hernandez Leal", "27", "fhl@gmail.com"],
        ["Rubén Gutierrez Mendoza", "38", "fgm@gmail.com"],
        ["Azucena Aguas Garcia", "29", "aag@gmail.com"],
        ["Julio Moises Miranda", "42", "jmm@gmail.com"],
        ["Romeo Juarez Robles", "29", "rjr@gmail.com"],
        ["Susana Parra Carranza", "33", "spc@gmail.com"],
        ["Rubén Gutierrez Mendoza", "38", "fgm@gmail.com"],
        ["Azucena Aguas Garcia", "29", "aag@gmail.com"],
        ["Julio Moises Miranda", "42", "jmm@gmail.com"],
        ["Romeo Juarez Robles", "29", "rjr@gmail.com"],
        ["Silvia Ruiz Robles", "23", "srr@gmail.com"]
    ];
    return dataPacientes;
}
function getAgenda1() {
    var dataAgenda = [
        //[Nombre, Edad, email, Tratamiento, Fecha Inicio, Fecha Cierre, $Mensualidad,# Mens cubiertas, # Mens. pendientes, $ Monto cubierto, $Monto Cubrir]
        ["1", "10/05/2021", "10:00 - 10:30", "Julio Moises Miranda", "Ortodoncia, ligas"],
        ["2", "10/05/2021", "10:30 - 11:00", "Susana Parra Carranza", "Ortodoncia, arco"],
        ["3", "10/05/2021", "11:00 - 11:30", "Disponible", "Disponible"],
        ["4", "10/05/2021", "11:30 - 12:00", "Disponible", "Disponible"],
        ["5", "10/05/2021", "12:00 - 12:30", "Romeo Juarez Robles", "Ortodoncia, Elastics"],
        ["6", "10/05/2021", "12:30 - 13:00", "Mario Ruiz Martinez", "Ortodoncia, Cadena"],
        ["7", "10/05/2021", "13:00 - 13:30", "Silvia Ruiz Robles", "Ortodoncia, Brackets"],
        ["8", "10/05/2021", "13:30 - 14:00", "Rodrigo Murcia Parrilla", "Ortodoncia, Guarda"],
        ["9", "10/05/2021", "16:00 - 16:30", "Disponible", "Disponible"],
        ["10", "10/05/2021", "16:30 - 17:00", "Disponible", "Disponible"],
        ["11", "10/05/2021", "17:00 - 17:30", "Disponible", "Disponible"],
        ["12", "10/05/2021", "17:30 - 18:00", "Disponible", "Disponible"],
        ["12", "10/05/2021", "18:00 - 18:30", "Disponible", "Disponible"],
        ["13", "10/05/2021", "18:30 - 19:00", "Disponible", "Disponible"]
    ];
    return dataAgenda;
}

function getAgenda2() {
    var dataAgenda = [
        //[Nombre, Edad, email, Tratamiento, Fecha Inicio, Fecha Cierre, $Mensualidad,# Mens cubiertas, # Mens. pendientes, $ Monto cubierto, $Monto Cubrir]
        ["1", "26/05/2021", "10:00 - 10:30", "Julio Montiel Lopez", "Ortodoncia, ligas"],
        ["2", "26/05/2021", "10:30 - 11:00", "Susana Ordaz Zito", "Ortodoncia, arco"],
        ["3", "26/05/2021", "11:00 - 11:30", "Disponible", "Disponible"],
        ["4", "26/05/2021", "11:30 - 12:00", "Disponible", "Disponible"],
        ["5", "26/05/2021", "12:00 - 12:30", "Disponible", "Disponible"],
        ["6", "26/05/2021", "12:30 - 13:00", "Disponible", "Disponible"],
        ["7", "26/05/2021", "13:00 - 13:30", "Silvia Centeno Barrientos", "Ortodoncia, Brackets"],
        ["8", "26/05/2021", "13:30 - 14:00", "Rodrigo Murcia Parrilla", "Ortodoncia, Guarda"],
        ["9", "26/05/2021", "16:00 - 16:30", "Disponible", "Disponible"],
        ["10", "26/05/2021", "16:30 - 17:00", "Luis Pacheco Quintanilla", "Limpieza"],
        ["11", "26/05/2021", "17:00 - 17:30", "Disponible", "Disponible"],
        ["12", "26/05/2021", "17:30 - 18:00", "Disponible", "Disponible"],
        ["12", "26/05/2021", "18:00 - 18:30", "Disponible", "Disponible"],
        ["13", "26/05/2021", "18:30 - 19:00", "Disponible", "Disponible"]
    ];
    return dataAgenda;
}

function getAgendaPaciente() {
    var dataAgenda = [
        //[Nombre, Edad, email, Tratamiento, Fecha Inicio, Fecha Cierre, $Mensualidad,# Mens cubiertas, # Mens. pendientes, $ Monto cubierto, $Monto Cubrir]
        ["1", "28/05/2021", "18:00 - 18:30", "Azucena Aguas Garcia", "Ortodoncia, ligas"],
        ["2", "26/06/2021", "18:00 - 18:30", "Azucena Aguas Garcia", "Ortodoncia, arco"],
        ["7", "26/07/2021", "18:00 - 18:30", "Azucena Aguas Garcia", "Ortodoncia, Brackets"],
        ["8", "26/08/2021", "18:00 - 18:30", "Azucena Aguas Garcia", "Ortodoncia, Guarda"],
    ];
    return dataAgenda;
}



function modalConfirmaAgenda() {
    var paciente = $("#paciente-agendar").val();

    if (paciente === "") {
        UIkit.notification({
            message: "Para agendar una cita se deben llenar todos los campos del formulario",
            status: 'danger',
            pos: 'top-center',
            timeout: 5000
        });




    } else {
        UIkit.notification({
            message: "La cita se agendó de forma correcta",
            status: 'success',
            pos: 'top-center',
            timeout: 5000
        });

//Agregar a tabla

        var t = $('#listaAgenda').DataTable();
        
        t.row.add([
            'Cita Ejemplo',
            'Cita Ejemplo',
            'Cita Ejemplo',
            'Cita Ejemplo',
            'Cita Ejemplo'
        ]).draw(true);
        counter++;
    }

}