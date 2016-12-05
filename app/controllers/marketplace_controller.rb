class MarketplaceController < ApplicationController
  def index
    @topic = Topic.find_by(:title => 'Marketplace')
    if @topic.present?
      @market = Post.where(:topic_id => @topic.id).order(updated_at: :desc)
    end
  end
end
