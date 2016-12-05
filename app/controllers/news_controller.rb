class NewsController < ApplicationController
  def index
    @topic = Topic.find_by(:title => 'News')
    if @topic.present?
      @news = Post.where(:topic_id => @topic.id)
      if params[:q].present?
        @news = @news.where("lower(title) LIKE lower('%#{params[:q]}%')").order(updated_at: :desc)
      else
        @news = @news.order(updated_at: :desc)
      end
    end
  end
end
