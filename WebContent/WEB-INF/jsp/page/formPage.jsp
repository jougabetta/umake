<%@include file="../../../admin/header.jsp" %>

<c:if test="${retorno == true}">

	<p>P�gina ${tipoSubmit} com sucesso!</p>

</c:if>
<c:if test="${retorno == false}">

	<p>ERRO! P�gina n�o foi ${tipoSubmit}.</p>

</c:if>

	<div id="dialog-confirm">
	   <p>Voc� realmente deseja excluir essa p�gina?</p>
	</div>
	
<form action="<c:url value="/adm/page" />" method="post" id="formPage">
	<c:if test="${page != null}"><input name="page.id" type="hidden" value="${page.id}" /></c:if>	
	<table>
		<tr>
			<td>Status: </td>
			<td><label for="ativado">Ativado:</label><input type="radio" name="page.status" id="ativado" value="1" /> <label for="desativado">Desativado:</label><input type="radio" name="page.status" id="desativado" value="0" /> </td>
		</tr>
		<tr>
			<td>T�tulo: </td>
			<td><input name="page.title" id="title" value="${page.title}" /></td>
		</tr>
		<tr>
			<td colspan="2"><textarea name="page.content" id="content" >${page.content}</textarea></td>
		</tr>	
		<tr>
			<td>
				<c:if test="${page == null}"><button name="_method" class="submit" value="post">Criar</button></c:if>
				<c:if test="${page.id != null}">
					<button name="_method" class="submit" value="put">Editar</button>
					<input name="submitDelete" id="submitDelete" type="button" value="Deletar"  />
					<input name="_method" value="delete" type="hidden" />
				</c:if>
			</td>
		</tr>
							
	</table>

</form>

<%@include file="../../../admin/footer.jsp" %>