#language: pt

Funcionalidade: Tela de Cadastro - Checkout
    "Como cliente da EBAC-SHOP
    Quero fazer concluir meu cadastro   
    Para finalizar minha compra"

Regra: Regra 1
    "Deve ser cadastrado com todos os dados obrigatórios, marcado com asteriscos"

Regra: Regra 2
    "Não deve permitir campo e-mail com formato inválido. Sistema deve inserir uma mensagem de erro"

Regra: Regra 3
    "Ao tentar cadastrar com campos vazios, deve exibir mensagem de alerta"

Contexto:
Dado que eu esteja na página de cadastro - Checkout da Ebac SHOP

Cenário: Sucesso ao concluir cadastro
Quando eu preencho corretamente todos os campos obrigatórios 
Então eu consigo concluir meu cadastro

Cenário: Falha ao concluir cadastro
Quando eu não preencho todos os campos obrigatórios
Então eu não consigo concluir meu cadastro
E o sistema exibe uma mensagem de alerta

Cenário: Não permite e-mail inválido
Quando eu preencho todos os campos obrigatórios
E informo os seguintes e-mails:

    | e-mail             |
    | teste.com          |
    | teste@.com         |
    | @dominio.com       |
    | teste@dominio      |
    | teste@dominio.     |
    | teste @dominio.com |
    | teste@dominio .com |

Então eu não consigo concluir meu cadastro
E o sistema exibe uma mensagem de alerta