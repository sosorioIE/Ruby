class Barco
    @@total_barcos=0
    attr_accessor :mEslora, :velocidadMaxima, :pasajeros

    def initialize(mEslora,velocidadMaxima,pasajeros)
        @mEslora=mEslora
        @velocidadMaxima=velocidadMaxima
        @pasajeros=pasajeros
        @@total_barcos+=1
    end

    def calcular_tiempo(distancia)
        tiempo=distancia.to_f/@velocidadMaxima.to_f
        puts "Tiempo estimado (h-min): #{tiempo.round(2)}"
    end

    def calcular_mantenimiento
        @mEslora*@pasajeros*10
    end

    def mostrar_barco
        puts "Metros de Eslora: #{@mEslora}
        Velocidad Máxima (km/h): #{@velocidadMaxima}
        Pasajeros: #{@pasajeros}
        Mantenimiento: #{calcular_mantenimiento}€
        Barcos Registrados: #{@@total_barcos}"
    end
end
