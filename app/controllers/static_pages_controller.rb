class StaticPagesController < ApplicationController
  def home
    if logged_in?
      @micropost  = current_user.microposts.build
      @feed_items = current_user.feed.micropost_desc.page(params[:page]).per Settings.user.record_page
    end
  end

  def help; end

  def about; end

  def contact; end
end
