class PagesController < ApplicationController
  def home
  end
  def index
    @contact = Contact.new
  end
end
