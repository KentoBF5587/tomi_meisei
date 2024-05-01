class PagesController < ApplicationController
  skip_before_action :require_login, only: %i[introduction]

  def introduction; end

  def record_word; end
end
