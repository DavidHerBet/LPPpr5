task :default => :jugarpiedra

desc 'Ejecuta piedra papel tijeras con opcion "piedra"'
task :jugarpiedra do
  sh "ruby bin/piedrapapeltijeras.rb piedra"
end

desc 'Ejecuta todos los test para la clase'
task :test do
  sh "ruby test/tc_clase_piedrapapeltijeras.rb"
end

desc 'Ejecuta una test concreto especificando su nombre'
task :t, :nombre_test do |t, nombre|
  nombre_test = nombre[:nombre_test]
  sh "ruby -w -Ilib test/tc_clase_piedrapapeltijeras.rb --name #{nombre_test}"
end