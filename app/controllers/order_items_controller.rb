class OrderItemsController < ApplicationController
  def create
  @cargos = ::Cargo.all
  @cargos.each do |cargo|
    if (cargo.flight) && (cargo.cargo_items.count < 10) then
      @cargo_id = cargo.id
      break
    end
  end

  @cargo_item = CargoItem.new(order_id: params[:order_id], cargo_id: @cargo_id)
     respond_to do |format|
        if @cargo_item.save
          format.html { redirect_to @cargo_item, notice: 'Cargo item was successfully created.' }
          format.json { render json: @cargo_item, status: :created, location: @cargo_item }
        else
          format.json { render json: @cargo_item.errors, status: :unprocessable_entity }
        end
      end
    end
  def index

    respond_to do |format|
      format.json { render json: ::CargoItems.all }
    end
  end
end