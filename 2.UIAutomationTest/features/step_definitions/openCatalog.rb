Given("user is registred") do
    #home.load is used to load url 
    home.load
    sleep(3)
    #Validation for age confirmation modal visible
    @ageValid = page.has_text?(:visible, 'Você tem 18 anos ou mais?')
    if @ageValid == true
        home.ageValidation
    end
    sleep(2)
end
  
When("user log in website") do
    #calling method to log in
    @userLoggedIn = page.has_text?(:visible, 'Olá, Gustavo')
    if @userLoggedIn == true
        
    else
        login.loginUser
    end
    sleep(3)
end
  
Then("expect user is on catalog page") do
    #Validating if user is on catlog after logged in
    expect(page).to have_current_path('https://www.ze.delivery/products', url: true)
end