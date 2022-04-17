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

            Funcionalidade: Login usário
            Como cliente da EBAC SHOP
            Quero me Autenticar na minha conta
            Para visualizar meus pedidos

            Contexto:
            Dado que eu acesse a página de Autenticação do postal EBAC SHOP

            Cenário: Autenticação válida
            Quando eu inserir o usuário "greicepaz@ebac.com.br"
            E a senha "felicidade"
            Então quando eu clicar no botão "validar" deve ser direcionado para a "tela
            checkout"

            Cenário: Autenticação inválida
            Quando eu inserir o usuário "greicepaz@ebac.com.br"
            E a senha "tristeza"
            Então quando eu clicar no botão "validar" deve exibir a mensagem "Usuário ou senha inválidos”

            Esquema do Cenário: Autenticar multiplos usuários
            Quando eu digitar o <usuário>
            E a <senha>
            Entao deve exibir a <mensagem> de sucesso


            | usuário | senha | mensagem |
            |"greice"|"felicidade"|"tela de checkout"|
            | greicepaz@ebac.com.br | "tristeza"   |
            | greicepaz@ebac.com.br | "felicidade" |"tela de checkout"|
            
            Funcionalidade: Finalizar minhas compras
            Como cliente da EBAC SHOP
            Quero fazer concluir meu cadastro
            Para finalizar minha compra

            Contexto:
            Dado que eu acesse a tela de cadastro da EBAC SHOP

            Cenario: Cadastro válido
            Quando eu inserir todos os dados "obrigatórios" marcados com "asteriscos"
            E inserir o formado "válido" de e-mail 
            Então o o cadastro estará "finalizado com sucesso"

            Cenario: Cadastro inválido
            Quando eu inserir todos os dados "obrigatórios" marcado com "asteriscos"
            E inserir o formato "inválido" de e-mail .
            Entao deve exibir uma mensagem de alerta "formato de e-mail inválido"

            Cenario: Dados obrigatório não preenchidos
            Quando eu não inserir todos os dados "obrigatórios inválido"  
            E inserir o formato "válido" de e-mail
            Então deve exibir a mensagem "preencher dados obrigatórios"

            Esquema do Cenario: Conclusão do cadastro
            Quando eu inserir <dados> obrigatorios
            E inserir o formato <e-mail> válido
            Então deve exibir a <mensagem> finalizado com sucesso

            Exemplos:
            |Dados|e-mail|mensagem|
            |"obrigatório"|"valido"|"finalizado com sucesso"|
            |"obrigatório"|"inválido"|"formado do e-mail inválido"|
            |"obrigatório" inválido"|"válido"|"preencher dados obrigatórios"



