<% ui.decorateWith("appui", "standardEmrPage", [title: "Trauma Registry"]) %>

<style>
	.name {
		color: #f26522;
	}
</style>

<div class="clear"></div>
<div class="container">

	<div>
		${ ui.includeFragment("traumaregistry", "breadcrumbs", 
			[
				title: "Trauma Registry",
			]) }
	</div>
	
	<div class="patient-header new-patient-header">
	
		${ ui.includeFragment("traumaregistry", "header", [title: "Trauma Registry"]) }


		<div class="onerow">
			<div style="text-align: center; margin:60px 0 60px 0;">
			
			TODO


			</div>
		</div>
	</div>
</div>

