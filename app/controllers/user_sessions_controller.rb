class UserSessionsController < ApplicationController
  skip_before_action :require_login, only: %i[new create]

  def create
    @user = login(params[:email], params[:password])
    if @user
      redirect_back_or_to root_path
    else
      flash.now[:danger] = "ログイン情報が間違っているようだ"
      render :new
    end
  end

  def destroy
    logout
    redirect_to root_path
  end
end
