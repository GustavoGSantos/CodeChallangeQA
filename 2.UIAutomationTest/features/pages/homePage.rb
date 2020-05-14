#Home class to reuse when needs login
class Home < SitePrism::Page

    #Configuring url
    set_url 'https://www.ze.delivery/'
    sleep(3)
    #Mapping elements on screen
    element :ageConfirm, '#age-gate-button-yes'
    

    #Method for filling in or click in the fields mapped above
    def ageValidation
            ageConfirm.click
            sleep(3)
    end
end