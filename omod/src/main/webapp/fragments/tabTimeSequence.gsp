

<script>

	var jq = jQuery;

    jq(function () {
		showOnSelect("#otherHospitalDiv", "#primaryPresentation", "Other hosptial");
		showOnSelect("#localClinicDiv", "#primaryPresentation", "Local clinic");
		showOnSelect("#otherPresentationDiv", "#primaryPresentation", "Other");

		addDatePicker("#injuryDate");
		addDatePicker("#arrivalDate");
		addDatePicker("#practionerArrivalDate");

		addTimePicker("#injuryTime");
		addTimePicker("#arrivalTime");
		addTimePicker("#practitionerArrivalTime");
    });    

   	function addDatePicker(id)
	{
        jq(id).datepicker({
            changeMonth: true,
            changeYear: true,
            dateFormat: 'dd/mm/yy'
        })	
	}

   	function addTimePicker(id)
	{
        jq(id).timepicker({
        	timeFormat: 'h:mm p',
            dropdown: false
        })	
	}
   	

    
</script>


<style>
	.calendar {
	    margin-top: -30px;
	    float: right
	}
</style>


<h2 class="top">When did the injury occur?</h2>

<div class="onerow">
	<div class="col4">
		<label>Injury Date</label>
      	<input type="text" id="injuryDate" class="required form-textbox1" placeholder="DD/MM/YYYY"/>
      	<div class="calendar"><i class="icon-calendar small">&nbsp;</i></div>
    </div>

	<div class="col4">
		<label>Time Injury Occurred</label>
        <input type="text" id="injuryTime" class="form-textbox1"/>
    </div>
</div>

<div class="onerow">

</div>

<div class="clear"></div>
<h2>When did the patient arrive at the Mbarara Regional Referral Hospital?</h2>

<div class="onerow">

	<div class="col4">
		<label>Arrival Date</label>
        <input type="text" id="arrivalDate" class="form-textbox1"/>
        <div class="calendar"><i class="icon-calendar small">&nbsp;</i></div>
    </div>

	<div class="col4">
		<label>Time Patient Arrived</label>
        <input type="text" id="arrivalTime" class="form-textbox1"/>
    </div>
</div>

<div class="onerow">
    <div class="col4">	    
        <label>Location of Primary Presentation</label>                
        <span class="select-arrow">
			<select id="primaryPresentation" class="form-combo1">
			    <option value=""></option>
			    <option value="Mbarara Regional Referral Hospital">Mbarara Regional Referral Hospital</option>
			    <option value="Other hosptial">Other hospital</option>
   			    <option value="Local clinic">Local clinic</option>
   			    <option value="Other">Other</option>
			</select>
        </span>
    </div>
    
    <div class="col4" id="otherHospitalDiv">
        <label>Please specify the "other hospital" that the patient presented at before coming to Mbarara Regional Hospital</label>
        <input type="text" id="otherHospital" class="form-textbox1"/>
    </div>

    <div class="col4" id="localClinicDiv">
        <label>Please specify the "local clinic" that the patient presented at before coming to Mbarara Regional Hospital</label>
        <input type="text" id="localClinic" class="form-textbox1"/>
    </div>
    
    <div class="col4" id="otherPresentationDiv">
        <label>Please specify the "other" primary presentation location.</label>
        <input type="text" id="otherPresentation" class="form-textbox1"/>
    </div>
    
</div>

<div class="onerow">
	<div class="col4">
		<label>Method of Transport to Hospital</label>
		<span class="select-arrow">
			<select id="methodOfTransport" class="form-combo1">
			    <option value=""></option>
			    <option value="Good Samaritan">Good Samaritan</option>
			    <option value="Family">Family</option>
   			    <option value="Ambulance">Ambulance</option>
   			    <option value="Self">Self</option>
			</select>
        </span>
	
    </div>
</div>

<div class="clear"></div>
<h2>When did the health care professional arrive to see that patient?</h2>

<div class="onerow">
	<div class="col4">
		<label>Health Practitioner Arrival Date</label>
        <input type="text" id="practionerArrivalDate" class="form-textbox1"/>
        <div class="calendar"><i class="icon-calendar small">&nbsp;</i></div>
    </div>

	<div class="col4">
		<label>Time Health Practitioner Arrived</label>
        <input type="text" id="practitionerArrivalTime" class="form-textbox1"/>
    </div>
</div>


<div class="clear"></div>

<div class="onerow" style="margin-top: 50px;">
    <a class="button task prev-tab-button">
        <span>PREVIOUS</span>
    </a>

    <a class="button confirm next-tab-button">
        <span>NEXT</span>
    </a>
</div>
	
<div class="clear"></div>