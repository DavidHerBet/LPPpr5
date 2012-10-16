# Fichero: clase_piedrapapeltijeras.rb

class JugarPiedraPapelTijeras
  
  def initialize(jugada)
    
    @derrotado_por = {:piedra => :tijeras, :papel => :piedra, :tijeras => :papel}
    @jugadas = @derrotado_por.keys
    
    # Comprobamos que jugada sea un string, porque no existe metodo .to_sym para convertir numeros
    raise "Debes introducir una jugada valida: #{@jugadas.join(', ')}" unless (jugada.class == String)
    @jugada_jugador = jugada.to_sym
    
    # Comprobamos que la selección del jugador sea correcta
    raise "Debes introducir una jugada valida: #{@jugadas.join(', ')}" unless @jugadas.include? @jugada_jugador
    
    # Comenzamos a jugar
    jugar
    
  end
  
  def jugar()
    
    jugada_ordenador = @jugadas.sample
    
    puts "Tu jugada: #{@jugada_jugador}"
    puts "La jugada del ordenador: #{jugada_ordenador}"
    
    if (@derrotado_por[jugada_ordenador] == @jugada_jugador)
      respuesta = "Gana el ordenador. #{jugada_ordenador.capitalize} gana a #{@jugada_jugador}"
    elsif (@jugada_jugador == jugada_ordenador)
      respuesta = "Ha habido un empate. Los dos han sacado #{@jugada_jugador}"
    else
      respuesta = "Has ganado. #{@jugada_jugador.capitalize} gana a #{jugada_ordenador}"
    end
    
    puts "Resultado: #{respuesta}"
    
  end
  
end