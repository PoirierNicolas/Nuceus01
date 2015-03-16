<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="fr.noixcoop.nuceus.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%
	MetierVarietes metier = new MetierVarietes();
%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Nuceux0.1</title>
</head>
<body>
	<h1>Liste des variétés de Noix</h1>
	<hr/>
	<% 
		List<Variete> varietes = metier.consulter();
	%>
	<table border="1" style="border-collapse:collapse">
		<thead>
			<tr>
				<th>Libellé</th>
				<th>AOC</th>
			</tr>
		</thead>
		<tbody>
			<%
				String test;
				for(Variete variete : varietes){
					if(variete.isAoc()){
						test="Oui";
					}
					else{
						test="Non";
					}
			%>
			<tr>
				<td>
					<%= variete.getLibelle() %>
				</td>
				<td>
					<%= test %>
				</td>
			</tr>
		<%
				}	
		%>
		</tbody>
	</table>
</body>
</html>