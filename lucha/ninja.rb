class Ninja < Luchador
    
    def initialize(nombre)
        super(nombre)
        @fuerza_manos=5
        @prob_manos=0.5
        @fuerza_piernas=3
        @prob_piernas=0.5
        @prob_esquivar=0.8
    end

    def golpear_manos(rival)
        if rand<@prob_manos
        daño=@fuerza_manos
        rival.ptosVida-=daño
        puts "#{@nombre} pega con manos, Acierta. Vida #{@nombre} #{@ptosVida}, vida #{rival.nombre} #{rival.ptosVida} "
        else
        puts "#{@nombre} pega con manos, Falla. Vida #{@nombre} #{@ptosVida}, vida #{rival.nombre} #{rival.ptosVida}"
        end
    end

    def golpear_piernas(rival)
        if rand<@prob_piernas
        daño=@fuerza_piernas
        rival.ptosVida-=daño
        puts "#{@nombre} pega con piernas, Acierta. Vida #{@nombre} #{@ptosVida}, vida #{rival.nombre} #{rival.ptosVida} "
        else
        puts "#{@nombre} pega con piernas, Falla. Vida #{@nombre} #{@ptosVida}, vida #{rival.nombre} #{rival.ptosVida} "
        end
    end


    def esquivar 
        if rand<@prob_esquivar 
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

