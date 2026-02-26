class PuntoSuministro
    attr_accessor :tarifa, :potencia

    def initialize(tarifa,potencia)
    @tarifa=tarifa
    @potencia=potencia
    end

    def precio_segun_tarifa
        case @tarifa
        when "2.0" 
            0.1
        when "3.1" 
            0.05
        else "Tarifa no registrada, disponemos de 2.0 y 3.1"
        end
    end

    def facturar(n,k)
        precio=precio_segun_tarifa
        (precio*k)+(@potencia*n)
    end

end





