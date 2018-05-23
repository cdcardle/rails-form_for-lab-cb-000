class SchoolClassesController < ApplicationController

  def index
    @classes = SchoolClass.all
  end

  def show
    @class = SchoolClass.find(params[:id])
  end

  def new
    @class = SchoolClass.new
  end

  def create
    @class = SchoolClass.new(title: params[:title], room_number: params[:room_number])
    @class.save
    redirect_to school_class_path(@class)
  end

  def update
    @class = SchoolClass.find(params[:id])
    @class.update(class_params(:room_number))
  end
end
