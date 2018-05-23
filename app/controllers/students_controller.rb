class StudentsController < ApplicationController

  def index
    @students = Student.all
  end

  def show
    @class = Student.find(params[:id])
  end

  def new
    @class = Student.new
  end

  def create
    @class = Student.new(class_params(:title, :room_number))
    @class.save
    redirect_to student_path(@class)
  end

  def update
    @class = Student.find(params[:id])
    @class.update(class_params(:room_number))
  end

  private

  def class_params(*args)
    params.require(:student).permit(*args)
  end
end
