<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="estilo.css">
    <title>Requisitos - User</title>
    <style>
        /* Listar: sozinho, à direita, acima da tabela */
        .botoes-topo {
            display: flex;
            justify-content: flex-end;
            margin-bottom: 24px;
        }

        /* Rodapé: coluna à esquerda, Voltar à direita embaixo */
        .botoes-rodape {
            display: flex;
            justify-content: space-between;
            align-items: flex-end;
            flex-wrap: wrap;
            gap: 10px;
            margin-top: 24px;
        }

        .coluna-botoes {
            display: flex;
            flex-direction: column;
            gap: 10px;
        }
    </style>
</head>
<body>
    <div class="menu-container">
        <h1>Requisitos do projeto - Tela USER</h1>

        <form action="#" method="get">
            <input type="hidden" name="id_projeto" value="1">

            <div class="linha">
                <div class="campo">
                    <label for="data-cadastro">Data de cadastro</label>
                    <input type="date" id="data-cadastro" name="data_cadastro">
                </div>
                <div class="campo">
                    <label for="data-modificacao">Data de modificação</label>
                    <input type="date" id="data-modificacao" name="data_modificacao">
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

            <div class="botoes-topo">
                <button type="submit">Listar</button>
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

        <div class="botoes-rodape">
            <div class="coluna-botoes">
                <button type="button" class="secundario">Gerar PDF</button>
                <a href="tela-historicos.jsp" class="secundario">Ver histórico</a>
            </div>
             <a href="menu-projetos.jsp" class="secundario">Voltar</a>
        </div>
    </div>
</body>
</html>
