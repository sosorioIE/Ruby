class ApplicationController < ActionController::Base
  helper_method :current_cliente, :logged_in?

  before_action :set_current_cliente

  private

  def set_current_cliente
    if session[:cliente_id] #si la sesión existe 
      @current_cliente = Cliente.find_by(id: session[:cliente_id]) #busca el cliente en la base de datos y lo asigna a la varible de cliente actual
    elsif cookies.signed[:cliente_id] #sino , mira si hay una cookie que recuerde al cliente
      @current_cliente = Cliente.find_by(id: cookies.signed[:cliente_id])
      session[:cliente_id] = @current_cliente.id if @current_cliente #vuelve a crear la sesión y se asigna el cliente a la variable @current_cliente
    end
  end

  def current_cliente #devuelve el cliente loggeado actualmente
    @current_cliente
  end

  def logged_in? #devuelve true si el cliente esta loggeado
    !!@current_cliente #!! para que no nos llegue nil
  end

  # filtro para proteger páginas
  def require_login #si un cliente no está loggeado e intenta acceder a la página
    redirect_to login_path, alert: "Debes iniciar sesión" unless logged_in? #lanza una alerta y lo redirije al login
  end
end