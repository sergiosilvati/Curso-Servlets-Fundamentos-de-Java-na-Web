<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
	<body>
		Bem vindo ao nosso gerenciador de empresas!<br/>
		<c:if test="${not empty usuarioLogado }">
			Voce esta logado como ${usuarioLogado.email }<br/>
		</c:if>
		<form action="executa" method="POST">
			<input type="hidden" name="tarefa" value="NovaEmpresa"/>
			<input type="text" name="nome" /><br/>
			<input type="submit" value="Enviar"/>
		</form>
		
		<form action="login" method="post">
		    Email: <input type="text" name="email" /><br />
		    Senha: <input type="password" name="senha" /><br />
		    <input type="submit" value="Login" />
		</form>
		
		<form action="executa" method="POST">
			<input type="hidden" name="tarefa" value="Logout"/>
			<input type="submit" value="Deslogar"/>
		</form>
	</body>
</html>