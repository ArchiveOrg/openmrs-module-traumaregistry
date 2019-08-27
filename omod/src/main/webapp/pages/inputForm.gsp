<% ui.decorateWith("appui", "standardEmrPage", [title: "Trauma Registry"]) %>

<%
	ui.includeCss("traumaregistry", "onepcssgrid.css")
	
	ui.includeJavascript("traumaregistry", "jquery.timepicker.min.js")
	ui.includeCss("traumaregistry", "jquery.timepicker.min.css")
%>

<!-- These scripts are shared across all the tabs -->
<script>
    var jq = jQuery;

       jq(function () {
           jq("#tabs").tabs();

           jq(".next-tab-button").click(function() {
               var selected = jq("#tabs").tabs("option", "selected");
               jq("#tabs").tabs("option", "selected", selected + 1);
           });

           jq(".prev-tab-button").click(function() {
               var selected = jq("#tabs").tabs("option", "selected");
               jq("#tabs").tabs("option", "selected", selected - 1);
           });
       });


   	function showOnSelect(target, selector, value)
	{
		jq(target).hide();
		
		jq(selector).change(function() {
	        if(jq(selector).val() == value) 
		    {
	            jq(target).show(); 
	        } 
	        else 
		    {
	            jq(target).hide(); 
	        } 
		});		
	}
     	
</script>


<!-- These styles are shared across all the tabs -->
<style>

h2 {
	margin-top: 50px;
}

h2.top {
	margin-top: 20px;
}

.onerow {
	padding: 10px 10px;
}

.tab {
	background: #F9F9F9!important;
}

input[type="text"],
input[type="password"] {
	 border: 1px solid #aaa;
	 border-radius: 5px!important;
	 box-shadow: none!important;
	 box-sizing: border-box!important;
	 height: 38px!important;
	 line-height: 18px!important;
	 padding: 8px 10px!important;
	 text-transform: capitalize;
	 width: 100%!important;
}

select {
	width:100%;
	border: 1px solid #aaa;
	border-radius: 5px!important;
	box-shadow: none!important;
	box-sizing: border-box!important;
	height: 38px!important;
	line-height: 18px!important;
	padding: 8px 10px!important;
}

span.select-arrow {
	width: 100%;
}

.simple-form-ui input:focus, select:focus {
	outline: 1px none #007fff!important;
	box-shadow: 0 0 2px 0px #888!important;

}

.prev-tab-button {
	width: 100px;
	text-align: center;;
}

.next-tab-button {
	width: 100px;
	text-align: center;
	float: right;
	display: inline-block;
}

</style>


<div class="clear"></div>
<div class="content">

	<div class="breadcrumbs">
		${ ui.includeFragment("traumaregistry", "breadcrumbs", 
			[
				title: "Input Form",
				links: 
				[
					[name: "Trauma Registry", href: ui.pageLink('traumaregistry','main')],
				]
			]) }
	</div>
		
	<div>
		${ui.includeFragment("traumaregistry", "patientHeader", [patient: patient]) }
	</div>	
		
	<form class="simple-form-ui" action="">
		
		<div id="tabs">
			<ul id="inline-tabs">
				<li><a href="#overview">Overview</a></li>
				<li><a href="#timeSequence">Time Sequence</a></li>
				<li><a href="#causeOfInjuryTab">Cause of Injury</a></li>
				<li><a href="#kts">KTS</a></li>
				<li><a href="#otherTab">Other</a></li>
				<li><a href="#twoWeek">Two-Week Follow-Up Period</a></li>
			</ul>
			
			<div id="overview" class="tab">
				${ ui.includeFragment("traumaregistry", "tabOverview") }						
			</div>
			
			<div id="timeSequence" class="tab">
				${ ui.includeFragment("traumaregistry", "tabTimeSequence") }
			</div>
			
			<div id="causeOfInjuryTab" class="tab">
				${ ui.includeFragment("traumaregistry", "tabCauseOfInjury") }
			</div>
			
			<div id="kts" class="tab">
				${ ui.includeFragment("traumaregistry", "tabKts") }			
			</div>
			
			<div id="otherTab" class="tab">
				${ ui.includeFragment("traumaregistry", "tabOther") }				
			</div>
			
			<div id="twoWeek" class="tab">
				${ ui.includeFragment("traumaregistry", "tabTwoWeekFollowUp") }			
			</div>
		</div>
	
	</form>
		
</div>
