
Dado(/^que eu tenho um usuário com o seguintes atributos:$/) do |table|
  @user = table.hashes[0]['Usuario']
  @pass = table.hashes[0]['Senha']
end

Quando(/^faço Login$/) do
  login = LoginPage.new
  login.loga(@user, @pass)
end

Então(/^vejo a seguinte mensagem no dashboard:$/) do |string|
  $browser.div(id: 'page_title').present?
end