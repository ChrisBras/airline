class CargoItemsController < ApplicationController
  # GET /cargo_items
  # GET /cargo_items.json
  def index
    @cargo_items = CargoItem.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @cargo_items }
    end
  end

  # GET /cargo_items/1
  # GET /cargo_items/1.json
  def show
    @cargo_item = CargoItem.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @cargo_item }
    end
  end

  # GET /cargo_items/new
  # GET /cargo_items/new.json
  def new
    @cargo_item = CargoItem.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @cargo_item }
    end
  end

  # GET /cargo_items/1/edit
  def edit
    @cargo_item = CargoItem.find(params[:id])
  end

  # POST /cargo_items
  # POST /cargo_items.json
  def create
    @cargo_item = CargoItem.new(params[:cargo_item])

    respond_to do |format|
      if @cargo_item.save
        format.html { redirect_to @cargo_item, notice: 'Cargo item was successfully created.' }
        format.json { render json: @cargo_item, status: :created, location: @cargo_item }
      else
        format.html { render action: "new" }
        format.json { render json: @cargo_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /cargo_items/1
  # PUT /cargo_items/1.json
  def update
    @cargo_item = CargoItem.find(params[:id])

    respond_to do |format|
      if @cargo_item.update_attributes(params[:cargo_item])
        format.html { redirect_to @cargo_item, notice: 'Cargo item was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @cargo_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cargo_items/1
  # DELETE /cargo_items/1.json
  def destroy
    @cargo_item = CargoItem.find(params[:id])
    @cargo_item.destroy

    respond_to do |format|
      format.html { redirect_to cargo_items_url }
      format.json { head :no_content }
    end
  end
end
