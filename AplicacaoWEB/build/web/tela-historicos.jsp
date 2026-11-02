<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String perfil = request.getParameter("perfil");

    if (perfil != null) {
        session.setAttribute("perfil", perfil);   // guarda na sessão
    } else {
        perfil = (String) session.getAttribute("perfil");
    }

    if (perfil == null) {
        perfil = "user";   // sem perfil, trata como user
    }

    String destino = "admin".equals(perfil) ? "requisitos-admin.jsp" : "requisitos-user.jsp";
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="estilo.css">
        <style>
        .menu-container {
            max-width: 900px;
        }

        h1 {
            margin-bottom: 8px;
        }

        .subtitulo {
            color: #34495e;
            font-size: 15px;
            text-align: center;
            margin: 0 0 30px;
        }

        .botoes-rodape {
            display: flex;
            justify-content: flex-end;
            margin-top: 24px;
        }

        table {
            min-width: 760px;
        }

        /* Versão atual (primeira linha) */
        tbody tr.atual {
            background-color: #eaf6ef;
        }

        .selo-atual {
            display: inline-block;
            margin-left: 6px;
            padding: 2px 8px;
            background-color: #5cc48a;
            color: #fff;
            border-radius: 10px;
            font-size: 12px;
        }

        @media (max-width: 600px) {
            .botoes-rodape .secundario {
                width: 100%;
                text-align: center;
                box-sizing: border-box;
            }
        }
            
        </style>
    </head>
    <body>
        <div class="menu-container">
            <h1>Hisórico de Versões</h1>
            <p class="subtitulo">RF01 - Login de usuário</p>

        <div class="tabela-rolagem">
            <table>
                <thead>
                    <tr>
                        <th>Versão</th>
                        <th>Data Cadastro</th>
                        <th>Data Modificação</th>
                        <th>Usuário</th>
                        <th>Descrição</th>
                    </tr>
                </thead>
                <tbody>
                    <tr class="atual">
                        <td>3 <span class="selo-atual">atual</span></td>
                        <td>27/10/2026</td>
                        <td>11/11/2026</td>
                        <td>Fulano/ID</td>
                        <td>O sistema deve permitir o acesso por login e senha.</td>
                    </tr>
                    <tr>
                        <td>2</td>
                        <td>27/09/2026</td>
                        <td>01/10/2026</td>
                        <td>Fulano/ID</td>
                        <td>Autenticação e validação de perfil</td>
                    </tr>
                    <tr>
                        <td>1</td>
                        <td>27/08/2026</td>
                        <td>10/09/2026</td>
                        <td>Fulano/ID</td>
                        <td>Acesso ao sistema.</td>
                    </tr>
                </tbody>
            </table>
        </div>

        <div class="botoes-rodape">
            <a href="<%= destino %>" class="secundario">Voltar</a>
        </div>     
        </div>
    </body>
</html>
