class DocumentalController < ApplicationController
  def index
    @documentales = Documental.all
  end

  def new
    @documental = Documental.new
  end

  def create
    @documental = Documental.new(documentals_params)
    if @documental.save
      redirect_to documentals_path
    else
      render:new
    end
  end


  private
  def documentals_params
    params.require(:documental).permit(:nombre, :sinapsis, :director)
  end
end
