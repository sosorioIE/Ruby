class SessionsController < ApplicationController
  # Mostrar el formulario de login
  def new
  end

  # Procesar el login
  def create
    # Buscar cliente por email
    cliente = Cliente.find_by(email: params[:email])

    # Comprobar contraseña
    if cliente && cliente.password == params[:password]
      session[:cliente_id] = cliente.id   # Guardar en sesión
      redirect_to root_path, notice: "Bienvenido, #{cliente.usuario}!"
    else
      flash.now[:alert] = "Email o contraseña incorrecta" #muestra  un mensaje de alerta en la ventana actual
      render :new #vuelve a mostrar el formulario de login
    end
  end

  # Cerrar sesión
  def destroy
    session.delete(:cliente_id) #elimina la sesión del cliente
    redirect_to root_path, notice: "Has cerrado sesión" 
  end
end