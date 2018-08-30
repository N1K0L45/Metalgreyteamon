class OrdencomprasController < ApplicationController
	def show
    	@ordencompra = Ordencompra.find(params[:id])
  	end

	def new
		@ordencompra = Ordencompra.new
    2.times { @ordencompra.materials.build }
	end

	def create
      @ordencompra = Ordencompra.new(oc_params)
      if @ordencompra.save
        flash[:success] = "Orden de compra generada con éxito!"
        redirect_to user_path(session[:user_id])
      else
        render 'new'
      end
    end

    private

  def oc_params
    params.require(:ordencompra).permit(:comprador, materials_attributes: [:id, :material, :cantidad, :_destroy])
  end

end
