require "rubygems"
require "selenium-webdriver"
require_relative "Biblioteca/Criptografia"

driver = Selenium::WebDriver.for :chrome

driver.get "https://www.linkedin.com"
termo = ""

email = driver.find_element :name => "session_key"
email.send_keys "douglas.dcm@gmail.com"
senha = driver.find_element :name => "session_password"
Criptografia.decifrar "cBSFIK7ISNu", senha
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
i = 1
while true
  seguir = driver.find_element :xpath => "//li[1]/div/div/div/div/button"
  if seguir.text.include? "Seguir"
    seguir.click
  end
  i = i + 1
end
sleep 5