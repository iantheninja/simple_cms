class AccessController < ApplicationController
  before_action :confirm_logged_in?, except: %i[new create]

  # display menu
  def menu
    set_username
    @user_id = session[:user_id]
  end

  # display login form
  def new
  end

  # process login form
  def create
    logger.info('*** Login process started ...')
    cookies[:username] = params[:username]
    session[:user_id] = 1367
    flash[:notice] = 'login successful'
    cookies[:language] = 'English'
    redirect_to menu_path
  end

  # logout user
  def destroy
    session[:user_id] = nil
    logger.info("**** Logged #{session[:user_id]} out of the app")
    redirect_to login_path
  end
end
