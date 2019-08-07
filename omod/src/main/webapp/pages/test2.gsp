<%
    ui.decorateWith("appui", "standardEmrPage")
    ui.includeCss("coreapps", "findpatient/findPatient.css")
    ui.includeCss("uicommons", "datatables/dataTables_jui.css")
    ui.includeJavascript("uicommons", "datatables/jquery.dataTables.min.js")
    ui.includeJavascript("coreapps", "findpatient/patientSearchWidget.js")
    ui.includeJavascript("uicommons", "moment.min.js")
%>

<script type="text/javascript">



    jq(function() {
        var widgetConfig = {
            initialPatients : [],
            minSearchCharacters: ${3},
            afterSelectedUrl: '${ ui.escapeJs("www.google.com") }',
            messages: {
                info: '${ ui.message("coreapps.search.info") }',
                first: '${ ui.message("coreapps.search.first") }',
                previous: '${ ui.message("coreapps.search.previous") }',
                next: '${ ui.message("coreapps.search.next") }',
                last: '${ ui.message("coreapps.search.last") }',
                noMatchesFound: '${ ui.message("coreapps.search.noMatchesFound") }',
                noData: '${ ui.message("coreapps.search.noData") }',
                recent: '${ ui.message("coreapps.search.label.recent") }',
                searchError: '${ ui.message("coreapps.search.error") }',
                identifierColHeader: '${ ui.message("coreapps.search.identifier") }',
                nameColHeader: '${ ui.message("coreapps.search.name") }',
                genderColHeader: '${ ui.message("coreapps.gender") }',
                ageColHeader: '${ ui.message("coreapps.age") }',
                birthdateColHeader: '${ ui.message("coreapps.birthdate") }'
            }
        };

        
        /*var tableId = 'patient-search-results-table';
        var tableHtml = '<table id="'+tableId+'">'+
                            '<thead>'+
                                '<tr>'+
                                    '<th>A</th>'+
                                    '<th>B</th>'+
                                    '<th>C</th>'+
                                    '<th>C</th>'+
                                    '<th>E</th>'+
                                '</tr>'+
                            '</thead>'+
                            '<tbody></tbody>'+
                        '</table>';


        jq('#patient-search-results').append(tableHtml);*/
        jq('#patient-search-results').show();

        
        new PatientSearchWidget(widgetConfig);


        jq('#patient-search-results').show();


		var col = '<th class="ui-state-default" style="width: 200px;">'+
                '<div class="DataTables_sort_wrapper">Actions<span class="DataTables_sort_icon"></span></div>'+
            '</th>';

        
        jq('#patient-search-results-table tr').append(col)
        

        
        jq('#patient-search').focus();
    });
</script>

<h2>

</h2>

<form method="get" id="patient-search-form" onsubmit="return false">
    <input type="text" id="patient-search" placeholder="${ ui.message("coreapps.findPatient.search.placeholder") }" autocomplete="off"/>
</form>

<div id="patient-search-results"></div>
