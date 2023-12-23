            #language: pt

            Funcionalidade: Tela de login
            Como aluno do Portal EBAC
            Quero me autenticar
            Para visualizar minhas notas

            Contexto:
            Dado que eu acesse a página de autenticação do portal EBAC

            Cenário: Autenticação válida
            Quando digitar o usuário "joao@ebac.com.br"
            E a senha "senha@123"
            Então deve exibir uma mensagem de boas vindas "olá João"

            Cenário: Usuário inexistente
            Quando digitar o usuário "xxyy@ebac.com.br"
            E a senha "senha@123"
            Então deve exibir uma mensagem de alerta: "Usuário inexistente"

            Cenário: Usuário com senha inválida
            Quando digitar o usuário "joao@ebac.com.br"
            E a senha "2645415"
            Então deve exibir uma mensagem de alerta: "Usuário ou senha inválidos"

            Esquema do Cenário: Autenticar multiplos usuários
            Quando eu digitar o <usuario>
            E a <senha>
            Então deve exibir a <mensagem> de sucesso

            Exemplos:
            | usuario            | senha       | mensagem    |
            | "joao@ebac.com.br" | "teste@123" | "Olá João!" |
            | "maria@ebac.com.br" | "teste@123" | "Olá Maria!" |
            | "ana@ebac.com.br" | "teste@123" | "Olá Ana!" |