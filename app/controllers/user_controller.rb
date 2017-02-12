class UserController < ApplicationController
  def index
    @user=User.find(1)
    @location = Location.first
  end
end
