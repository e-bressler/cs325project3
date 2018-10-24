class StaticPagesController < ApplicationController

  skip_before_action :authenticate_user!, only: [:home]

  def home
    respond_to do |format|
      format.html
    end
  end

end
