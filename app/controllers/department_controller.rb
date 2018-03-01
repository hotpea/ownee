class DepartmentController < ApplicationController
  def index
    @departments = Department.all
  end

  def add
    @employees = Employee.all
  end

  skip_before_action :verify_authenticity_token
  def save
    @params = params

    if params[:id]
      @department = Department.find(params[:id])
    else
      @department = Department.new
    end

    @department.name = params[:name]
    if params[:employee_id] != '0'
      @department.employee_id = params[:employee_id]
    end

    @department.save

    redirect_to '/department/index'
  end

  def edit
    @department = Department.find(params[:id])
    @employees = Employee.all
  end

  def delete
    @department = Department.delete(params[:id])

    redirect_to '/department/index'
  end
end
