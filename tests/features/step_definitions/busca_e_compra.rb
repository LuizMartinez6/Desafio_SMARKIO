Dado('um produto eu pesquiso o produto') do
    visit(CONFIG['url_padrao'])
    Compra.new.pesquisar
  end
  
  Dado('verifico se a pesquisa foi feita com sucesso') do
    Compra.new.tirar_foto('busca','sucesso')
  end
  
  Dado('seleciono um produto da lista') do
    find('img[data-src="https://static.netshoes.com.br/produtos/tenis-nike-downshifter-10-masculino/26/HZM-3549-026/HZM-3549-026_zoom1.jpg?ts=1584659244&ims=326x"]', visible: true).click
    sleep(2)
end
  
  Quando('clico em comprar') do
    Compra.new.f_compra
  end
  
  Então('verifico se o produto foi adicionado ao carrinho') do
    has_text?('Meu carrinho')
    has_no_text?('Meu carrinho')
    Compra.new.tirar_foto('compra','sucesso')
  end