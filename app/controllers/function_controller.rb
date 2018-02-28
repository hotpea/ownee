class FunctionController < ApplicationController
  def index
    @functions = Function.all
  end

  def add
  end

  def edit
  end
end
