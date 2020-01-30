class RegistrationsController < DeviseTokenAuth::RegistrationsController

  def create
    @user = User.new(user_params)
    begin
      @user.save!
      render json: @user, status: :created
    rescue => error
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  private

  def user_params
    params.permit(:name, :email, :password, :role_id)
  end

end
