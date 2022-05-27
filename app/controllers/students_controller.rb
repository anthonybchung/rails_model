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
    
    if !Course.exists? name: student_params[:course_name]
      Course.create(name: student_params[:course_name])
    end

p "**************************************"
    p student_params[:first_name]
    p 
    p "***********************************************"
    course_id = Course.find_by(name: student_params[:course_name])
    student.first_name = student_params[:first_name]
    student.second_name = student_params[:second_name]
    student.course = course_id
    student.save
    

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
