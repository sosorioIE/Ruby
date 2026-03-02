class Boxeador < Luchador

    def initialize(nombre)
        super(nombre)
        @fuerza_manos=10
        @prob_manos=1
        prob_esquivar=0.4
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

    def esquivar?
        rand<@prob_esquivar
    end

    def atacar(rival)
        golpear_manos(rival)
    end
end