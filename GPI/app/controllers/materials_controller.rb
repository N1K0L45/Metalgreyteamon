class MaterialsController < ApplicationController
	def new
		@material = Material.new
	end

	def create
      @material = Material.new(material_params)
      if @material.save
        flash[:success] = "Orden de compra generada con éxito!"
        redirect_to user_path(session[:user_id])
      else
        render 'new'
      end
    end

    def show
    end

    private

  def material_params
    params.require(:material).permit(:material, :cantidad)
  end

end
