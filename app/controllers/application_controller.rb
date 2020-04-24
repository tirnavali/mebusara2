# frozen_string_literal: true

class ApplicationController < ActionController::Base
  helper_method :current_user

  private

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def yetkili?
    if session[:user_id]
      true
    else
      not_found
      # respond_to {|format| format.html { redirect_to :mps, notice: "Yetkiniz yok." }      }
    end
  end

  def not_found
    render file: "#{Rails.root}/public/404.html", status: 404
  end
end
