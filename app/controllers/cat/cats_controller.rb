class Cat::CatsController < ApplicationController
  # GET /cat/cats
  # GET /cat/cats.json
  def index
    @cats = Cat::Cat.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @cats }
    end
  end

  # GET /cat/cats/1
  # GET /cat/cats/1.json
  def show
    @cat = Cat::Cat.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @cat }
    end
  end

  # GET /cat/cats/new
  # GET /cat/cats/new.json
  def new
    @cat = Cat::Cat.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @cat }
    end
  end

  # GET /cat/cats/1/edit
  def edit
    @cat = Cat::Cat.find(params[:id])
  end

  # POST /cat/cats
  # POST /cat/cats.json
  def create
    @cat = Cat::Cat.new(params[:cat_cat])

    respond_to do |format|
      if @cat.save
        format.html { redirect_to @cat, notice: 'Cat was successfully created.' }
        format.json { render json: @cat, status: :created, location: @cat }
      else
        format.html { render action: "new" }
        format.json { render json: @cat.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /cat/cats/1
  # PUT /cat/cats/1.json
  def update
    @cat = Cat::Cat.find(params[:id])

    respond_to do |format|
      if @cat.update_attributes(params[:cat_cat])
        format.html { redirect_to @cat, notice: 'Cat was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @cat.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cat/cats/1
  # DELETE /cat/cats/1.json
  def destroy
    @cat = Cat::Cat.find(params[:id])
    @cat.destroy

    respond_to do |format|
      format.html { redirect_to cat_cats_url }
      format.json { head :ok }
    end
  end
end
