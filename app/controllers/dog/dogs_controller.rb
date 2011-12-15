class Dog::DogsController < ApplicationController
  # GET /dog/dogs
  # GET /dog/dogs.json
  def index
    @dogs = Dog::Dog.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @dogs }
    end
  end

  # GET /dog/dogs/1
  # GET /dog/dogs/1.json
  def show
    @dog = Dog::Dog.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @dog }
    end
  end

  # GET /dog/dogs/new
  # GET /dog/dogs/new.json
  def new
    @dog = Dog::Dog.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @dog }
    end
  end

  # GET /dog/dogs/1/edit
  def edit
    @dog = Dog::Dog.find(params[:id])
  end

  # POST /dog/dogs
  # POST /dog/dogs.json
  def create
    @dog = Dog::Dog.new(params[:dog_dog])

    respond_to do |format|
      if @dog.save
        format.html { redirect_to @dog, notice: 'Dog was successfully created.' }
        format.json { render json: @dog, status: :created, location: @dog }
      else
        format.html { render action: "new" }
        format.json { render json: @dog.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /dog/dogs/1
  # PUT /dog/dogs/1.json
  def update
    @dog = Dog::Dog.find(params[:id])

    respond_to do |format|
      if @dog.update_attributes(params[:dog_dog])
        format.html { redirect_to @dog, notice: 'Dog was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @dog.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dog/dogs/1
  # DELETE /dog/dogs/1.json
  def destroy
    @dog = Dog::Dog.find(params[:id])
    @dog.destroy

    respond_to do |format|
      format.html { redirect_to dog_dogs_url }
      format.json { head :ok }
    end
  end
end
