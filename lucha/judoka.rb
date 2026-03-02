class Judoka < Luchador
    def initialize(nombre)
        super(nombre)
        @fuerza_piernas=11
        @prob_piernas=1
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
        golpear_piernas(rival)
    end
end
