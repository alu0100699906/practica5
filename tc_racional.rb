# Implementar en este fichero las Pruebas Unitarias asociadas a la clase Fraccion

require "./racional.rb"
require "test/unit"

class Test_Fraccion < Test::Unit::TestCase
 def setup
    @p1 = Fraccion.new(1,3)
    @p2 = Fraccion.new(1,4)
    @p3 = Fraccion.new(-4,5)
  end


  def test_failure
    
    assert_equal("3 / 4",@p1.suma(@p2).to_s)
    
  end
    
end
