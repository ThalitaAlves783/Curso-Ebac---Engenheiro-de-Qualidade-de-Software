            #language: pt

            Funcionalidade: Cadastro na plataforna da EBAC-SHOP
            Como cliente da EBAC-SHOP
            Quero fazer concluir meu cadastro
            Para finalizar minha compra

            Cenário: Cadastro de dados Obrigatórios
            Quando eu acessar o checkout
            E preencher todos os campos marcados com asteristico
            Então finalizerei meu cadastro

            Esquema do Cenário: Campo e-mail com formato inválido
            Quando digitar o email <email>
            Então deve exibir uma mensagem de alerta: "Email inválido"

            Exemplos:
            | email            | resultado      |
            | joao.com.br      | Email inválido |
            | joao@.com.br     | Email inválido |
            | joao@gmail       | Email inválido |
            | joaogmail.com.br | Email inválido |

            Cenário: Cadastrar campos vazios
            Quando eu acessar o checkout
            E não preencher todos os campos marcados com asteristico
            Então deve exibir uma mensagem de alerta: "campos obrigatórios vazios"
