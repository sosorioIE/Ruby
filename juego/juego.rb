i=0
while i<3
    humano=ARGV[0]
    puts "piedra, papel o tijera ? #{humano}"

    opcion=["piedra","papel","tijera"]
    puts "Ordenador saca: #{ordenador=opcion[rand(0..2)]}"

    if(humano=="piedra" && ordenador=="tijera") || 
     (humano=="tijera" && ordenador=="papel") ||
     (humano=="papel" && ordenador=="piedra") 
      i+=1
        puts "Puntuación: #{i}" 
    end
end
    


