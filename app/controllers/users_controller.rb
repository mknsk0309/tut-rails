class UsersController < ApplicationController
  allow_unauthenticated_access only: %i[new create]

  def new
    @user = User.new
  end

  def edit
  end

  def create
    @user = User.new(create_user_params)
    if @user.valid?
      @user.save!
      redirect_to root_path, notice: "登録しました。"
    else
      flash.now[:alert] = @user.errors.full_messages
      render :new, status: :unprocessable_entity
    end
  end

  def update
    if Current.user.update(user_params)
      redirect_to edit_user_path, notice: "登録しました。"
    else
      flash.now[:alert] = Current.user.errors.full_messages
      render :edit, status: :unprocessable_entity
    end
  end

  private

  def create_user_params
    params.require(:user).permit(
      :name,
      :account_id,
      :email_address,
      :password,
      :password_confirmation
    )
  end

  def user_params
    params.require(:user).permit(
      :name,
      :account_id,
      :birthday
    )
  end
end
