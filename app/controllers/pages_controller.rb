class PagesController < ApplicationController
  allow_unauthenticated_access only: :index
  def index
    redirect_to index_url if authenticated?
  end
end