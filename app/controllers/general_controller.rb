class GeneralController < ApplicationController
  def index
    @data = Employee.joins(:department).group(:department).sum(:salary)
    @allDepartmentsSum = Employee.joins(:department).sum(:salary)
  end
end
