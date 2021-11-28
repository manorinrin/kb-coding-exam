class StudentsController < ApplicationController
 
    def index
        @students = Student.all
    end
    
    def new
        @students = Student.new
      end

      def create
        students = Student.new(student_params)
        if students.save
          redirect_to :action => "index"
        else
          redirect_to :action => "new"
        end
      end

      def show
        @Students = Student.find(params[:id])
      end
    
      private
      def student_params
        params.require(:student).permit(:body)
      end
end
