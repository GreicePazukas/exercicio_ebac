#language 

Funcionalidade: Finalizar minhas compras
Como cliente da EBAC SHOP
Quero fazer concluir meu cadastro
Para finalizar minha compra

Cenario: Cadastro válido
Dado que eu acesse a tela de checkout da EBAC SHOP
Quando eu inserir todos os dados "obrigatórios" marcados com "asteriscos" e inserir o formado "válido" de e-mail 
E clicar no botão "finalizar a compra"
Então o cadastro estará "finalizado com sucesso"

Cenario: Cadastro inválido
Dado que eu acesse a tela de checkout da EBAC SHOP
Quando eu inserir todos os dados "obrigatórios" marcado com "asteriscos" e inserir o formato "inválido" de e-mail .
E clicar no botão "finalizar a compra"
Entao deve exibir uma mensagem de alerta "formato de e-mail inválido"

Cenario: Dados obrigatório não preenchidos
Dado que eu acesse a tela de checkout da EBAC SHOP
Quando eu não inserir todos os dados "obrigatório" marcados com "asteriscos" e inserir o formato "válido" de e-mail
E clicar no botão "finalizar a compra"
Então deve exibir a mensagem "preencher dados obrigatórios"

Esquema do Cenario: Conclusão do cadastro
Quando eu inserir os <dados> obrigatorios e inserir o formato <e-mail> válido
E clicar no botão finalizar a compra
Então deve exibir a <mensagem> finalizado com sucesso

Exemplos:
|Dados|e-mail|mensagem|
|"obrigatório"|"valido"|"finalizado com sucesso"|
|"obrigatório"|"inválido"|"formado do e-mail inválido"|
|"inválido"|"válido"|"preencher dados obrigatórios"