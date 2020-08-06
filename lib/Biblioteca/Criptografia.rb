# To change this license header, choose License Headers in Project Properties.
# To change this template file, choose Tools | Templates
# and open the template in the editor.

class Criptografia
  @alfabeto =         "ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789abcdefghijklmnopqrstuvwxyz "
  @alfabeto_cifrado = "MARTELOabcdefghijklmnopqrstuvwxyz135BCDF7G9HI246JKNPQSUVWXYZ80 "
  def self.criptografia (texto)
    texto_cifrado = ""
    #texto.upcase!
    texto.each_char do |t_caracter|
      i = 0
      @alfabeto.each_char do |a_caracter|
        if t_caracter == a_caracter
          texto_cifrado = texto_cifrado + @alfabeto_cifrado[i].to_s
        end
        i = i + 1
      end
    end
    return texto_cifrado
  end

  def self.decifrar (cifra, objeto)
    objeto.send_keys decifrar_private cifra
  end

  private
  def self.decifrar_private (cifra)
    texto = ""
    #cifra.upcase!
    cifra.each_char do |c_caracter|
      i = 0
      @alfabeto_cifrado.each_char do |a_caracter|
        if c_caracter == a_caracter
          texto = texto + @alfabeto[i].to_s
          break
        end
        i = i + 1
      end
    end 
    return texto
  end 
end
  