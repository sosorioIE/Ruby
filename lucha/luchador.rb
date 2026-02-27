class Luchador
    attr_accessor :nombre, :ptosVida, :victorias
    def initialize(nombre)
        @nombre=nombre
        @ptosVida=100
        @victorias=0
    end

    def golpear_manos(rival)
        if(rand 0..1)==1
            rival.ptosVida-=10
            acierto=true
        else 
            acierto=false
        end
        puts "#{@nombre} pega con manos, #{acierto?'Acierta' : 'Falla'}. Vida #{@nombre}, vida #{rival}"
    end

    def mostrar_vida
        puts "#{@nombre} tiene #{@ptosVida} puntos de vida"
    end

end