class LoginPage
    def loga(user, password)
        $browser.goto 'https://ninjainvoices.herokuapp.com/login'
        $browser.input(id: 'email').send_keys user
        $browser.input(id: 'password').send_keys password
        $browser.button(text: 'Entrar').click
        sleep(1)
    end
end