class EmployeeController < ApplicationController
  def index
    @employees = Employee.all
  end

  def add
    @functions = Function.all
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
    @employee.function_id = params[:function_id]
    @employee.save

    redirect_to '/employee/index'
  end

  def edit
    @employee = Employee.find(params[:id])
    @functions = Function.all
  end

  def delete
    @employee = Employee.delete(params[:id])

    redirect_to '/employee/index'
  end
end
