class StaticPagesController < ApplicationController

  before_action :authenticate_user!, except: [:index]

  def home
    respond_to do |format|
      format.html
    end
  end

end
