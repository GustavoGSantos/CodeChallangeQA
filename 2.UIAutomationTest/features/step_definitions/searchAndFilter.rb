When("click on search") do
    sleep(2)
    find('#search-product-input').click
end

When("insert a product name to search") do
    find('#search-product-input').set('Skol 269ml')
    sleep(2)
    first('#search-product-list').click
    sleep(2)
end

Then("expect the search return the correct product") do
    page.has_text?(:visible, 'Skol 269ml')
end

When("insert a non existent product name to search") do
    find('#search-product-input').set('Abobrinha')
    sleep(2)
end

Then("expect the search return an error messagem") do
    result = find('.css-1dfadjv-productNotFoundText')
    sleep(2)
    expect(result.text).to eq 'Putz, não conseguimos encontrar o produto'
end

When("click on a category") do
    find('#category-Cervejas').click
    sleep(2)
end

Then("expect user is redirect to this catalog") do
    expect(page).to have_current_path('https://www.ze.delivery/products/category/94', url: true)
end

When("click on other category") do
    find('#category-Vinhos').click
    sleep(2)
end

Then("expect catalog update to the new category") do
    expect(page).to have_current_path('https://www.ze.delivery/products/category/92', url: true)
end  