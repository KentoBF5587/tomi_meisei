class PagesController < ApplicationController
  skip_before_action :require_login, only: %i[introduction random_result]

  def introduction; end

  def record_word; end

  def random_result
    @randam_roger = RandamRoger.order('RANDOM()').first
  end

end
