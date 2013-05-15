class EspecialNewsController < ApplicationController
  # GET /especial_news
  # GET /especial_news.json
  def index
    @especial_news = EspecialNew.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @especial_news }
    end
  end

  # GET /especial_news/1
  # GET /especial_news/1.json
  def show
    @especial_news = EspecialNew.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @especial_news }
    end
  end

  # GET /especial_news/new
  # GET /especial_news/new.json
  def new
    @especial_news = EspecialNew.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @especial_news }
    end
  end

  # GET /especial_news/1/edit
  def edit
    @especial_news = EspecialNew.find(params[:id])
  end

  # POST /especial_news
  # POST /especial_news.json
  def create
    @especial_news = EspecialNew.new(params[:especial_news])

    respond_to do |format|
      if @especial_news.save
        format.html { redirect_to @especial_news, notice: 'Especial new was successfully created.' }
        format.json { render json: @especial_news, status: :created, location: @especial_news }
      else
        format.html { render action: "new" }
        format.json { render json: @especial_news.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /especial_news/1
  # PUT /especial_news/1.json
  def update
    @especial_news = EspecialNew.find(params[:id])

    respond_to do |format|
      if @especial_news.update_attributes(params[:especial_news])
        format.html { redirect_to @especial_news, notice: 'Especial new was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @especial_news.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /especial_news/1
  # DELETE /especial_news/1.json
  def destroy
    @especial_news = EspecialNew.find(params[:id])
    @especial_news.destroy

    respond_to do |format|
      format.html { redirect_to especial_news_url }
      format.json { head :no_content }
    end
  end
end
