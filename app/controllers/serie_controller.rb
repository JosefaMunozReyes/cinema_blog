class SerieController < ApplicationController
  def index
    @datos_series = Series.all
  end

  def new
    @dato_serie = Series.new
  end

  def create
    @dato_serie = Series.new(series_params)
    if @dato_serie.save
      redirect_to  series_path
    else
      render:new
    end
  end


  private
  def series_params
    params.require(:series).permit(:nombre, :sinapsis, :director)
  end

end
