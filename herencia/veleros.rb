class Velero<Barco
    attr_accessor :numVelas
    @@total_veleros=0

    def initialize(mEslora,velocidadMaxima,pasajeros,numVelas)
        super(mEslora,velocidadMaxima,pasajeros)
        @numVelas=numVelas
        @@total_veleros+1
    end

    def mostrar_velero
        puts "Número de velas: #{@numVelas}" 
        puts "Veleros: #{@@total_veleros}"
    end
end