class CotizacionesController < ApplicationController
  def index
  end

  def show
  	l = JSON.parse('{
  "materiales": [
    { "id": 1, "vendedor": "proveedor1", "material": "manguera", "cantidad": 3, "precio": 5000 },
    { "id": 2, "vendedor": "proveedor2", "material": "clavo", "cantidad": 100, "precio": 1500 },
    { "id": 3, "vendedor": "proveedor3", "material": "ampolleta", "cantidad": 20, "precio": 6200 }
  ]
}')
    render json: l, status: :created, location: @cotizacion
  end
end