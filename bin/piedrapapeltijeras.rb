derrotado_por = { :piedra => :tijeras, :papel => :piedra, :tijeras => :papel }

jugadas = derrotado_por.keys

jugada_jugador = (ARGV.shift || "").to_sym

raise ScriptError, "Debes introducir una jugada" unless jugadas.include? jugada_jugador

jugada_ordenador = jugadas.sample

if (derrotado_por[jugada_ordenador] == jugada_jugador)
  respuesta = "Gana el ordenador. #{jugada_ordenador.capitalize} gana a #{jugada_jugador}"
  
elsif (jugada_jugador == jugada_ordenador)
  respuesta = "Ha habido un empate. Los dos han sacado #{jugada_jugador}"
  
else
  respuesta = "Has ganado. #{jugada_jugador.capitalize} gana a #{jugada_ordenador}"
end

puts respuesta