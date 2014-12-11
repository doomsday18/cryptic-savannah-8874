class UsersController < ApplicationController
def new
    super
  end

 def update
    @user = User.find(params[:id])
    if @user.update_attributes(secure_params)
      redirect_to tettoroberto18_path, :notice => "User updated."
    else
      redirect_to tettoroberto18_path, :alert => "Unable to update user."
    end
  end

  def secure_params
    params.require(:user).permit(:role)
  end

end
