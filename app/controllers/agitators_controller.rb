class AgitatorsController < ApplicationController


  def new
    @agitator = current_user.agitators.build
  end

  def create
    @agitator = current_user.agitators.build(agitator_params)
    if @agitator.save
      redirect_to record_word_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def agitator_params
    params.require(:agitator).permit(:three_things, :gender, :common_name, :name, :when_he_said, :what_people_do,
                                      :treasure, :place, :where_they_go, :epic_name)
  end
end
