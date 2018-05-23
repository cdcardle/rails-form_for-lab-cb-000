class SchoolClassesController < ApplicationController

  def index
    @classes = SchoolClass.all
  end

  def show
    @class = SchoolClass.find(params[:id])
  end

  def new
  end

  def create
  end

  def update
  end

  private

  def puts_params(*args)
    params.require(:)
  end
end
