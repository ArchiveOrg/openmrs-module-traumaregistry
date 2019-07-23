
<%
    def title = config.title
	def links = config.links
%>

<div>
	<ul id="breadcrumbs">
		<li>
			<a href="${ui.pageLink('referenceapplication','home')}">
				<i class="icon-home small"></i></a>
		</li>
		
		<% if(links) { %>
			<% links.each { lnk -> %>

				<li>
					<i class="icon-chevron-right link"></i>
					<a href="${ lnk.href }">${ lnk.name }</a>
				</li>

			<% } %>
		<% } %>
				
		<% if (title) { %>

			<li>
				<i class="icon-chevron-right link"></i>
				<%= title %>
			</li>
		
		<% } %>
	</ul>
</div>





