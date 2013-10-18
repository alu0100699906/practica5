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
    def producto(object)            
        
        resultado=Fraccion.new(@num*object.num,@denom*object.denom)
        simplificar(resultado)
    end 
    
    #método que permite dividir numeros racionales
    #devuelve un nuevo racional que divide al objeto que invoca el que le pasan 
    #como parámetro (object)
    def division(object)
        
	resultado=Fraccion.new(@num*object.denom,@denom*object.num)
        simplificar(resultado)
    end
    
     #metodo que devuelve el minimo comun multiplo de los dos numeros pasados por parametro
    def mcm(a,b)  
        aux=gcd(a,b)
        (a/aux)*b
    end

    #método que permite suma numeros racionales
    #devuelve un nuevo racional que suma al objeto que invoca el que le pasan 
    #como parámetro (object)
    def suma(object) 
        
        aux=mcm(@denom,object.denom) #guardamos el mcm de los denominadores
        resultado=Fraccion.new((((aux*num)/denom)+(aux*object.num)/object.denom),aux)
        simplificar(resultado)
    end
 
    #método que permite restar numeros racionales
    #devuelve un nuevo racional que resta al objeto que invoca el que le pasan 
    #como parámetro (object)
    def resta(object) 
        aux=mcm(@denom,object.denom) #guardamos el mcm de los denominadores
        resultado=Fraccion.new((((aux*num)/denom)-(aux*object.num)/object.denom),aux)
        simplificar(resultado)
    end
    
    def simplificar(object)
        aux= gcd(object.num, object.denom)
        Fraccion.new(object.num/aux, object.denom/aux)
    end
end

