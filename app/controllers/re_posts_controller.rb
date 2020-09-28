class RePostsController < ApplicationController
  before_action :set_re_post, only: [:show, :edit, :update, :destroy]

  # GET /re_posts
  # GET /re_posts.json
  def index
    @re_posts = RePost.all
  end

  # GET /re_posts/1
  # GET /re_posts/1.json
  def show
  end

  # GET /re_posts/new
  def new
    @re_post = RePost.new
  end

  # GET /re_posts/1/edit
  def edit
  end

  # POST /re_posts
  # POST /re_posts.json
  def create
    @re_post = RePost.new(re_post_params)

    respond_to do |format|
      if @re_post.save
        format.html { redirect_to alram_test_path(@re_post.alram_test_id), notice: 'Re post was successfully created.' }
        format.json { render :show, status: :created, location: @re_post }
      else
        format.html { render :new }
        format.json { render json: @re_post.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /re_posts/1
  # PATCH/PUT /re_posts/1.json
  def update
    respond_to do |format|
      if @re_post.update(re_post_params)
        format.html { redirect_to @re_post, notice: 'Re post was successfully updated.' }
        format.json { render :show, status: :ok, location: @re_post }
      else
        format.html { render :edit }
        format.json { render json: @re_post.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /re_posts/1
  # DELETE /re_posts/1.json
  def destroy
    @re_post.destroy
    respond_to do |format|
      format.html { redirect_to re_posts_url, notice: 'Re post was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_re_post
      @re_post = RePost.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def re_post_params
      params.require(:re_post).permit(:user_id, :comment, :alram_test_id)
    end
end
