class MovieController < ApplicationController
  def index
    @pelis = Movie.all
  end

  def new
    @peli = Movie.new
  end

  def create
    @peli = Movie.new(pelis_params)
    if @peli.save
      redirect_to movies_path
    else
      render:new
    end
  
  end


  private
  def pelis_params
    params.require(:movie).permit(:nombre, :sinapsis, :director) #relacion al nombre del modelo #models!!!
  
  end
end
