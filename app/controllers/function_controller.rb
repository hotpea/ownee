
class FunctionController < ApplicationController
  def index
    @functions = Function.all
  end

  def add

  end

  skip_before_action :verify_authenticity_token
  def save
    @params = params

    if params[:id]
      @function = Function.find(params[:id])
    else
      @function = Function.new
    end

    @function.name = params[:name]
    @function.save

    redirect_to '/function/index'
  end

  def edit
    @function = Function.find(params[:id])
  end

  def delete
    @function = Function.delete(params[:id])

    redirect_to '/function/index'
  end
end
