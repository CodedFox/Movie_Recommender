class MovieCastsController < ApplicationController
  before_filter :authenticate
  before_action :set_movie_cast, only: [:show, :edit, :update, :destroy]

  # GET /movie_casts
  # GET /movie_casts.json
  def index
    @movie_casts = MovieCast.all
  end

  # GET /movie_casts/1
  # GET /movie_casts/1.json
  def show
  end

  # GET /movie_casts/new
  def new
    @movie_casts = MovieCast.where(movie_id: params[:movie_id])
    @movie_cast = MovieCast.new
    @movie_cast.movie_id = params[:movie_id]
  end

  # GET /movie_casts/1/edit
  def edit
    @movie_casts = MovieCast.where(movie_id: params[:movie_id])
  end

  # POST /movie_casts
  # POST /movie_casts.json
  def create
    @movie_cast = MovieCast.new(movie_cast_params)

    respond_to do |format|
      if @movie_cast.save
        format.html { redirect_to "/movies/#{@movie_cast.movie_id}", notice: 'Movie cast was successfully created.' }
        format.json { render :show, status: :created, location: @movie_cast }
      else
        format.html { render :new }
        format.json { render json: @movie_cast.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /movie_casts/1
  # PATCH/PUT /movie_casts/1.json
  def update
    respond_to do |format|
      if @movie_cast.update(movie_cast_params)
        format.html { redirect_to @movie_cast, notice: 'Movie cast was successfully updated.' }
        format.json { render :show, status: :ok, location: @movie_cast }
      else
        format.html { render :edit }
        format.json { render json: @movie_cast.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /movie_casts/1
  # DELETE /movie_casts/1.json
  def destroy
    @movie_cast.destroy
    respond_to do |format|
      format.html { redirect_to "/movies/#{@movie_cast.movie_id}", notice: 'Movie cast was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_movie_cast
      @movie_cast = MovieCast.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def movie_cast_params
      params.require(:movie_cast).permit(:movie_id, :casting_type_id, :actor_id)
    end
end
