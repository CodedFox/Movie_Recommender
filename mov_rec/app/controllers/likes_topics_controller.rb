class LikesTopicsController < ApplicationController
  before_action :set_likes_topic, only: [:show, :edit, :update, :destroy]

  # GET /likes_topics
  # GET /likes_topics.json
  def index
    @likes_topics = LikesTopic.all
  end

  # GET /likes_topics/1
  # GET /likes_topics/1.json
  def show
  end

  # GET /likes_topics/new
  def new
    @likes_topic = LikesTopic.new
  end

  # GET /likes_topics/1/edit
  def edit
  end

  # POST /likes_topics
  # POST /likes_topics.json
  def create
    @likes_topic = LikesTopic.new(likes_topic_params)

    respond_to do |format|
      if @likes_topic.save
        format.html { redirect_to @likes_topic, notice: 'Likes topic was successfully created.' }
        format.json { render :show, status: :created, location: @likes_topic }
      else
        format.html { render :new }
        format.json { render json: @likes_topic.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /likes_topics/1
  # PATCH/PUT /likes_topics/1.json
  def update
    respond_to do |format|
      if @likes_topic.update(likes_topic_params)
        format.html { redirect_to @likes_topic, notice: 'Likes topic was successfully updated.' }
        format.json { render :show, status: :ok, location: @likes_topic }
      else
        format.html { render :edit }
        format.json { render json: @likes_topic.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /likes_topics/1
  # DELETE /likes_topics/1.json
  def destroy
    @likes_topic.destroy
    respond_to do |format|
      format.html { redirect_to likes_topics_url, notice: 'Likes topic was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_likes_topic
      @likes_topic = LikesTopic.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def likes_topic_params
      params.require(:likes_topic).permit(:profile_id, :topic_id)
    end
end
