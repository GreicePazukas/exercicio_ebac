            #language:pt


            Funcionalidade: Configurar produto
            Como cliente da EBAC-SHOP
            Quero configurar meu produto de acordo com meu tamanho e gosto
            E escolher a quantidade
            Para depois inserir no carrinho

            Contexto:
            Dado que eu acesse a area de compras do portal EBAC-SHOP

            Cenário: Produto no carrinho
            Dado que eu acesse a area de compras do postal EBAC SHOP
            Quando selecionar a cor "azul" "laranja" "vermelho" e os tamanhos "XS" "S" "M" " L" "XL" com no máximo "10 peças"
            E quando clicar no botão de "comprar"
            Então deve exibir a mensagem "produto no carrinho"

            Cenário: Numero de peças inválido
            Dado que eu acesse a area de compras do postal EBAC SHOP
            Quando eu selecionar a cor "azul" o tamanho "XS" com o numero de "11 peças"
            E quando eu clicar no botão de "compra"
            Então deve aparecer a informação que os "numero de peças inválido"

            Cenário: Produto fora de estoque
            Dado que eu acesse a area de compras do postal EBAC SHOP
            Quando eu selecionar a cor "amarela"  o tamanhos "XS" com o numero de "2 peças"
            E quando eu clicar no botão "comprar"
            Então deve exibir uma mensagem de alerta "produto fora de estoque"

            Esquema do Cenário: Autenticar Multiplas ações
            Quando eu selecionar as <cor> os <tamanho> a quantidade de <peca>
            E quando clicar no botão de <comprar>
            Então deve aparecer a <mensagem> de sucesso

            Exemplos:
            | cor       | tamanho | peca | mensagem                   |
            | "azul"    | "XS"    | "10" | "produto no carrinho"      |
            | "azul"    | "XS"    | "12" | "número de pecas inválido" |
            | "amarela" | "XS"    | "2"  | "produto fora de estoque"  |
