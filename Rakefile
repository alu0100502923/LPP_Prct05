task :default => :tu

desc "Pruebas unitarias de la clase Racional"
task :tu do
  sh "ruby -I. test/tc_point.rb"
end

desc "Ejecutar solo las pruebas simples"
task :simple do
  sh "ruby -I. test/tc_point.rb -n /simple/"
end
