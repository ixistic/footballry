class NewsController < ApplicationController
  def index
    @topic = Topic.find_by(:title => 'News')
    if @topic.present?
      @news = Post.where(:topic_id => @topic.id).order(updated_at: :desc)
    end
  end
end
