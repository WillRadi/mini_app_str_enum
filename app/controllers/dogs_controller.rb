class DogsController < ApplicationController
  def index
    @dogs = Dog.all
  end

  def new
    @dog = Dog.new
  end

  def edit
    @dog = Dog.find(params[:id])
  end

  def create
    @dog = Dog.new dog_parammeters
    if @dog.save
      flash[:success] = 'Cachorrinho salvo com sucesso'
      return redirect_to @dog
    end

    render :new
  end

  def update
    @dog = Dog.find(params[:id])
    return redirect_to @dog if @dog.update(dog_parammeters)

    render :edit
  end

  def show
    @dog = Dog.find(params[:id])
  end

  private

  def dog_parammeters
    params.require(:dog).permit(:title, :name, :size, breed: [], color: [])
  end
end
