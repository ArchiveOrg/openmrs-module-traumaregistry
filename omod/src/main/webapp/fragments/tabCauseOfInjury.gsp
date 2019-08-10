<script>

	var jq = jQuery;

    jq(function () {
        
		showOnSelect("#trafficAccidentSpecificsDiv", "#causeOfInjury", "Traffic accident");
		showOnSelect("#otherCauseOfInjuryDiv", "#causeOfInjury", "Other");
		
		showOnSelect("#carTruckBusSpecificsDiv", "#trafficAccidentSpecifics", "Car/Truck/Bus");
		showOnSelect("#motorcycleAccientSpecificsDiv", "#trafficAccidentSpecifics", "Motorcycle");
		
		showOnSelect("#driverRestrainedDiv", "#carTruckBusSpecifics", "Driver");
		showOnSelect("#passengerRestrainedDiv", "#carTruckBusSpecifics", "Passenger");

		showOnSelect("#driverRestrainedDiv", "#motorcycleAccidentSpecifics", "Driver");
		showOnSelect("#passengerRestrainedDiv", "#motorcycleAccidentSpecifics", "Passenger");
		
		
		showOnSelect("#intentSpecificsDiv", "#intent", "Intentional");


        /*********** reset fields if their parent changes: ***************************/
		jq("#causeOfInjury").change(function() {
			jq("#trafficAccidentSpecifics").val("").change();
		});	

		jq("#trafficAccidentSpecifics").change(function() {
			jq("#carTruckBusSpecifics").val("").change();
			jq("#motorcycleAccidentSpecifics").val("").change();
			jq("#wearingAHelmet").val("").change();
		});
		
    });
    
</script>


<h2 class="top">Cause of Injury</h2>

<div class="onerow">
    <div class="col4">	    
        <label>Cause of Injury</label>                
        <span class="select-arrow">
	        <select id="causeOfInjury" class="form-combo1">
				<option value=""></option>
				<option value="Traffic accident">Traffic accident</option>
				<option value="Unintentional fall">Unintentional fall</option>
				<option value="Burn">Burn</option>
				<option value="Gunshot">Gunshot</option>
				<option value="Stab/cut">Stab/cut</option>
				<option value="Blunt injury">Blunt injury</option>
				<option value="Poisoning">Poisoning</option>
				<option value="Animal Bite">Animal Bite</option>
				<option value="Other">Other</option>
	        </select>
        </span>
    </div>

    <div class="col4" id="trafficAccidentSpecificsDiv">
        <label>Traffic Accident Specifics</label>
    	<span class="select-arrow">
	        <select id=trafficAccidentSpecifics class="form-combo1">
		        <option value=""></option>
		        <option value="Car/Truck/Bus">Car/Truck/Bus</option>
		        <option value="Motorcycle">Motorcycle</option>
		        <option value="Bicyclist">Bicyclist</option> 
		        <option value="Pedestrian">Pedestrian</option>     	                                	                            
	        </select>
        </span>
    </div>
    
    <div class="col4 last" id="otherCauseOfInjuryDiv">
		<label>Please specify "other" cause of injury</label>
        <input type="text" id="otherCauseOfInjury" class="form-textbox1"/>
    </div>
</div>

<div class="onerow" id="carTruckBusSpecificsDiv">
    <div class="col4">
        <label>Car/Truck/Bus Specifics</label>
    	<span class="select-arrow">
	        <select id="carTruckBusSpecifics" class="form-combo1">
		        <option value=""></option>
		        <option value="Driver">Driver</option>
		        <option value="Passenger">Passenger</option>   	                            
	        </select>
        </span>
    </div>
</div>

<div class="onerow" id="motorcycleAccientSpecificsDiv">
    <div class="col4">
        <label>Motorcycle Accident Specifics</label>
    	<span class="select-arrow">
	        <select id="motorcycleAccidentSpecifics" class="form-combo1">
		        <option value=""></option>
		        <option value="Driver">Driver</option>
		        <option value="Passenger">Passenger</option>   	                            
	        </select>
        </span>
    </div>

    <div class="col4">
        <label>Motorcycle - Wearing a Helmet?</label>
    	<span class="select-arrow">
	        <select id="wearingAHelmet" class="form-combo1">
		        <option value=""></option>
		        <option value="Yes">Yes</option>
		        <option value="No">No</option>   	                            
	        </select>
        </span>
    </div>
</div>

<div class="onerow" id="driverRestrainedDiv">
    <div class="col4">
        <label>Driver - Restrained?</label>
    	<span class="select-arrow">
	        <select id="driverRestrained" class="form-combo1">
		        <option value=""></option>
		        <option value="Yes">Yes</option>
		        <option value="No">No</option>   	                            
	        </select>
        </span>
    </div>
</div>

<div class="onerow" id="passengerRestrainedDiv">
    <div class="col4">
        <label>Passenger - Restrained?</label>
    	<span class="select-arrow">
	        <select id="passengerRestrained" class="form-combo1">
		        <option value=""></option>
		        <option value="Yes">Yes</option>
		        <option value="No">No</option>   	                            
	        </select>
        </span>
    </div>
</div>


<div class="clear"></div>
<h2>Additional Details</h2>

<div class="onerow">
    <div class="col4">
        <label>Intent</label>
    	<span class="select-arrow">
	        <select id="intent" class="form-combo1">
		        <option value=""></option>
		        <option value="Intentional">Intentional</option>
		        <option value="Unintentional">Unintentional</option>  
	     	    <option value="Undetermined">Undetermined</option>  	                            
	        </select>
        </span>
    </div>
    
    <div class="col4" id="intentSpecificsDiv">
        <label>Please specify injury "intent"</label>
    	<span class="select-arrow">
	        <select id="intentSpecifics" class="form-combo1">
		        <option value=""></option>
		        <option value="Self-inflicted">Self-inflicted</option>
		        <option value="Assault">Assault</option>                              
	        </select>
        </span>
    </div>
</div>

<div class="onerow">
    <div class="col4">
        <label>Alcohol Involved</label>
    	<span class="select-arrow">
	        <select id="alcholInvolved" class="form-combo1">
		        <option value=""></option>
		        <option value="Yes">Yes</option>
		        <option value="No">No</option>  
	     	    <option value="Unknown">Unknown</option>  	                            
	        </select>
        </span>
    </div>
    
    <div class="col4">
        <label>Other Substances Involved</label>
    	<span class="select-arrow">
	        <select id="otherSubstancesInvolved" class="form-combo1">
		        <option value=""></option>
		        <option value="Yes">Yes</option>
		        <option value="No">No</option>  
	     	    <option value="Unknown">Unknown</option>  	                           
	        </select>
        </span>
    </div>
</div>

<div class="onerow">
    <div class="col12">
        <label>Patient activity/event during time of injury</label>
        <input type="text" id="patientActivity" class="form-textbox1"/>
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