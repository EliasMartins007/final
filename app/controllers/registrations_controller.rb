class RegistrationsController < ApplicationController
  def new
      #teste user
    @user = User.new
  end
end

