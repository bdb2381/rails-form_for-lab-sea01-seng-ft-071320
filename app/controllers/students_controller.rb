class StudentsController < ApplicationController

  def create
    @student = Student.new(student_params)
   
    if @student.save
      redirect_to @student
    else 
      render :new
    end 
  end 


  def edit
    @student = Student.find(params[:id])
  end 

  def update
    @student = Student.find(params[:id])
    @student.update(student_params)
    redirect_to @student
  end

  def new
    @student = Student.new
  end

  def show
   @student = Student.find(params[:id])
  end 

  def index
    @students = Student.all 
  end 
    
   
    
    
    
    
    
  private
  
  def student_params
    params.require(:student).permit(:first_name, :last_name)
  end 
  
  
end
