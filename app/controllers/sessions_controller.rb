class SessionsController < ApplicationController
  def google
    name = auth_hash['info']['first_name']
    uid = auth_hash['uid']
    email = auth_hash['info']['email']
    token = auth_hash['credentials']['token']

    user = User.find_or_create_by(email: email) do |user|
    user.update(uid: uid, name: name, token: token)
  end
  
    session[:user_id] = user.id
    redirect_to root_path
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path, notice: 'Logged Out'
  end

  private

  def auth_hash
    auth_hash = request.env['omniauth.auth']
  end
end
