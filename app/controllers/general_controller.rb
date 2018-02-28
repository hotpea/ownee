class GeneralController < ApplicationController
  def index
    @post = {:teste => 'teste'}.inspect
  end
end
