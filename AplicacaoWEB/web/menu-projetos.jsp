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
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Menu</title>
    <link rel="stylesheet" href="estilo.css">    
    <style>
        .menu-container {
            max-width: 550px;
            text-align: center;
        }

        .selecione {
            text-align: left;
            color: #34495e;
            font-size: 14px;
            margin: 0 0 10px;
        }

        /* Criar projeto: campo e botão lado a lado */
        .novo-projeto {
            display: flex;
            gap: 10px;
            margin-bottom: 24px;
        }

        .novo-projeto input {
            flex: 1;
            min-width: 0;
        }

        .novo-projeto button {
            white-space: nowrap;
        }

        /* Lista de projetos */
        .lista-projetos {
            list-style: none;
            padding: 0;
            margin: 0;
        }

        .lista-projetos li {
            margin-bottom: 14px;
        }

        .lista-projetos a {
            display: block;
            position: relative;
            padding: 12px;
            background-color: #f4f6f8;
            color: #2c3e50;
            border: 1px solid #d5dbe1;
            border-radius: 6px;
            font-size: 15px;
            text-decoration: none;
            transition: background-color 0.2s, border-color 0.2s;
        }

        .lista-projetos a:hover {
            background-color: #e8f0fb;
            border-color: #4a90e2;
        }

        /* Bolinhas de status */
        .status {
            display: inline-block;
            width: 12px;
            height: 12px;
            border-radius: 50%;
        }

        .lista-projetos .status {
            position: absolute;
            right: 14px;
            top: 50%;
            transform: translateY(-50%);
        }

        .andamento  { background-color: #f5b942; }
        .finalizado { background-color: #5cc48a; }

        /* Legenda */
        .legenda {
            display: flex;
            flex-direction: column;
            gap: 6px;
            margin-top: 24px;
            text-align: left;
            font-size: 13px;
            color: #34495e;
        }

        .legenda .status {
            margin-right: 6px;
            vertical-align: middle;
        }

        /* Área só do admin */
        .area-admin {
            margin-top: 24px;
            padding-top: 20px;
            display: flex;
            justify-content: flex-end;
        }
    </style>
</head>
    <body>
        <div class="menu-container">  
            <% if ("admin".equals(perfil)) { %>
                <div class="area-admin">
                    <a href="cadastro-usuarios.jsp" class="secundario">Cadastrar usuário</a>
                </div>
            <% } %>
            
         <h1>Projetos</h1>
        
        <form class="novo-projeto">
            <input type="text" name="nome" placeholder="Nome do novo projeto...">
            <button type="submit">Criar projeto</button>
        </form>

        <ul class="lista-projetos">
            <li>
                <a href="<%= destino %>?id=1">
                    Projeto A
                    <span class="status finalizado"></span>
                </a>
            </li>
            <li>
                <a href="<%= destino %>?id=2">
                    Projeto B
                    <span class="status andamento"></span>
                </a>
            </li>
            <li>
                <a href="<%= destino %>?id=3">
                    Projeto C
                    <span class="status andamento"></span>
                </a>
            </li>
        </ul>

        <div class="legenda">
            <span><i class="status andamento"></i> Em andamento</span>
            <span><i class="status finalizado"></i> Finalizado</span>
        </div>
    </div>                  
    </body>
</html>
