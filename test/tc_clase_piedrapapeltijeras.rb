# Fichero: tc_clase_piedrapapeltijeras.rb

require "clase_piedrapapeltijeras"
require "test/unit"

class TestJugarPiedraPapelTijeras < Test::Unit::TestCase
  
  def setup
    @jppt = JugarPiedraPapelTijeras.new
  end
 
  def teardown
    # No hace falta hacer nada realmente
  end
  
  def test_tipodatos_erroneo
    assert_raise(RuntimeError) {@jppt.jugar('cadena')}
    assert_raise(RuntimeError) {@jppt.jugar(56)}
    assert_raise(RuntimeError) {@jppt.jugar([1,2,3])}
  end
  
  def respuesta_correcta(juego, resultado)
    return true if (resultado =~ /Ha habido un empate. Los dos han sacado (\w+)/) 
    return true if (resultado =~ /Gana el ordenador. (\w+) gana a (\w+)/)
    return true if (resultado =~ /Has ganado. (\w+) gana a (\w+)/)
  end

  def test_jugar
    30.times do
      assert respuesta_correcta(@jppt.jugar('piedra'), @jppt.resultado)
    end
    30.times do
      assert respuesta_correcta(@jppt.jugar('papel'), @jppt.resultado)
    end
    30.times do
      assert respuesta_correcta(@jppt.jugar('tijeras'), @jppt.resultado)
    end
  end
  
end