class PagesController < ApplicationController
  skip_before_action :require_login, only: %i[introduction random_result result1 result2 result3 result4 result5]

  def introduction; end

  def record_word; end

  def random_result
    @randam_roger = RandamRoger.order('RANDOM()').first
  end
  
  def result1; end
  
  def result2; end
  
  def result3; end

  def result4; end

  def result5; end
end
