class Aremo < Barco
    attr_accessor :numRemos
    @@total_aremo=0

    def initialize(mEslora,velocidadMaxima,pasajeros,numRemos)
        super(mEslora,velocidadMaxima,pasajeros)
        @numRemos=numRemos
        @@total_aremo+=1
    end

    def calcular_mantenimiento
        super
        @mEslora*@numRemos*5
    end

    def mostrar_remo
        puts "Remos: #{@numRemos}"
        puts "Barcos a Remo: #{@@total_aremo}"
    end
end