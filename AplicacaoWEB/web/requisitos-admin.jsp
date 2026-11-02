<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Requisitos - Admin</title>
    <link rel="stylesheet" href="estilo.css">    
</head>
<body>
    <div class="menu-container">
        <h1>Requisitos do projeto - Tela ADMIN</h1>

        <form action="#" method="post">
            <!-- No futuro, este valor virá da URL (requisitos-admin.html?id=1) -->
            <input type="hidden" name="id_projeto" value="1">

            <div class="linha">
                <div class="campo">
                    <label for="data-cadastro">Data de cadastro</label>
                    <input type="date" id="data-cadastro" name="data_cadastro">
                </div>
                <div class="campo">
                    <label for="codigo">Código</label>
                    <input type="text" id="codigo" name="codigo" placeholder="Gerado automaticamente" readonly>
                </div>
            </div>

            <div class="linha">
                <div class="campo">
                    <label for="requisito">Requisito</label>
                    <input type="text" id="requisito" name="requisito" maxlength="150">
                </div>
                <div class="campo">
                    <fieldset>
                        <legend>Tipo</legend>
                        <div class="opcoes">
                            <label><input type="radio" name="tipo" value="RF" checked> Funcional</label>
                            <label><input type="radio" name="tipo" value="NF"> Não funcional</label>
                        </div>
                    </fieldset>
                </div>
            </div>

            <div class="linha">
                <div class="campo">
                    <label for="descricao">Descrição</label>
                    <textarea id="descricao" name="descricao"></textarea>
                </div>
            </div>

            <div class="linha">
                <div class="campo">
                    <label for="complexidade">Complexidade</label>
                    <select id="complexidade" name="complexidade">
                        <option value="">Selecione...</option>
                        <option value="Alta">Alta</option>
                        <option value="Média">Média</option>
                        <option value="Baixa">Baixa</option>
                    </select>
                </div>
                <div class="campo">
                    <label for="prioridade">Prioridade</label>
                    <select id="prioridade" name="prioridade">
                        <option value="">Selecione...</option>
                        <option value="Alta">Alta</option>
                        <option value="Média">Média</option>
                        <option value="Baixa">Baixa</option>
                    </select>
                </div>
            </div>

            <div class="linha-botoes topo">
                <button type="submit">Cadastrar / Atualizar</button>
                <button type="button" >Listar</button>
            </div>
        </form>

        <div class="tabela-rolagem">
            <table>
                <thead>
                    <tr>
                        <th>Versão atual</th>
                        <th>Código</th>
                        <th>Requisito</th>
                        <th>Descrição</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>1</td>
                        <td>RF01</td>
                        <td>Login de usuário</td>
                        <td>O sistema deve permitir o acesso por login e senha.</td>
                    </tr>
                </tbody>
            </table>
        </div>

        <div class="linha-botoes rodape">
            <button type="button" class="secundario perigo">Excluir</button>
            <button type="button" class="secundario">Gerar PDF</button>
        </div>

        <div class="linha-botoes">
            <a href="tela-historicos.jsp" class="secundario">Ver histórico</a>
            <a href="menu-projetos.jsp" class="secundario">Voltar</a>
        </div>
    </div>
</body>
</html>
