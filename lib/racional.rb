#!/usr/local/rvm/rubies/ruby-2.0.0-p247/bin/ruby
# Implementar en este fichero la clase para crear objetos racionales
# Juan Antonio Oliva Pérez

class Fraccion

   def initialize(n,d)
        @n = n
        @d = d
   end

    def gcd(n, d)
        n = n.abs
        d = d.abs
        gcd = 1
        k = 1
        while k <= n and k <= d
            if n % k == 0 and d % k == 0
                gcd = k
            end
            k += 1
        end        
        return gcd         
    end

   def mcm(a,b) #metodo para hallar el minimo comun multiplo  
      (a/gcd(a,b))*b
   end
        
   def to_s #metodo para mostrar los resultados en el formato "n/d"
      return "#{@n}/#{@d}"
   end

   def suma(a,b) #metodo para la suma
      d = mcm(@d,b)
      n = ((d/@d) * @n) + ((d/b) * a)
      return Fraccion.new(n, d)
   end

   def resta(a,b) #metodo para la resta
      d = mcm(@d,b)
      n = ((d/@d) * @n) - ((d/b) * a)
      return Fraccion.new(n, d)       
   end

   def producto(a,b) #metodo para el producto
      n = @n * a
      d = @d * b
      return Fraccion.new(n, d)
   end

   def division(a,b) #metodo para la division
      n = @n*b
      d = @d*a
      return Fraccion.new(n, d)
   end

end