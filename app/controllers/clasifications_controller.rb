class ClasificationsController < ApplicationController
  # GET /clasifications
  # GET /clasifications.json
  def index
    @clasifications = Clasification.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @clasifications }
    end
  end

  # GET /clasifications/1
  # GET /clasifications/1.json
  def show
    @clasification = Clasification.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @clasification }
    end
  end

  # GET /clasifications/new
  # GET /clasifications/new.json
  def new
    @clasification = Clasification.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @clasification }
    end
  end

  # GET /clasifications/1/edit
  def edit
    @clasification = Clasification.find(params[:id])
  end

  # POST /clasifications
  # POST /clasifications.json
  def create
    @clasification = Clasification.new(params[:clasification])

    respond_to do |format|
      if @clasification.save
        format.html { redirect_to @clasification, notice: 'Clasification was successfully created.' }
        format.json { render json: @clasification, status: :created, location: @clasification }
      else
        format.html { render action: "new" }
        format.json { render json: @clasification.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /clasifications/1
  # PUT /clasifications/1.json
  def update
    @clasification = Clasification.find(params[:id])

    respond_to do |format|
      if @clasification.update_attributes(params[:clasification])
        format.html { redirect_to @clasification, notice: 'Clasification was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @clasification.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /clasifications/1
  # DELETE /clasifications/1.json
  def destroy
    @clasification = Clasification.find(params[:id])
    @clasification.destroy

    respond_to do |format|
      format.html { redirect_to clasifications_url }
      format.json { head :no_content }
    end
  end
end
