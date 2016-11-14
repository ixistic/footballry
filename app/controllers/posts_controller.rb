class PostsController < ApplicationController
  load_and_authorize_resource
  before_action :set_post, only: [:show, :edit, :update, :destroy]

  # GET /posts
  # GET /posts.json
  def index
    @posts = Post.where(:topic_id => params[:topic_id])
    @topic = Topic.find_by(:id => params[:topic_id])
  end

  # GET /posts/1
  # GET /posts/1.json
  def show
    @topic = Topic.find_by(:id => params[:topic_id])
  end

  # GET /posts/new
  def new
    @topic = Topic.find_by(:id => params[:topic_id])
    @post = Post.new(:topic => @topic)
  end

  # GET /posts/1/edit
  def edit
    @topic = Topic.find_by(:id => params[:topic_id])
  end

  # POST /posts
  # POST /posts.json
  def create
    @topic = Topic.find_by(:id => params[:topic_id])
    @post = Post.new(post_params)
    @post.topic = @topic
    @post.created_by = current_user
    @post.last_edited_by = current_user
    @post.status = '1'
    respond_to do |format|
      if @post.save
        format.html { redirect_to topic_post_path(@topic, @post), notice: 'Post was successfully created.' }
        format.json { render :show, status: :created, location: @post }
      else
        format.html { render :new }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /posts/1
  # PATCH/PUT /posts/1.json
  def update
    @topic = Topic.find_by(:id => params[:topic_id])
    @post.last_edited_by = current_user
    respond_to do |format|
      if @post.update(post_params)
        format.html { redirect_to topic_post_path(@topic, @post), notice: 'Post was successfully updated.' }
        format.json { render :show, status: :ok, location: @post }
      else
        format.html { render :edit }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /posts/1
  # DELETE /posts/1.json
  def destroy
    @post.destroy
    respond_to do |format|
      format.html { redirect_to topic_posts_path, notice: 'Post was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_post
      @post = Post.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def post_params
      params.require(:post).permit(:title, :body, :topic_id, :post_type_id)
    end
end
