class Amotor < Barco
    attr_accessor :numMotores
    @@total_amotor=0

    def initialize(mEslora,velocidadMaxima,pasajeros,numMotores)
        super(mEslora,velocidadMaxima,pasajeros)
        @numMotores=numMotores
        @@total_amotor+=1
    end

    def mostrar_motor
        puts "Motores: #{@numMotores}"
        puts "Barcos a Motor: #{@@total_amotor}"
    end
end