#lenguage:pt

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

