class AgitatorsController < ApplicationController


  def new
    @agitator = Agitator.new
  end

  def create
  end

  private

  def agitator_params
    params.require(:agitator).permit()
  end
end
