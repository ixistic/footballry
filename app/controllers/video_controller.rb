class VideoController < ApplicationController
  def index
    @topic = Topic.find_by(:title => 'Video')
    if @topic.present?
      @video = Post.where(:topic_id => @topic.id)
      if params[:q].present?
        @video = @video.where("lower(title) LIKE lower('%#{params[:q]}%')").order(updated_at: :desc)
      else
        @video = @video.order(updated_at: :desc)
      end
    end
  end
end
