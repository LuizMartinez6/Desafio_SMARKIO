class Compra < SitePrism::Page
    element :barra_pesquisa, 'input[id="search-input"]' 
    element :btn_pesquisa, 'button[type="submit"]' 
    element :tamanho44, 'a[sku-value="HZM-3549-026-44"]'
    element :btn_compra, 'button[id="buy-button-now"]'
    
    def pesquisar
        barra_pesquisa.set 'Tênis Nike'
        btn_pesquisa.click
    end
    def tirar_foto(nome_arquivo, resultado)
        caminho_arquivo = "features/data/reports/screenshots/test_#{resultado}"
        foto = "#{caminho_arquivo}/#{nome_arquivo}.png"
        save_screenshot("#{foto}")
    end

    def f_compra
        tamanho44.click
        btn_compra.click
    end
end