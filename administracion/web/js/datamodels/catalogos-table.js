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