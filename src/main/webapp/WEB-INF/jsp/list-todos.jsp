<%@ include file="common/header.jsp"%>
<%@ include file="common/navigation.jsp"%>

<div class="container">
	<div>
		<a type="button" class="btn btn-primary btn-md" href="/add-todo">Adicionar Asignatura</a>
	</div>
	<br>
	<div class="panel panel-primary">
		<div class="panel-heading">
			<h3>Listado de Asignaturas</h3>
		</div>
		<div class="panel-body">
			<table class="table table-striped">
				<thead>
					<tr>
					    <th width="30%">Nombre asignatura</th>
						<th width="30%">Descripcion</th>
						<th width="20%">Salón</th>
						<th width="20%">Horario</th>
						<th width="30%">Fecha</th>
						<th width="30%">Docente encargado</th>
						<th width="20%"></th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${todos}" var="todo">
						<tr>
							<td>${todo.description}</td>
							<td><fmt:formatDate value="${todo.targetDate}"
									pattern="dd/MM/yyyy" /></td>
							<td><a type="button" class="btn btn-success"
								href="/update-todo?id=${todo.id}">Modificar</a>
							<a type="button" class="btn btn-warning"
								href="/delete-todo?id=${todo.id}">Eliminar</a></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>
</div>
<%@ include file="common/footer.jsp"%>