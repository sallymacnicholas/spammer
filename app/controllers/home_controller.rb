class HomeController < ApplicationController
  def index
    @friend = Friend.new
  end
end
