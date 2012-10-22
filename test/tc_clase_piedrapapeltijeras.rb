# Fichero: tc_clase_piedrapapeltijeras.rb

require "clase_piedrapapeltijeras"
require "test/unit"

class TestJugarPiedraPapelTijeras < Test::Unit::TestCase
  
  def test_tipodatos_erroneo
    assert_raise(RuntimeError) {JugarPiedraPapelTijeras.new('cadena')}
    assert_raise(RuntimeError) {JugarPiedraPapelTijeras.new(56)}
    assert_raise(RuntimeError) {JugarPiedraPapelTijeras.new([1,2,3])}
  end
  
#   def test_numero_negativo
#     assert_raise(RuntimeError) {Circunferencia.calculo_del_radio(-20)}
#   end
#   
#   def test_resultado_correcto
#     assert_equal(0, Circunferencia.calculo_del_radio(0))
#     assert_equal(1.592356687898089, Circunferencia.calculo_del_radio(10))
#   end
  
  def respuesta_correcta(x)
    return true if x =~ /There is a tie/ 
    return true if x =~ /Computer wins; (\w+) defeats (\w+)/ and JugarPiedraPapelTijeras.defeat[$1.to_sym] == $2.to_sym
    return true if x =~ /Well done. (\w+) beats (\w+)/ and JugarPiedraPapelTijeras.defeat[$1.to_sym] == $2.to_sym
  end

  def test_play
    30.times do
      assert respuesta_correcta(JugarPiedraPapelTijeras.new('piedra'))
    end
    30.times do
      assert respuesta_correcta(JugarPiedraPapelTijeras.new('papel'))
    end
    30.times do
      assert respuesta_correcta(JugarPiedraPapelTijeras.new('tijeras'))
    end
  end
  
end
  
 
#   def jugar()
#     
#     puts "Tu jugada: #{jugada_jugador}"
#     puts "La jugada del ordenador: #{jugada_ordenador}"
#     
#     if (@derrotado_por[jugada_ordenador] == jugada_jugador)
#       respuesta = "Gana el ordenador. #{jugada_ordenador.capitalize} gana a #{jugada_jugador}"
#     elsif (jugada_jugador == jugada_ordenador)
#       respuesta = "Ha habido un empate. Los dos han sacado #{jugada_jugador}"
#     elsif
#       respuesta = "Has ganado. #{jugada_jugador.capitalize} gana a #{jugada_ordenador}"
#     else
#       respuesta = "Ha habido un error inesperado"
#     end
#     
#     puts "Resultado: #{respuesta}"
#     
#   end
#   
# end