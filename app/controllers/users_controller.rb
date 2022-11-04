# class UsersController < ApplicationController
   # def create
   #   auth_hash = request.env['omniauth.auth']
   #     name = auth_hash['info']['first_name']
   #     uid = auth_hash['uid']
   #     email = auth_hash['info']['email']
   #     token = auth_hash['credentials']['token']
   #
   #     user = User.find_or_create_by(email: email)
   #     user.update(uid: uid, name: name, token: token)
   #
   #     session[:user_id] = user.id
   #     redirect_to root_path
   # end
# end
