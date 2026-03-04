class Producto < ApplicationRecord

    def gastos_envio
        return 0 if price.nil?
        price*0.10
    end

    def stock?
        unidades= self.stock || 0
        if unidades<=0
            "No Disponible"
        else 
            "Disponible #{unidades}"
        end
    end

    def precio_con_descuento
       return price if descuento.nil? || descuento == 0
       price - (price * descuento / 100.0)
    end

end
