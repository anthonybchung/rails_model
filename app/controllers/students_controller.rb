class StudentsController < ApplicationController
  def index
    @students = Student.all
   
  end

  def new
    @student = Student.new
    @courses = Course.all
  end

  def create
    student = Student.new
    student.new_student(student_params);
    redirect_to students_path   
  end

  def show
    @student = Student.find(params[:id])
  end

  def edit
    @student = Student.find(params[:id])
  end

  def update
    @student = Student.find(params[:id])
    
    @student.update(student_params)

  end

  private
  def student_params
    params.require(:student).permit(:first_name,:second_name,:course_name)
  end
end
