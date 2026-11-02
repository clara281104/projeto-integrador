<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" href="estilo.css">
    <title>Cadastro Usuários</title>
    <style>
        .menu-container {
            max-width: 700px;
        }

        table {
            min-width: 420px;
        }

        /* Situação: bolinha + texto */
        .situacao {
            display: inline-flex;
            align-items: center;
            gap: 6px;
        }

        .situacao::before {
            content: "";
            width: 10px;
            height: 10px;
            border-radius: 50%;
        }

        .situacao.ativo::before   { background-color: #5cc48a; }
        .situacao.inativo::before { background-color: #c0392b; }
    </style>
</head>
<body>
    <div class="menu-container">
            <h1>Cadastro de usuários</h1>

            <form action="#" method="post">
                <div class="campo">
                    <label for="login">Login</label>
                    <input type="text" id="login" name="login" maxlength="50">
                </div>

                <div class="campo">
                    <label for="senha">Senha</label>
                    <input type="password" id="senha" name="senha">
                </div>

                <!-- Perfil à esquerda, Cadastrar à direita -->
                <div class="linha-botoes topo">
                    <fieldset>
                        <legend>Perfil</legend>
                        <div class="opcoes">
                            <label><input type="radio" name="perfil" value="admin"> Admin</label>
                            <label><input type="radio" name="perfil" value="user" checked> User</label>
                        </div>
                    </fieldset>

                    <button type="submit">Cadastrar</button>
                </div>
            </form>

            <div class="tabela-rolagem">
                <table>
                    <thead>
                        <tr>
                            <th>ID</th>
                            <th>Login</th>
                            <th>Perfil</th>
                            <th>Situação</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>1</td>
                            <td>teste</td>
                            <td>admin</td>
                            <td><span class="situacao ativo">Ativo</span></td>
                        </tr>
                        <tr>
                            <td>2</td>
                            <td>maria</td>
                            <td>user</td>
                            <td><span class="situacao ativo">Ativo</span></td>
                        </tr>
                        <tr>
                            <td>3</td>
                            <td>joao</td>
                            <td>user</td>
                            <td><span class="situacao inativo">Inativo</span></td>
                        </tr>
                    </tbody>
                </table>
            </div>

            <!-- Ativar/Inativar à esquerda, Voltar à direita -->
            <div class="linha-botoes rodape">
                <button type="button" class="secundario">Ativar / Inativar</button>
                <a href="menu-projetos.jsp" class="secundario">Voltar</a>
            </div>
        </div>
    </body>
</html>
