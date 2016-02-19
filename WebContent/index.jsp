<!DOCTYPE html>
<html lang="en">
<head>
<title>Teste AJAX</title>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script>
	$(document).on("click", "#botao", function() { // When HTML DOM "click" event is invoked on element with ID "somebutton", execute the following function...
		$.get("ajaxservlet", function(responseJson) { // Execute Ajax GET request on URL of "someservlet" and execute the following function with Ajax response JSON...
			var $table = $("<table border = '1'>").appendTo($("#divprincipal")); // Create HTML <table> element and append it to HTML DOM element with ID "somediv".
			$.each(responseJson, function(index, produto) { // Iterate over the JSON array.
				$("<tr>").appendTo($table) // Create HTML <tr> element, set its text content with currently iterated item and append it to the <table>.
				.append($("<td>").text(produto.id)) // Create HTML <td> element, set its text content with id of currently iterated product and append it to the <tr>.
				.append($("<td>").text(produto.nome)) // Create HTML <td> element, set its text content with name of currently iterated product and append it to the <tr>.
				.append($("<td>").text(produto.valor)); // Create HTML <td> element, set its text content with price of currently iterated product and append it to the <tr>.
			});
		});
	});
</script>
</head>
<body>
	<button id="botao">Click</button>
	<div id="divprincipal"></div>
</body>
</html>