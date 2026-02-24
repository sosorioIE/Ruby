time=ARGV[0]
result=case time
    when 6..12 then "Buenos días Mundo"
    when 13..20 then "Buenas tardes Mundo"
    when 21..23,0..5 then "Buenos noches Mundo"
    else "El horario no es correcto"
    end
puts result