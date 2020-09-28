class AlramTestsController < ApplicationController
  before_action :set_alram_test, only: [:show, :edit, :update, :destroy]

  # GET /alram_tests
  # GET /alram_tests.json
  def index
    @alram_tests = AlramTest.all
	@my_alrams = AlramBoard.where(user_id: current_user.id).order(:id)
  end

  # GET /alram_tests/1
  # GET /alram_tests/1.json
  def show
	@re_post = RePost.new
	@comment = RePost.where(alram_test_id: @alram_test.id).order(:id)
  end

  # GET /alram_tests/new
  def new
    @alram_test = AlramTest.new
  end

  # GET /alram_tests/1/edit
  def edit
  end

  # POST /alram_tests
  # POST /alram_tests.json
  def create
    @alram_test = AlramTest.new(alram_test_params)

    respond_to do |format|
      if @alram_test.save
        format.html { redirect_to @alram_test, notice: 'Alram test was successfully created.' }
        format.json { render :show, status: :created, location: @alram_test }
      else
        format.html { render :new }
        format.json { render json: @alram_test.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /alram_tests/1
  # PATCH/PUT /alram_tests/1.json
  def update
    respond_to do |format|
      if @alram_test.update(alram_test_params_for_update)
        format.html { redirect_to @alram_test, notice: 'Alram test was successfully updated.' }
        format.json { render :show, status: :ok, location: @alram_test }
      else
        format.html { render :edit }
        format.json { render json: @alram_test.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /alram_tests/1
  # DELETE /alram_tests/1.json
  def destroy
    @alram_test.destroy
    respond_to do |format|
      format.html { redirect_to alram_tests_url, notice: 'Alram test was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_alram_test
      @alram_test = AlramTest.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def alram_test_params
      params.require(:alram_test).permit(:title, :desc, :user_id)
    end
	
	def alram_test_params_for_update
      params.require(:alram_test).permit(:title, :desc)
    end
end
