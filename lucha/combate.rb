class Combate
    def initialize(luchador1,luchador2)
        @luchador1=luchador1
        @luchador2=luchador2
    end

    def pelear
        puts "Empieza #{@luchador1.nombre} Vs. #{@luchador2.nombre}"
        turno=0

        while @luchador1.ptosVida>0 && @luchador2.ptosVida>0
            if turno.even?
                @luchador1.atacar(@luchador2)
            else
                @luchador2.atacar(@luchador1)
            end
            turno+=1
        end
        finalizar
    end

    def finalizar
        if @luchador1.ptosVida>0
            puts "El ganador es #{@luchador1.nombre}"
            @luchador1.victorias+=1
        else 
            puts "El ganador es #{@luchador2.nombre}"
            @luchador2.victorias+=1  
        end
        @luchador1.ptosVida=100
        @luchador2.ptosVida=100 
    end

end

        