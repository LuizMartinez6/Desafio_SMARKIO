#language: pt
#encode: UTF-8

Funcionalidade: Buscar produto e adicionar ao carrinho

-Eu como usuário
-Quero buscar um produto e adiciona-lo no carrinho

@busca_compra
Cenario:Efetuar procura do produto com sucesso e selecionar um produto da lista e colocar no carrinho

Dado um produto eu pesquiso o produto
E verifico se a pesquisa foi feita com sucesso
E seleciono um produto da lista
Quando clico em comprar
Então verifico se o produto foi adicionado ao carrinho