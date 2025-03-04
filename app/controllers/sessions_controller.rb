class SessionsController < ApplicationController
  def new
  end

  def create 
    if !params[:name].present?
      redirect_to sessions_new_path
    else 
      session[:name] = params[:name]

      redirect_to root_path
    end 

  end 

  def destroy
    if session[:name].present?
      session[:name] = nil
      redirect_to root_path
    else 
      session[:name]
    end
  end 
end
