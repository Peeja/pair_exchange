class WelcomeController < ApplicationController
  def index
    render text: "Hello, #{current_user ? current_user.nickname : "Guest"}"
  end
end
