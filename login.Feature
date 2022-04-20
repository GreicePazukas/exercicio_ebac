            #language:pt

            Funcionalidade: Login na Plataforma
            Como cliente da EBAC SHOP
            Quero fazer o login (autenticação)na plataforma
            Para visualizar meus pedidos

            Cenário: Autenticação válida
            Dado que eu acesse a página de Autenticação do postal EBAC SHOP
            Quando eu inserir o usuário "greicepaz@ebac.com.br" e a senha "felicidade"
            E clicar no botão "validar"
            Então deve ser direcionado para a "tela checkout"

            Cenário: Autenticação inválida
            Dado que eu acesse a página de Autenticação do postal EBAC SHOP
            Quando eu inserir o usuário "greicepaz@ebac.com.br" e a senha "tristeza"
            E quando eu clicar no botão "validar"
            Entao deve exibir a mensagem "Usuário ou senha inválidos”

            Esquema de cenários: Multiplas ações
            Dado que eu acesse a pagina de autenticação na plataforma
            Quando eu preencher a informações de <usuario> e <senha>
            E clicar no botão "validar"
            Entao deve ser direcionado para a <tela> de checkout

            Exemplo:

            | usuario                 | senha        | tela                        |
            | "greicepaz@ebac.com.br" | "felicidade" | "tela checkout"             |
            | "greicemac@ebac.com.br" | "tristeza"   | "usuario ou senha inválido" |

