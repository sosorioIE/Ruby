class HomeController < ApplicationController
  def index
    @total_clientes=Cliente.count
    @total_productos=Producto.count
  end
end
