# Fichero: piedrapapeltijeras.rb

require "/home/alu4078/LPP/pr5/lib/clase_piedrapapeltijeras.rb"

jugada = (ARGV.shift || '').to_sym

juego = JugarPiedraPapelTijeras.new(jugada)