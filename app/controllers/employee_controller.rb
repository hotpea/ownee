class EmployeeController < ApplicationController
  def index
    @employees = Employee.all
  end

  def add
    @departments = Department.all
  end

  skip_before_action :verify_authenticity_token
  def save
    @params = params

    if params[:id]
      @employee = Employee.find(params[:id])
    else
      @employee = Employee.new
    end

    @employee.name = params[:name]
    @employee.birth = params[:birth]
    @employee.salary = params[:salary]
    @employee.department_id = params[:department_id]
    @employee.save

    redirect_to '/employee/index'
  end

  def edit
    @employee = Employee.find(params[:id])
    @departments = Department.all
  end

  def delete
    @employee = Employee.delete(params[:id])

    redirect_to '/employee/index'
  end
end
