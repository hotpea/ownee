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

    manager = Department.exists?(employee_id: params[:id])

    # manager = false

    if Time.now.year - 18 < @employee.birth.year
      redirect_to request.referrer, flash: {error: 'Funcionário precisa ter mais de 18 anos!!!'}
    elsif (params[:salary].to_f > 10000) && (not manager)
      redirect_to request.referrer, flash: {
          error: 'Funcionário não pode ganhar mais de R$10.000 se não for gerente de departamento!!!',
          msg: 'Vá em editar departamento e adicione este usuário a um departamento como gerente e volte aqui e tente aumentar seu salário'
      }
    else
      @employee.save

      redirect_to '/employee/index'
    end
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
