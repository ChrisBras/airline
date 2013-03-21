class AirCrewsController < ApplicationController
  # GET /air_crews
  # GET /air_crews.json
  def index
    @air_crews = AirCrew.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @air_crews }
    end
  end

  # GET /air_crews/1
  # GET /air_crews/1.json
  def show
    @air_crew = AirCrew.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @air_crew }
    end
  end

  # GET /air_crews/new
  # GET /air_crews/new.json
  def new
    @air_crew = AirCrew.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @air_crew }
    end
  end

  # GET /air_crews/1/edit
  def edit
    @air_crew = AirCrew.find(params[:id])
  end

  # POST /air_crews
  # POST /air_crews.json
  def create
    @air_crew = AirCrew.new(params[:air_crew])

    respond_to do |format|
      if @air_crew.save
        format.html { redirect_to @air_crew, notice: 'Air crew was successfully created.' }
        format.json { render json: @air_crew, status: :created, location: @air_crew }
      else
        format.html { render action: "new" }
        format.json { render json: @air_crew.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /air_crews/1
  # PUT /air_crews/1.json
  def update
    @air_crew = AirCrew.find(params[:id])

    respond_to do |format|
      if @air_crew.update_attributes(params[:air_crew])
        format.html { redirect_to @air_crew, notice: 'Air crew was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @air_crew.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /air_crews/1
  # DELETE /air_crews/1.json
  def destroy
    @air_crew = AirCrew.find(params[:id])
    @air_crew.destroy

    respond_to do |format|
      format.html { redirect_to air_crews_url }
      format.json { head :no_content }
    end
  end
end
