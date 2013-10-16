# Implementar en este fichero la clase para crear objetos racionales

require "./gcd.rb"

class Fraccion
    #método para poder acceder a los atributos de la 
    #clase sin usar los metodosget/set 
    attr_reader :num, :denom 
    
    #método para inicializar los atributos
    def initialize(n,d)      
        @num,@denom = n, d
    end

    #metodo que devuelve una cadena con la representación del racional
    def to_s                 
        "#{num} / #{denom}"
    end
   
    #método que permite multiplicar numeros racionales
    #devuelve un nuevo racional que multiplica al objeto que invoca el que le pasan 
    #como parámetro (object)
    def *(object)            
        puts "PRODUCTO FRACCIONAL"
        Fraccion.new(@num*object.num,@denom*object.denom)
    end 
end

############INSTANCIA DE OBJETOS
fraccion1=Fraccion.new(4,2)
fraccion2=Fraccion.new(8,6)
############PRODUCTO
producto=fraccion1*fraccion2
puts producto
