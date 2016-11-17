class WintersController < ApplicationController
  before_action :set_winter, only: [:show, :edit, :update, :destroy]

  # GET /winters
  # GET /winters.json
  def index
    @winters = Winter.all
  end

  # GET /winters/1
  # GET /winters/1.json
  def show
  end

  # GET /winters/new
  def new
    @winter = Winter.new
  end

  # GET /winters/1/edit
  def edit
  end

  # POST /winters
  # POST /winters.json
  def create
    @winter = Winter.new(winter_params)

    respond_to do |format|
      if @winter.save
        format.html { redirect_to @winter, notice: '入力された生徒の持ち時間は以下のとおりです。' }
        format.json { render :show, status: :created, location: @winter }
      else
        format.html { render :new }
        format.json { render json: @winter.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /winters/1
  # PATCH/PUT /winters/1.json
  def update
    respond_to do |format|
      if @winter.update(winter_params)
        format.html { redirect_to @winter, notice: 'Winter was successfully updated.' }
        format.json { render :show, status: :ok, location: @winter }
      else
        format.html { render :edit }
        format.json { render json: @winter.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /winters/1
  # DELETE /winters/1.json
  def destroy
    @winter.destroy
    respond_to do |format|
      format.html { redirect_to winters_url, notice: 'Winter was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_winter
      @winter = Winter.find(params[:id])
    end


    # Never trust parameters from the scary internet, only allow the white list through.
    def winter_params
      params.require(:winter).permit(:mon, :tue, :wed, :thr, :fri, :sat, :sun, :student_name)
    end
end
