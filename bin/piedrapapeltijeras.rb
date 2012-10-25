# Fichero: piedrapapeltijeras.rb

require "clase_piedrapapeltijeras"

jugada = (ARGV.shift || '')

juego = JugarPiedraPapelTijeras.new

juego.jugar(jugada)

juego.mostrar_resultados