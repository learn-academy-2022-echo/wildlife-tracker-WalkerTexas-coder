class StudentsController < ApplicationController
  # Index
  def index
    students = Student.all
    render json: students
  end
  # Show
  def show
    student = Student.find(params[:id])
    render json: student
  end
  # Create
  def create
    student = Student.create(strong_student_params)
    if student.valid?
      render json: student
    else
      render status: 422
    end
  end
  # Update
  # Destroy
  private
  def strong_student_params
    params.require(:student).permit(:name, :cohort)
  end
end
