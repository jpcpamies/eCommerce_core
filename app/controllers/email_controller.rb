class EmailController < ApplicationController

	
  def create
  	# Aquí vamos a recibir los datos del campo email en el formualario email
  	@email = EmailsList.new(email: params[:email])
  	if @email.save
  		# Si pasa las validaciones lo convierte en un objeto json
  		render json: @email
  	else
  		# Si no pasa las validaciones es porque hay errores con la info que recibimos. en vez de hacer render del objeto hacemos render de un campo errors.
  		render json: @email.errors, status: :unprocessable_entity
  	end
  	

  end
end
