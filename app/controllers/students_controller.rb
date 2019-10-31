class StudentsController < ApplicationController
	def new
		@student=Student.new  
	end
	def create
		@student=Student.new(params.require(:student).permit(:stuname, :section, :telugu, :english, :hindi))
		if  @student.save
		    redirect_to @student
		else
		  	render 'new'  
	   end
	end     	
	def show
		@student=Student.find(params[:id])
	end	
	def index
		@students=Student.all  
	end
	def edit
		@student=Student.find(params[:id])
	end	
	def update
		@student=Student.find(params[:id])
		if  @student.update(params.require(:student).permit(:stuname, :section, :telugu, :english, :hindi))
			redirect_to @student
		else
		 	render 'edit'
		end
	end	
	def destroy
		@student=Student.find(params[:id])
		@student.destroy
		redirect_to  students_path
	end	
end

		


