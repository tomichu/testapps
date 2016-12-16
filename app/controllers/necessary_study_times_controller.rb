class NecessaryStudyTimesController < ApplicationController
  before_action :set_necessary_study_time, only: [:show, :edit, :update, :destroy]

  # GET /necessary_study_times
  # GET /necessary_study_times.json
  def index
    @necessary_study_times = NecessaryStudyTime.all
  end

  # GET /necessary_study_times/1
  # GET /necessary_study_times/1.json
  def show
  end

  # GET /necessary_study_times/new
  def new
    @necessary_study_time = NecessaryStudyTime.new
  end

  # GET /necessary_study_times/1/edit
  def edit
  end

  # POST /necessary_study_times
  # POST /necessary_study_times.json
  def create
    @necessary_study_time = NecessaryStudyTime.new(necessary_study_time_params)

    respond_to do |format|
      if @necessary_study_time.save
        format.html { redirect_to @necessary_study_time, notice: 'Necessary study time was successfully created.' }
        format.json { render :show, status: :created, location: @necessary_study_time }
      else
        format.html { render :new }
        format.json { render json: @necessary_study_time.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /necessary_study_times/1
  # PATCH/PUT /necessary_study_times/1.json
  def update
    respond_to do |format|
      if @necessary_study_time.update(necessary_study_time_params)
        format.html { redirect_to @necessary_study_time, notice: 'Necessary study time was successfully updated.' }
        format.json { render :show, status: :ok, location: @necessary_study_time }
      else
        format.html { render :edit }
        format.json { render json: @necessary_study_time.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /necessary_study_times/1
  # DELETE /necessary_study_times/1.json
  def destroy
    @necessary_study_time.destroy
    respond_to do |format|
      format.html { redirect_to necessary_study_times_url, notice: 'Necessary study time was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_necessary_study_time
      @necessary_study_time = NecessaryStudyTime.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def necessary_study_time_params
      params.require(:necessary_study_time).permit(:title, :summary_necessary_time, :english_ct, :english_lec, :math_ct, :math_lec, :japanese_ct, :japanese_lec, :classic_ct, :classic_lec, :japanese_history_ct, :japanese_history_lec, :english_ct_num, :math_ct_num, :japanese_ct_num, :classic_ct_num, :japanese_history_ct_num)
    end
end
