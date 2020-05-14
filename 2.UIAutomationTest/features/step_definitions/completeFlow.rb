When("open a product page") do
    sleep(2)
    find('#search-product-input').set('Original 600ml | Vasilhame Incluso')
    sleep(2)
    first('#search-product-list').click
    sleep(2)
end
  
When("buy some unities") do
    find('#plus-button').double_click
    sleep(2)
    find('#add-product').click
    sleep(2)
end
  
Then("expect a cart preview with the button to finish your order") do
    @finishOrder = find('#finish-order')
    expect(@finishOrder.text).to eq 'CONTINUAR COMPRA'
end