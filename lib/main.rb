require "rubygems"
require "selenium-webdriver"
require_relative "Biblioteca/Criptografia"

driver = Selenium::WebDriver.for :chrome

driver.get "https://www.linkedin.com"

#preenche email
email = driver.find_element :name => "session_key"
email.send_keys "contafake99999@yahoo.com"

#preenche senha e submete
senha = driver.find_element :name => "session_password"
Criptografia.decifrar "dN9WJ76tyUN6", senha
entrar = driver.find_element :id => "login-submit"
entrar.click

#pesquisa por Selenium
caixa_texto = driver.find_element :xpath => "/html/body/nav/div/form/div/div/section/div/div/div/div/div/input"
caixa_texto.send_keys "Selenium"
pesquisar = driver.find_element :xpath => ".//*[@id='nav-search-controls-wormhole']/button"
pesquisar.click
driver.quit

sleep 5
