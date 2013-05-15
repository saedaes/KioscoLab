class PublicationsController < ApplicationController
  # GET /publications
  # GET /publications.json
  def index
    @publications = Publication.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @publications }
    end
  end

  # GET /publications/1
  # GET /publications/1.json
  def show
    @publication = Publication.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @publication }
    end
    
    if !current_user
      ##@u = 235458
      @c = Consultation.new
      if @u.nil?
        @c.matricula = "Usuario general"
      else
        @c.matricula = @u
      end
      @c.id_publicacion = @publication.id
      @c.nombre_publicacion = @publication.titulo
      @c.fecha_consulta = Date.today
      @c.save
    end
  end

  # GET /publications/new
  # GET /publications/new.json
  def new
    @publication = Publication.new
   
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @publication }
    end
  end

  # GET /publications/1/edit
  def edit
    @publication = Publication.find(params[:id])
  end

  # POST /publications
  # POST /publications.json
  def create
    @publication = Publication.new(params[:publication])

    respond_to do |format|
      if @publication.save  
        @r = Registry.new
        @r.actividad_id = 1
        @r.user_number = current_user.user_number
        @r.publicacion = @publication.titulo
        @r.save
      
        format.html { redirect_to @publication, notice: 'La publicacion fue creada correctamente' }
        format.json { render json: @publication, status: :created, location: @publication }
      else
        format.html { render action: "new" }
        format.json { render json: @publication.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /publications/1
  # PUT /publications/1.json
  def update
    @publication = Publication.find(params[:id])

    respond_to do |format|
      if @publication.update_attributes(params[:publication])
        @r= Registry.new
        @r.actividad_id = 2
        @r.user_number = current_user.user_number
        @r.publicacion = @publication.titulo
        @r.save
        format.html { redirect_to @publication, notice: 'Publication was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @publication.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /publications/1
  # DELETE /publications/1.json
  def destroy
    @publication = Publication.find(params[:id])  
   
    @r= Registry.new
    @r.actividad_id = 3
    @r.user_number = current_user.user_number
    @r.publicacion = @publication.titulo

    @r.save
    
    @publication.destroy
    respond_to do |format|
      format.html { redirect_to publications_url }
      format.json { head :no_content }
    end
  end
end
