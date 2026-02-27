class Ninja < Luchador
    
    def golpear_pierna(rival)
        if(rand 0..1)==1
            rival.ptosVida-=10
            acierto=true
        else 
            acierto=false
        end
        puts "#{@nombre} pega con piernas, #{acierto ? 'Acierta' : 'Falla'}. Vida #{@nombre}, vida #{rival}"
    end

    def esquivar