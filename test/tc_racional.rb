#!/usr/local/rvm/rubies/ruby-2.0.0-p247/bin/ruby
# Implementar en este fichero las Pruebas Unitarias asociadas a la clase Fraccion

require 'lib/racional.rb'
require 'test/unit'

class Test_Fraccion < Test::Unit::TestCase

   def test_simple
      assert_equal("5/3", Fraccion.new(2,3).suma(3,3).to_s) #comprobar suma
      assert_equal("1/3", Fraccion.new(2,3).resta(1,3).to_s) #comprobar restra
      assert_equal("2/6", Fraccion.new(2,3).producto(1,2).to_s) #comprobar producto
      assert_equal("9/28", Fraccion.new(3,4).division(7,3).to_s) #comprobar division
   end
end