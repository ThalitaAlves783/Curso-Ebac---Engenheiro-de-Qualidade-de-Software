            #language: pt

            Funcionalidade: Calculadora
            Como não sei fazer conta de cabeça
            Quero usar a calculadora do sistema
            Para somar dois números

            Cenário: Soma de 2 números
            Dado que eu acesse a calculadora
            Quando eu somar 2 + 2
            Então o resultado deve ser 4

            Esquema do Cenário: Autenticar multiplos usuários
            Quando eu digitar o primeiro <num01>
            E o segundo número <num02>
            Então deve exibir a <soma> dos dois

            Exemplos:
            | num01 | num02 | resultado |
            | 2     | 5     | 7         |
            | 4     | 8     | 12        |
            | 4     | 9     | 13        |