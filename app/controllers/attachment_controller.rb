class AttachmentController < ApplicationController
	before_action :authenticate_user!
	before_action :authenticate_owner!
  def new
  end

  def create
  end

  def destroy
  end

  private
  def authenticate_owner!
		@product = Product.find(params[:product_id])
		if @product.nill? || @product.user != current_user
			redirect_to root_path, notice: "No puedes editar este producto"
			return
		end
	end
end
