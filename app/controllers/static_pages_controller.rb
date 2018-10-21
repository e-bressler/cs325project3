class StaticPagesController < ApplicationController

  before_action :authenticate_user!, except: [:home]

  def home
    respond_to do |format|
      format.html
    end
  end

end
