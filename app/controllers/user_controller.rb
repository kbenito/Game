class UserController < ApplicationController
  before_action :find_user, only: [:show]

  def show
  end

  private

  def find_user
    @user = User.find_by id: params[:id]

    if not @user
      flash[:alert] = 'No se encontro al usuario'
      redirect_to :root
    end
  end
end
