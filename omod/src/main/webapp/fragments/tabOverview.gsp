
<script>

	var jq = jQuery;

    jq(function () {
        
		showOnSelect("#otherOccupationDiv", "#occupation", "Other");
		showOnSelect("#otherInjuryPlaceDiv", "#injuryPlace", "Other");
		
    });    
        
</script>
    

<h2 class="top">Patient Details</h2>

<div class="onerow">
    <div class="col4">	    
        <label>Gender</label>                
        <span class="select-arrow">
			<select id="gender" class="form-combo1">
			    <option value=""></option>
			    <option value="Male">Male</option>
			    <option value="Female">Female</option>
			</select>
        </span>
    </div>

    <div class="col4">
        <label>Occupation</label>
    	<span class="select-arrow">
	        <select id="occupation" class="form-combo1">
		        <option value=""></option>
		        <option value="Peasant farmer">Peasant farmer</option>
		        <option value="Housewife">Housewife</option>
		        <option value="Civil servant/private employee">Civil servant/private employee</option>
		        <option value="Driver/conductor">Driver/conductor</option>
		        <option value="Casual laborer">Casual laborer</option>
		        <option value="Large business owner">Large business owner</option>
		        <option value="Small business owner">Small business owner</option>
		        <option value="Student">Student</option>
		        <option value="Child/baby">Child/baby</option>
		        <option value="Unemployed">Unemployed</option>
		        <option value="Other">Other</option>	                            	                            
	        </select>
        </span>
    </div>
    
    <div class="col4 last" id="otherOccupationDiv">
        <label>Please specify "other" occupation</label>
        <input type="text" id="otherOccupation" class="form-textbox1"/>
    </div>
</div>

<div class="clear"></div>
<h2>Where Did The Injury Occur?</h2>

<div class="onerow">
	<div class="col4">
		<label>Town (in which the injury occurred)</label>
    	<input type="text" id="town" class="form-textbox1"/>
    </div>

	<div class="col4">
		<label>District</label>
        <input type="text" id="district" class="form-textbox1"/>
    </div>
</div>

<div class="onerow">
	<div class="col4">
		<label>Place</label>
        <span class="select-arrow">
			<select id="injuryPlace" class="form-combo1">
			    <option value=""></option>
			    <option value="Home">Home</option>
			    <option value="Farm">Farm</option>
			    <option value="Industry">Industry</option>
			    <option value="Sport/recreation">Sport/recreation</option>
			    <option value="Road/street">Road/street</option>
			    <option value="Public building">Public building</option>
			    <option value="School">School</option>
			    <option value="Other">Other</option>
			</select>
        </span>
	</div>

	<div class="col4" id="otherInjuryPlaceDiv">
		<label>Please specify "other" place</label>
        <input type="text" id="otherInjuryPlace" class="form-textbox1"/>
    </div>
</div>

<div class="clear"></div>

<div class="onerow" style="margin-top: 50px;">
    <a class="button confirm next-tab-button">
        <span>NEXT</span>
    </a>
</div>
	
<div class="clear"></div>