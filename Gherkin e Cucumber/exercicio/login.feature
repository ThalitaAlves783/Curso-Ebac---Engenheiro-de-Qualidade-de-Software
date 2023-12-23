 #language: pt

            Funcionalidade: Tela de login
            Como cliente do Portal EBAC
            Quero me autenticar
            Para visualizar meus pedidos

            Contexto:
            Dado que eu acesse a página de autenticação do EBAC-SHOP

            Cenário: Autenticação válida
            Quando digitar o usuário "joao@gmail.com.br"
            E a senha "senha@123"
            Então deve ser direcionado para a tela de checkout

            Cenário: Usuário com senha inválida
            Quando digitar o usuário "joao@gmail.com.br"
            E a senha "2645415"
            Então deve exibir uma mensagem de alerta: "Usuário ou senha inválidos"