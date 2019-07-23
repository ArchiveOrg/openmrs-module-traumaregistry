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
				<centre>
					<a class="button confirm fixedwidth big" onclick="javascript:window.location.href='newPatientRegistration.page'">
						<i class=" icon-plus"></i>
						Create New Patient Yay!
					</a>

					<a class="button task fixedwidth big" onclick="javascript:window.location.href='revisitPatientRegistration.page'">
						<i class=" icon-user"></i>
						Revisiting Patient
					</a>
					
					<a class="button task fixedwidth big" onclick="javascript:window.location.href='revisitPatientRegistration.page'">
						<i class=" icon-file-alt"></i>
						Report
					</a>
				</centre>
			</div>
		</div>
	</div>
</div>

