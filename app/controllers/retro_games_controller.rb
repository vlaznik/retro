class RetroGamesController < ApplicationController
  before_action :set_retro_game, only: [:show, :edit, :update, :destroy]

  # GET /retro_games
  # GET /retro_games.json
  def index
    @retro_games = RetroGame.all
  end

  # GET /retro_games/1
  # GET /retro_games/1.json
  def show
  end

  # GET /retro_games/new
  def new
    @retro_game = RetroGame.new
  end

  # GET /retro_games/1/edit
  def edit
  end

  # POST /retro_games
  # POST /retro_games.json
  def create
    @retro_game = RetroGame.new(retro_game_params)

    respond_to do |format|
      if @retro_game.save
        format.html { redirect_to @retro_game, notice: 'Retro game was successfully created.' }
        format.json { render :show, status: :created, location: @retro_game }
      else
        format.html { render :new }
        format.json { render json: @retro_game.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /retro_games/1
  # PATCH/PUT /retro_games/1.json
  def update
    respond_to do |format|
      if @retro_game.update(retro_game_params)
        format.html { redirect_to @retro_game, notice: 'Retro game was successfully updated.' }
        format.json { render :show, status: :ok, location: @retro_game }
      else
        format.html { render :edit }
        format.json { render json: @retro_game.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /retro_games/1
  # DELETE /retro_games/1.json
  def destroy
    @retro_game.destroy
    respond_to do |format|
      format.html { redirect_to retro_games_url, notice: 'Retro game was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_retro_game
      @retro_game = RetroGame.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def retro_game_params
      params.require(:retro_game).permit(:description)
    end
end
