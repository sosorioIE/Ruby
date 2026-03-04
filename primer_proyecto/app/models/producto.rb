class Producto < ApplicationRecord

    def gastos_envio(precio)
        gasto=precio*0.10
    end
end
