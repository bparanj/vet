class AnimalsController < ApplicationController
  def index
    @animals = Animal.all
  end
  
  def show
    @animal = Animal.find(params[:id])
  end
  
  def new
    @animal = Animal.new
  end
  
  def create
    @animal = Animal.new(allowed_params)
    if @animal.save
      flash[:notice] = "Successfully created animal."
      redirect_to @animal
    else
      render :new
    end
  end
  
  def edit
    @animal = Animal.find(params[:id])
  end
  
  def update
    @animal = Animal.find(params[:id])
    if @animal.update_attributes(allowed_params)
      flash[:notice] = "Successfully updated animal."
      redirect_to @animal
    else
      render :edit
    end
  end
  
  def destroy
    @animal = Animal.find(params[:id])
    @animal.destroy
    flash[:notice] = "Successfully destroyed animal."
    redirect_to animals_url
  end
  
  private
  
  def allowed_params
    params.require(:animal).permit!
  end
end
