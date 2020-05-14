#Login class to reuse when needs login
class Login < SitePrism::Page

    #Mapping elements on screen
    element :enter, '#welcome-button-sign-in'
    element :selectEmail, '#login-home-email-button-sign-in'
    element :email, '#login-mail-input-email'
    element :password, '#login-mail-input-password'
    element :submit, '#login-mail-button-sign-in'

    #Method for filling in or click in the fields mapped above
    def loginUser
        sleep(3)
        enter.click
        selectEmail.click
        email.set'gustavogimenez.santos@gmail.com'
        password.set'12345teste'
        submit.click
        sleep(3)
    end
end