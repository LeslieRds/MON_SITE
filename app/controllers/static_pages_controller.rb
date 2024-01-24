class StaticPagesController < ApplicationController
  skip_before_action :authenticate_user!
  def legal
  end

  def terms_of_service
  end

  def privacy
  end
end
