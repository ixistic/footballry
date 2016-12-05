class VideoController < ApplicationController
  def index
    @topic = Topic.find_by(:title => 'Video')
    if @topic.present?
      @video = Post.where(:topic_id => @topic.id).order(updated_at: :desc)
    end
  end
end
