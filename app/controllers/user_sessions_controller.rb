class UserSessionsController < ApplicationController

  def create
    @user = login(params[:email], params[:password])
    if @user
      redirect_back_or_to root_path
    else
      flash.now[:danger] = "ログイン情報が間違っているようだ"
      render :new_record
    end
  end

  def destroy
    logout
    redirect_to root_path
  end
end
