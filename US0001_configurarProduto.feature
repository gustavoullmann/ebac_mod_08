#language: pt

Funcionalidade: Configurar Produto
    "Como cliente da EBAC-SHOP
    Quero configurar meu produto de acordo com meu tamanho e gosto 
    E escolher a quantidade
    Para depois inserir no carrinho"

Regra: Regra 1
    "Seleções de cor, tamanho e quantidade devem ser obrigatórios"

Regra: Regra 2
    "Deve permitir apenas 10 produtos por venda"

Regra: Regra 3
    "Quando eu clicar no botão “limpar” deve voltar ao estado original"

Cenário: Configurações obrigatórias de produto preenchidas
Dado que eu escolha um produto na Ebac SHOP
Quando eu escolher tamanho
E cor
E quantidade
Então eu consigo adicionar o produto no carrinho

Cenário: Configurações obrigatórias de produto faltando
Dado que eu escolha um produto na Ebac SHOP
Quando eu não preencher alguma das configurações 
Então eu não consigo adicionar o produto no carrinho

Cenário: Limite de produtos por venda - até 10 itens
Dado que eu esteja na página "carrinho" da Ebac SHOP
E que eu tenha até 10 itens no carrinho 
Quando eu tentar finalizar a compra
Então vou ser direcionado para a página de pagamento

Cenário: Limite de produtos por venda - mais de 10 itens
Dado que eu esteja na página "carrinho" da Ebac SHOP
E que eu tenha mais de 10 itens no carrinho 
Quando eu tentar finalizar a compra
Então não conseguirei avançar para a tela de pagamento

Cenário: Limpar as configurações de produto escolhidas
Dado que eu escolha um produto na Ebac SHOP
E que eu escolha tamanho, cor e/ou quantidade
Quando eu clicar no botão "Limpar"
Então totas as configurações do produto serão removidas