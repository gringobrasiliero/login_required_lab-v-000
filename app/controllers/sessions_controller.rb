class SessionsController < ApplicationController

def create
if session[:name] == nil || empty?
  session[:name] = params[:name]
  redirect_to '/'
end

def destroy
session.delete :name
end

private


end
