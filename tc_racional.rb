# Implementar en este fichero las Pruebas Unitarias asociadas a la clase Fraccion

require "./racional.rb"
require "test/unit"

class Test_Fraccion < Test::Unit::TestCase
 def setup
    @p1 = Fraccion.new(1,3)
    @p2 = Fraccion.new(1,4)
    @p3 = Fraccion.new(-4,5)
    @p4 = Fraccion.new(2,-8)
  end

  def tear_down
    #nothing
  end
  
  #pruebas para el metodo suma
  def test_suma
    assert_equal("7 / 12",@p1.suma(@p2).to_s)
    assert_equal("21 / -20",@p4.suma(@p3).to_s)
  end
  
  #pruebas para el metodo resta
  def test_resta
    assert_equal("1 / 12",@p1.resta(@p2).to_s)
    assert_equal("17 / 15",@p1.resta(@p3).to_s)
  end

  #pruebas para el metodo producto
  def test_producto
    assert_equal("-1 / 5",@p3.producto(@p2).to_s)
    assert_equal("-1 / -5",@p3.producto(@p4).to_s)
  end

  #pruebas para el metodo division
  def test_division
    assert_equal("-12 / 5",@p3.division(@p1).to_s)
    assert_equal("1 / -1",@p4.division(@p2).to_s)
  end

  #pruebas para los fallos
  def test_failure
    assert_equal("3 / 4",@p1.suma(@p2).to_s)  
  end
    
end
