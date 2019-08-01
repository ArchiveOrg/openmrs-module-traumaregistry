

<% ui.decorateWith("appui", "standardEmrPage", [title: "Trauma Registry"]) %>

${ ui.includeFragment("traumaregistry", "breadcrumbs", 
	[
		title: "My Test Page",
		links: 
		[
			[name: "Google", href: "www.google.com"],
			[name: "Facebook", href: "www.facebook.com"]
		]
	]) }
	
${ ui.includeFragment("traumaregistry", "header", [title: "TRAUMA REGISTRY"]) } 