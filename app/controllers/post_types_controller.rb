class PostTypesController < ApplicationController
  before_action :set_post_type, only: [:show, :edit, :update, :destroy]

  # GET /post_types
  # GET /post_types.json
  def index
    @post_types = PostType.all
  end

  # GET /post_types/1
  # GET /post_types/1.json
  def show
  end

  # GET /post_types/new
  def new
    @post_type = PostType.new
  end

  # GET /post_types/1/edit
  def edit
  end

  # POST /post_types
  # POST /post_types.json
  def create
    @post_type = PostType.new(post_type_params)
    @post_type.created_by = current_user
    @post_type.last_edited_by = current_user
    respond_to do |format|
      if @post_type.save
        format.html { redirect_to @post_type, notice: 'Post type was successfully created.' }
        format.json { render :show, status: :created, location: @post_type }
      else
        format.html { render :new }
        format.json { render json: @post_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /post_types/1
  # PATCH/PUT /post_types/1.json
  def update
    @post_type.last_edited_by = current_user
    respond_to do |format|
      if @post_type.update(post_type_params)
        format.html { redirect_to @post_type, notice: 'Post type was successfully updated.' }
        format.json { render :show, status: :ok, location: @post_type }
      else
        format.html { render :edit }
        format.json { render json: @post_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /post_types/1
  # DELETE /post_types/1.json
  def destroy
    @post_type.destroy
    respond_to do |format|
      format.html { redirect_to post_types_url, notice: 'Post type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_post_type
      @post_type = PostType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def post_type_params
      params.require(:post_type).permit(:name)
    end
end
