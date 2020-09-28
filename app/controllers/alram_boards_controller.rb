class AlramBoardsController < ApplicationController
  before_action :set_alram_board, only: [:show, :edit, :update, :destroy]

  # GET /alram_boards
  # GET /alram_boards.json
  def index
    @alram_boards = AlramBoard.all
  end

  # GET /alram_boards/1
  # GET /alram_boards/1.json
  def show
  end

  # GET /alram_boards/new
  def new
    @alram_board = AlramBoard.new
  end

  # GET /alram_boards/1/edit
  def edit
  end

  # POST /alram_boards
  # POST /alram_boards.json
  def create
    @alram_board = AlramBoard.new(alram_board_params)

    respond_to do |format|
      if @alram_board.save
        format.html { redirect_to @alram_board, notice: 'Alram board was successfully created.' }
        format.json { render :show, status: :created, location: @alram_board }
      else
        format.html { render :new }
        format.json { render json: @alram_board.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /alram_boards/1
  # PATCH/PUT /alram_boards/1.json
  def update
    respond_to do |format|
      if @alram_board.update(alram_board_params)
        format.html { redirect_to @alram_board, notice: 'Alram board was successfully updated.' }
        format.json { render :show, status: :ok, location: @alram_board }
      else
        format.html { render :edit }
        format.json { render json: @alram_board.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /alram_boards/1
  # DELETE /alram_boards/1.json
  def destroy
    @alram_board.destroy
    respond_to do |format|
      format.html { redirect_to alram_boards_url, notice: 'Alram board was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_alram_board
      @alram_board = AlramBoard.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def alram_board_params
      params.require(:alram_board).permit(:user_id, :board_id)
    end
end
