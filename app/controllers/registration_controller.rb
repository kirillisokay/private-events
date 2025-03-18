class RegistrationController < ApplicationController
  allow_unauthenticated_access only: %i[ new create ]
  def index
  end

  def create
    user = User.new(params.permit(:email_address, :password))
    if user.save
      start_new_session_for user
      redirect_to events_index_path
    else
      redirect_to signup_path, alert: @user.errors.full_messages
    end
  end

  def new

  end
end
