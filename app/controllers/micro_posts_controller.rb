class MicroPostsController < ApplicationController
  before_action :set_micro_post, only: [:show, :edit, :update, :destroy]

  # GET /micro_posts
  # GET /micro_posts.json
  def index
    @micro_posts = MicroPost.all
  end

  # GET /micro_posts/1
  # GET /micro_posts/1.json
  def show
  end

  # GET /micro_posts/new
  def new
    @micro_post = MicroPost.new
  end

  # GET /micro_posts/1/edit
  def edit
  end

  # POST /micro_posts
  # POST /micro_posts.json
  def create
    @micro_post = MicroPost.new(micro_post_params)

    respond_to do |format|
      if @micro_post.save
        format.html { redirect_to @micro_post, notice: 'Micro post was successfully created.' }
        format.json { render :show, status: :created, location: @micro_post }
      else
        format.html { render :new }
        format.json { render json: @micro_post.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /micro_posts/1
  # PATCH/PUT /micro_posts/1.json
  def update
    respond_to do |format|
      if @micro_post.update(micro_post_params)
        format.html { redirect_to @micro_post, notice: 'Micro post was successfully updated.' }
        format.json { render :show, status: :ok, location: @micro_post }
      else
        format.html { render :edit }
        format.json { render json: @micro_post.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /micro_posts/1
  # DELETE /micro_posts/1.json
  def destroy
    @micro_post.destroy
    respond_to do |format|
      format.html { redirect_to micro_posts_url, notice: 'Micro post was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_micro_post
      @micro_post = MicroPost.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def micro_post_params
      params.require(:micro_post).permit(:content, :user_id)
    end
end
