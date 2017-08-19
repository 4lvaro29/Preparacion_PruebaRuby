def read_file
  file = File.open("students.csv", "r") # open file
  lines = file.readlines #read lines from file
  lines = lines.map { |line| line.gsub("\n", "")} #remove \n characters from array
  file.close
  lines
end

def status(score) # Method for students score
  if score >= 5
    "Aprobado"
  else 
    "Reprobado"
  end
end

def average (student)
  (student[1].to_i + student[2].to_i + student[3].to_i + student[4].to_i + student[5].to_i  ) / 5
end

option = 0
puts "Bienvenido"
while option != 4
  puts "Ingrese una opcion del menú"
  puts "1- Mostrar nombre de cada alumno y promedio de notas"
  puts "2- Mostrar cantidad de inasistencias"
  puts "3- Mostrar alumnos aprobados"
  puts "4- Salir del programa"

  option = gets.chomp.to_i

  case option
  when 1
    students = read_file
    students.each do |student|
      student = student.split(",")
      name = student[0] # student name position
      avg = average(student)
      puts arr = Array.new(1,"----------------------------------")
      puts "Nombre: #{name}, Promedio: #{avg}"
      puts arr = Array.new(1,"----------------------------------")
    end
  when 2
    not_present = 0
    students = read_file
    students.each do |student|
      student = student.split(",")
      not_present += student.select { |x| x == "A"}.count
    end
    puts arr = Array.new(1,"----------------------------------")
    puts "Inasistencias totales: #{not_present}"
    puts arr = Array.new(1,"----------------------------------")
  when 3
    students = read_file
    students.each do |student|
      student = student.split(",")
      avg = average(student)
      student_status = status(avg)
      puts arr = Array.new(1,"----------------------------------")
      puts "Nombre: #{student[0]}, Estado: #{student_status}"
      puts arr = Array.new(1,"----------------------------------")
    end
  when 4
    break #if option is 4, no messages should be showed
  else  
    puts arr = Array.new(1,"----------------------------------")
    puts "La opción ingresada no es válida."  
    puts arr = Array.new(1,"----------------------------------")
  end
end
puts arr = Array.new(1,"--------------------------------------")
puts "Gracias por usar este programa, bye"
puts arr = Array.new(1,"--------------------------------------")

