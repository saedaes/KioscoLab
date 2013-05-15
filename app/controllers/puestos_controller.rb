class PuestosController < ApplicationController
  # GET /puestos
  # GET /puestos.json
  def index
    @puestos = Puesto.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @puestos }
    end
  end

  # GET /puestos/1
  # GET /puestos/1.json
  def show
    @puesto = Puesto.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @puesto }
    end
  end

  # GET /puestos/new
  # GET /puestos/new.json
  def new
    @puesto = Puesto.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @puesto }
    end
  end

  # GET /puestos/1/edit
  def edit
    @puesto = Puesto.find(params[:id])
  end

  # POST /puestos
  # POST /puestos.json
  def create
    @puesto = Puesto.new(params[:puesto])

    respond_to do |format|
      if @puesto.save
        format.html { redirect_to @puesto, notice: 'Puesto was successfully created.' }
        format.json { render json: @puesto, status: :created, location: @puesto }
      else
        format.html { render action: "new" }
        format.json { render json: @puesto.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /puestos/1
  # PUT /puestos/1.json
  def update
    @puesto = Puesto.find(params[:id])

    respond_to do |format|
      if @puesto.update_attributes(params[:puesto])
        format.html { redirect_to @puesto, notice: 'Puesto was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @puesto.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /puestos/1
  # DELETE /puestos/1.json
  def destroy
    @puesto = Puesto.find(params[:id])
    @puesto.destroy

    respond_to do |format|
      format.html { redirect_to puestos_url }
      format.json { head :no_content }
    end
  end
end
