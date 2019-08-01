<% ui.decorateWith("appui", "standardEmrPage", [title: "Trauma Registry"]) %>


<head>
	<script>
	    var jq = jQuery;

        jq(function () {
            jq("#tabs").tabs();
        });
		
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
						title: "Patient Info",
						links: 
						[
							[name: "Trauma Registry", href: ui.pageLink('traumaregistry','main')],
						]
					]) }
			</div>

		</div>
		
		<div class="patient-header new-patient-header">
		
			${ ui.includeFragment("traumaregistry", "header", [title: "Patient Info"]) }
			
			<div id="tabs" style="margin-top: 40px!important;">
				<ul id="inline-tabs">
					<li><a href="#overview">Overview</a></li>
					<li><a href="#timeSequence">Time Sequence</a></li>
					<li><a href="#causeOfInjury">Cause of Injury</a></li>
					<li><a href="#kts">KTS</a></li>
					<li><a href="#twoWeek">Two-Week Follow-Up Period</a></li>
					
				</ul>
				
				<div id="overview">
				overview
				</div>
				
				<div id="timeSequence">
				time sequence
				</div>
				
				<div id="causeOfInjury">
				cause
				</div>

				<div id="kts">
				kts
				</div>

				<div id="twoWeek">
				twoWeek
				</div>


				

			</div>
		</div>
	</div>
</body>