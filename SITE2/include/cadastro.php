<br>
<br>
<br>
<br>
<form id="form" class="form-horizontal" method="post" action="app/cadastrarUsuario.php?acao=cadastrar">
	<fieldset>
	<legend>FORMULÁRIO</legend>

<!-- Text input-->
	<div class="form-group">
  		<label class="col-md-4 control-label" for="login">Nome</label>
  		<div class="col-md-4">
  		<input id="login" name="nome" type="text" placeholder="Digite o seu nome" class="form-control input-md">
  		</div>
	</div>

<!-- Password input-->
	<div class="form-group">
		<label class="col-md-4 control-label" for="passwordinput">Senha</label>
  		<div class="col-md-4">
    	<input id="passwordinput" name="senha" type="password" placeholder="Digite sua senha" class="form-control input-md">
  		</div>
	</div>

<!-- Password input-->
    <div class="form-group">
        <label class="col-md-4 control-label" for="emailinput">Email</label>
        <div class="col-md-4">
        <input id="emailinput" name="email" type="email" placeholder="Digite seu Email" class="form-control input-md">
        </div>
    </div>

<!-- Button -->
	<div class="form-group">
  		<div class="col-md-4">
    	<input type="submit" name="logar" id="singlebutton" class="btn btn-danger">
  		</div>
	</div>

	</fieldset>
</form>

