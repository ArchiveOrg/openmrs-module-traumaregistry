<% ui.decorateWith("appui", "standardEmrPage", [title: "Trauma Registry"]) %>


<head>
	<script>

		
	</script>


	<style>
	

	
	</style>
</head>


<body>
	<div class="clear"></div>
	<div class="container">
		<div class="example">

			<div>
				${ ui.includeFragment("traumaregistry", "breadcrumbs", 
					[
						title: "Patient Search",
						links: 
						[
							[name: "Trauma Registry", href: ui.pageLink('traumaregistry','main')],
						]
					]) }
			</div>

		</div>
		
		<div class="patient-header new-patient-header">
		
			${ ui.includeFragment("traumaregistry", "header", [title: "Patient Search"]) }
			
			
				

			</div>
		</div>
	</div>
</body>