            #language: pt

            Funcionalidade: Configurar Produto
            Como cliente da EBAC-SHOP
            Quero configurar meu produto de acordo com meu tamanho e gosto
            E escolher a quantidade
            Para depois inserir no carrinho

            Cenário: Seleções de cor, tamanho e quantidade
            Dado que eu escolho a cor do produto
            E o tamanho
            E a quantidade
            Então o produto deve ser adicionado ao meu carrinho de compras

            Cenário: Limpar configuração do produto
            Dado que eu queria limpar a configuração do produto
            Quando eu clicar em "limpar"
            Então o sistema deve voltar ao estado original

            Esquema do Cenário: Quantidade válida de produtos
            Dado que eu precise escolher a quantidade de produtos
            Quando eu adicionar a <qtdX> menor que 10 itens
            Então a quantidade deve ser adicionada com sucesso

            Exemplos:
            | qtd | resultado       |
            | 1   | Deve ser adicionado ao carrinho com sucesso |
            | 5   | Deve ser adicionado ao carrinho com sucesso |
            | 10  | Deve ser adicionado ao carrinho com sucesso |

            Esquema do Cenário: Quantidade inválida de produtos
            Dado que eu precise escolher a quantidade de produtos
            Quando eu adicionar a <qtdX> maior que 10 itens
            Então a quantidade não deve ser adicionada

            Exemplos:
            | qtd | resultado       |
            | 11   | Não deve ser adicionado ao carrinho  |
            | 50   | Não deve ser adicionado ao carrinho  |
            | 100  | Não deve ser adicionado ao carrinho  |


