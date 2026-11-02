<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Login</title>
    <link rel="stylesheet" href="estilo.css">
    <style>
        .login-container {
            background-color: #ffffff;
            padding: 40px;
            border-radius: 10px;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
            width: 320px;
            text-align: center;
        }

        h1 {
            color: #2c3e50;
            font-size: 24px;
            margin-bottom: 20px;
        }

        h3 {
            text-align: left;
            color: #34495e;
            font-size: 14px;
            margin-bottom: 6px;
            margin-top: 16px;
        }

        input[type="text"],
        input[type="password"] {
            width: 100%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 6px;
            box-sizing: border-box;
            font-size: 14px;
        }

        input[type="text"]:focus,
        input[type="password"]:focus {
            outline: none;
            border-color: #4a90e2;
            box-shadow: 0 0 4px rgba(74, 144, 226, 0.4);
        }

        button {
            width: 100%;
            margin-top: 24px;
            padding: 10px;
            background-color: #4a90e2;
            color: white;
            border: none;
            border-radius: 6px;
            font-size: 15px;
            cursor: pointer;
            transition: background-color 0.2s;
        }

        button:hover {
            background-color: #357abd;
        } 
    </style>
</head>
    <body>
        <div class="login-container">
            <form action="menu-projetos.jsp" method="GET">
            <h1>Bem-vindo</h1>
                    
            <h3>Login:</h3>
            <input type="text" name="login"  value="teste">

            <h3>Senha:</h3>
            <input type="password" name="senha" value="123">
            
            <button type="submit" name="perfil" value="admin">Logar como admin</button>
            <button type="submit" name="perfil" value="user">Logar como user</button>
            
            <!--<button type="submit">Enviar</button>-->
            </form>
        </div>
    </body>
</html>
