<% ui.decorateWith("appui", "standardEmrPage", [title: "Trauma Registry"]) %>


<div class="clear"></div>
<div class="content">

	<div>
		${ ui.includeFragment("traumaregistry", "breadcrumbs", 
			[
				title: "Trauma Registry",
			]) }
	</div>
	
	<div class="patient-header new-patient-header">
	
		${ ui.includeFragment("traumaregistry", "header", [title: "Trauma Registry"]) }


		<div style="text-align: left; margin:60px 0 60px 0;">
		<div>Patient Search:</div>
				${ ui.includeFragment("traumaregistry", "quickSearch") }
		</div>
	</div>
</div>





	

	


