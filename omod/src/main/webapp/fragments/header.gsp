
<%
    def title = config.title
%>

<style>
	.name {
		color: #f26522;
	}
</style>

<div>
	<div class="demographics">
		<h1 class="name" style="border-bottom: 1px solid #ddd;">
			<span>${ title } &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
		</h1>

		<br>
	</div>

	<div class="identifiers">
		<em>Current Time:</em>
		<span><%=new Date()%></span>
	</div>
</div>
