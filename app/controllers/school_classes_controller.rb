class SchoolClassesController < ApplicationController

  def create
    @school_class = SchoolClass.new(school_class_params)
    
    if @school_class.save
      redirect_to @school_class #school_class_path( @school_class) 
    else 
      render :new 
    end 
  
  end

  def index
  @school_classes = SchoolClass.all
end 

def new
  @school_class = SchoolClass.new
end


def show
  @school_class = SchoolClass.find(params[:id])
end

def edit
  @school_class = SchoolClass.find(params[:id])
end

def update
  @school_class = SchoolClass.find(params[:id])
  @school_class.update(school_class_params)
  redirect_to @school_class
end


# def update
# end 


private

def school_class_params
  params.require(:school_class).permit(:title, :room_number)
end 


end
