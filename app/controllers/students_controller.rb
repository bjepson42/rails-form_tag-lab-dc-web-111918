class StudentsController < ApplicationController
  #before_action :set_student, only: :show

  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def new

  end

  def create
    Student.create(first_name: params[:first_name], last_name: params[:last_name])
    #session[:form_params] = params.inspect

    redirect_to students_path
  end


end
