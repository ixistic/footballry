class MarketplaceController < ApplicationController
  def index
    @topic = Topic.find_by(:title => 'Marketplace')
    if @topic.present?
      @market = Post.where(:topic_id => @topic.id)
      if params[:q].present?
        @market = @market.where("lower(body) LIKE lower('%#{params[:q]}%')").order(updated_at: :desc)
      else
        @market = @market.order(updated_at: :desc)
      end
    end
  end
end
