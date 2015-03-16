<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="fr.noixcoop.nuceus.*" %>
<!DOCTYPE html>
<%
	MetierVarietes metier = new MetierVarietes();
%>
<html lang="fr">
<link href="style/bootstrap-3.3.2-dist/css/bootstrap.css" rel="stylesheet">
	<head>
		<meta charset="UTF-8">
	</head>
	<body>
		<div class="text-center">
			<h1>Liste des variétés de Noix</h1>
		</div>
	<hr/>
		<% 
			List<Variete> varietes = metier.consulter();
		%>
		<div class="container">
			<div class="row">
				<div class="col-sm-6 col-sm-offset-5">
					<table border="1" style="border-collapse:collapse" class="table-hover">
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
				</div>
			</div>
		</div>
	</body>
</html>