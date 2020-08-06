require "rubygems"
require "selenium-webdriver"
require_relative "Biblioteca/Criptografia"

driver = Selenium::WebDriver.for :chrome

driver.get "https://www.linkedin.com"
all = driver.find_elements :xpath => "//*"
url = driver.current_url
p all
all.each do |e|
  p c = e.class
  p c.methods
  p e.attribute('type')
begin
  if c == "submit"
    c.click
    sleep 2
    driver.get url
  end
end
end
x = driver.find_elements :xpath => "/html/body/div/main/div/div/div/form/input[1]//ancestor::div"
p x.class
p x.length
x.each do |e|
  p e.text
end
=begin
termo = "TestRock!"
email = driver.find_element :name => "session_key"
email.send_keys "contafake99999@yahoo.com"
senha = driver.find_element :name => "session_password"
Criptografia.decifrar "dN9WJ76tyUN6", senha
entrar = driver.find_element :id => "login-submit"
entrar.click
caixa_texto = driver.find_element :xpath => "/html/body/nav/div/form/div/div/section/div/div/div/div/div/input"
caixa_texto.send_keys "Selenium"
pesquisar = driver.find_element :xpath => ".//*[@id='nav-search-controls-wormhole']/button"
pesquisar.click
sleep 5
#caixa_texto.submit
empresas = driver.find_element :xpath => "/html/body/div/div/div/div/ul/li[4]/button"
sleep 2
empresas.click
caixa_texto = driver.find_element :xpath => ".//div/div/div/div/div/section/div/div/div/div/div/input"
sleep 2
caixa_texto.clear
caixa_texto.send_keys termo
sleep 2
pesquisar = driver.find_element :xpath => ".//div/div/div/div/div/button[@class='submit-button button-primary-large']"
pesquisar.click
sleep 2
link = driver.find_element :xpath => ".//div/div/div/div/div/div/div/div/div/ul/li/div/div/div/a/h3"
if link.text == termo
  link.click
end
sleep 5
=end