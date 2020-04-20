class SessionsController < ApplicationController
  def new
  end

  def create
  	user = User.authenticate(params[:email], params[:password])
  	if user
  		session[:user_id] = user.id
  		redirect_to root_url, :notice => "Giriş yapıldı!"
  	else
  		flash.now.alert = "Yanlış email yada şifre girdiniz!"
  		render "new"
  	end
  end

  def destroy
  	session[:user_id] = nil
  	redirect_to new_session_path, :notice => "Çıkış yapıldı!"
  end
end
