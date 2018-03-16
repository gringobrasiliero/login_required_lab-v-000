class SessionsController < ApplicationController

def create
if session[:name] == nil || session[:name].empty?
  redirect_to login_path
else
  session[:name] = params[:name]
  redirect_to '/'
end

def destroy
session.delete :name
end

private


end
