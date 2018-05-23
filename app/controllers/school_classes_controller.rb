class SchoolClassesController < ApplicationController

  def index
    @classes = SchoolClass.all
  end

  def show
    @class = SchoolClass.find(params[:id])
  end

  def new
    @class = SchoolClass.new

  def create
    @class = SchoolClass.new(class_params(:title, :room_number))
    @class.save
    redirect_to
  end

  def update
  end

  private

  def class_params(*args)
    params.require(:school_classes).permit(*args)
  end
end
