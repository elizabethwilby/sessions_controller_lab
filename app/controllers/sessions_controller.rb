class SessionsController < ApplicationController
  def new
  end

  def create
    name = params[:name]
    if name.present?
      session[:name] = name
      redirect_to '/'
    else
      redirect_to controller: 'sessions', action: 'new'
    end
  end

  def destroy
    session[:name] = nil
    redirect_to '/'
  end
end
