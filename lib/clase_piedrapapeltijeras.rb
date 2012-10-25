# Fichero: clase_piedrapapeltijeras.rb

class JugarPiedraPapelTijeras
  
  def initialize()
    @derrotado_por = {:piedra => :tijeras, :papel => :piedra, :tijeras => :papel}
    @jugadas = @derrotado_por.keys
  end
  
  attr_accessor :jugada_jugador, :jugada_ordenador, :resultado
  attr_reader :derrotado_por, :jugadas
  
  def jugar(jugada)
    
    # Comprobamos que jugada sea un string, porque no existe metodo .to_sym para convertir numeros por ejemplo
    raise "Debes introducir una jugada valida: #{jugadas.join(', ')}" unless (jugada.class == String)
    
    # Asignamos la jugada del jugador
    self.jugada_jugador = jugada.to_sym
    
    # Comprobamos que la selección del jugador sea correcta
    raise "Debes introducir una jugada valida: #{jugadas.join(', ')}" unless jugadas.include? jugada_jugador
    
    # Asignamos la jugada del ordenador
    self.jugada_ordenador = jugadas.sample
    
    if (derrotado_por[jugada_ordenador] == jugada_jugador)
      respuesta = "Gana el ordenador. #{jugada_ordenador.capitalize} gana a #{jugada_jugador}"
      
    elsif (jugada_jugador == jugada_ordenador)
      respuesta = "Ha habido un empate. Los dos han sacado #{jugada_jugador}"
      
    elsif (derrotado_por[jugada_jugador] == jugada_ordenador)
      respuesta = "Has ganado. #{jugada_jugador.capitalize} gana a #{jugada_ordenador}"
      
    else
      respuesta = "Ha habido un error inesperado"
    end
    
    self.resultado = respuesta	
    
  end
  
  # Muestra los resultados del ppt por pantalla
  def mostrar_resultados
    puts "Tu jugada: #{jugada_jugador}"
    puts "La jugada del ordenador: #{jugada_ordenador}"
    puts "Resultado: #{resultado}"
  end
  
end