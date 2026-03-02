class Karateka < Luchador
    
    def initialize(nombre)
        super(nombre)
        @fuerza_manos=6
        @prob_manos=0.3
        @fuerza_piernas=4
        @prob_piernas=0.7
    end

    def golpear_manos(rival)
        if rand<@prob_manos
            if(rival.esquivar?)
                puts "#{@nombre} golpea, pero #{rival.nombre} esquiva!"
            else 
                daño=@fuerza_manos
                rival.ptosVida-=daño
                puts "#{@nombre} pega con manos, Acierta. Vida #{@nombre} #{@ptosVida}, vida #{rival.nombre} #{rival.ptosVida} "
            end
        else
           puts "#{@nombre} pega con manos, Falla. Vida #{@nombre} #{@ptosVida}, vida #{rival.nombre} #{rival.ptosVida}"
        end
    end

    def golpear_piernas(rival)
        if rand<@prob_piernas
            if(rival.esquivar?)
                puts "#{@nombre} golpea, pero #{rival.nombre} esquiva!"
            else 
                daño=@fuerza_piernas
                rival.ptosVida-=daño
                puts "#{@nombre} pega con piernas, Acierta. Vida #{@nombre} #{@ptosVida}, vida #{rival.nombre} #{rival.ptosVida}"
            end
        else
        puts "#{@nombre} pega con piernas, Falla. Vida #{@nombre} #{@ptosVida}, vida #{rival.nombre} #{rival.ptosVida} "
        end
    end

    def atacar(rival)
        if rand<0.5
            golpear_manos(rival)
        else 
            golpear_piernas(rival)
        end
    end
end



