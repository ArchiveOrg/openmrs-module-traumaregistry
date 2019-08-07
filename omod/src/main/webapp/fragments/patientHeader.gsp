

<style>

	.name {
		color: #f26522;
	}

	.new-patient-header .demographics .gender-age {
		font-size: 14px;
		margin-left: -55px;
		margin-top: 12px;
	}
	.new-patient-header .demographics .gender-age span {
		border-bottom: 1px none #ddd;
	}

	.new-patient-header .identifiers {
	    padding-top: 15px;
	}

</style>

<div class="patient-header new-patient-header"> 	

	<div class="demographics">
		<h1 class="name">
			<span id="surname">${patient.familyName},<em>surname</em></span>
			<span id="othname">${patient.givenName} ${patient.middleName?patient.middleName:''}&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<em>other names</em></span>
			
			<span class="gender-age">
				<span>
					<% if (patient.gender == "F") { %>
						Female
					<% } else { %>
						Male
					<% } %>
					</span>
				<span id="agename">${patient.age} years (${ui.formatDatePretty(patient.birthdate)}) </span>
			</span>
		</h1>
	</div>
	
	<div class="identifiers">
		<em>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Patient ID</em>
		<span>${patient.getPatientIdentifier()}</span>
		<br>
	</div>
	
</div>	