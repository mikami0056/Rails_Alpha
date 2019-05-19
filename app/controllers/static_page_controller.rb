class StaticPageController < ApplicationController
  def home
    if logged_in?
      @micropost  = current_user.microposts.build
      @feed_items = current_user.feed.paginate(page: params[:page])
      tes = @feed_items
      tes.any?
      logger.debug("home")

    end
  end

  def help
  end

  def about
  end

  def contact
  end
end
