class TestController < ApplicationController
  def nanika
    @posts1 = [
      "aaaaaaaaa",
      "iiiiiiiii"
    ]
    @id = params[:id]
  end
  def show
      @id = params[:id]
      @post = Test.find_by(id:params[:id])
  end
end
