class Luchador
    attr_accessor :nombre, :ptosVida, :victorias
    def initialize(nombre)
        @nombre=nombre
        @ptosVida=100
        @victorias=0
    end

    def mostrar_vida
        puts "#{@nombre} tiene #{@ptosVida} puntos de vida"
    end

    def esquivar?
      false
    end

end