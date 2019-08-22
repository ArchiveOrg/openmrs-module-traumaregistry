<h2 class="top">Other</h2>

<div class="onerow">

	<div class="col4">
		<label>Body Areas With Serious Injuries</label>	
		
		<div>
		    <input type="checkbox" id="nilCheckbox" name="injury_nil" value="nil">
    		<label for="nilCheckbox">Nil</label>
		</div>

		<div>
		    <input type="checkbox" id="headCheckbox" name="injury_head" value="head/neck/face">
    		<label for="headCheckbox">Head/neck/face</label>
		</div>

		<div>
		    <input type="checkbox" id="chestCheckbox" name="injury_chest" value="chest">
    		<label for="chestCheckbox">Chest</label>
		</div>
	
		<div>
		    <input type="checkbox" id="spinalCheckbox" name="injury_spinal" value="spinal cord injury">
    		<label for="spinalCheckbox">Spinal cord injury</label>
		</div>
	
		<div>
		    <input type="checkbox" id="abdomentCheckbox" name="injury_abdomen" value="abdoment/pelvis/peritoneumn">
    		<label for="abdomentCheckbox">Abdomen/pelvis/peritoneum</label>
		</div>

		<div>
		    <input type="checkbox" id="extremitiesCheckbox" name="injury_extremities" value="bony pelvis and extremities">
    		<label for="extremitiesCheckbox">Bony pelvis and extremities</label>
		</div>
	
	</div>

	<div class="col4">
		<label>Pulse on Admission</label>
		<span class="select-arrow">
			<select name="pulseOnAdmission">
				<option value=""></option>
				<option value="Undetectable">Undetectable</option>
				<option value="< 50 / minute">&lt; 50 / minute</option>
				<option value="51-120 / minute">51-120 / minute</option>
				<option value="121-140 / minute">121-140 / minute</option>
				<option value="141-160 / minute">141-160 / minute</option>
				<option value="< 160 / minute">&gt; 160 / minute</option>
			</select>
		</span>
	</div>
</div>


<div class="onerow">
	<div class="col4">
		<label>Patient Disposition</label>
		<span class="select-arrow">
			<select name="patientDisposition">
				<option value=""></option>
				<option value="Treated and sent home">Treated and sent home</option>
				<option value="Admitted">Admitted</option>
				<option value="Died in casualty department">Died in casualty department</option>
				<option value="Transferred to higher level facility">Transferred to higher level facility</option>
				<option value="Dead on arrival (DOA)">Dead on arrival (DOA)</option>
			</select>
		</span>
	</div>
	
	<div class="col4">
		<label>Had Operation</label>
		<span class="select-arrow">
			<select name="hadOperation">
				<option value=""></option>
				<option value="Yes">Yes</option>
				<option value="No">No</option>
				<option value="Unknown">Unknown</option>
			</select>
		</span>
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