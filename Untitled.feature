            #language:pt

            Funcionalidade: Configurar produto
            Como cliente da EBAC SHOP
            quero Configurar meu produto de acordo com meu tamanho e gosto
            E escolher a quantidade de no máximo 10 peças
            Para depois inserir no carrinho

            Contexto:
            Dado que eu acesse a area de compras do postal EBAC SHOP

            Cenário: Autenticação válida
            Quando eu selecionar a cor "azul" "laranja" "vermelho"
            E os tamanhos "XS" "S" "M" " L" "XL"
            E com no máximo "10 peças"
            Então quando eu clicar no botão de "limpar" deve "voltar ao estado inicial"

            Cenário: Compras no carrinho
            Quando eu selecionar a cor "azul"
            E os tamanhos "XS"
            E com no máximo "10 peças"
            Então quando eu clicar no botão de "compra" deve aparecer a informação que os "produtos no carrinho"

            Cenário: Produto inexistente
            Quando eu selecionar a cor "amarela"
            E os tamanhos "XS"
            E com no máximo "10 peças"
            Então deve exibir uma mensagem de alerta "produto inexistente"

            Cenário: Número de produtos inválidos
            Quando eu selecionar a cor "azul"
            E o tamanho "M"
            E selecionar 12 peças
            Entao deve exibir uma mensagem de aterta "número de produtos inválido"

            Esquema do Cenário: Autenticar Multiplas ações
            Quando eu selecionar as cores <azul> <amarela> <vermelha>
            E os tamanhos <XS> <S> <M> <L> <XL>
            E com no maxímo 10 peças
            Entao quando clicar no botão de <limpar> deve voltar ao estado original
            

            Exemplos:
            | cor        | tamanho | peças    | mensagem                     |
            | "azul"     | "XS"    | "10"     | "produtos no carrinho"       |
            | "amarela"  | "XS"    | "10"     | "produto inexistente"        |
            | "azul"     | "M"     | "12"     | "número de produto inválido" |
            | "vermelho" | "M"     | "limpar" | "volta ao estado inicial"    |
