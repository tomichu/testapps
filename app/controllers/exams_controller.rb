class ExamsController < ApplicationController
  before_action :set_exam, only: [:show, :edit, :update, :destroy]

  # GET /exams
  # GET /exams.json
  def index
    @exams = Exam.all
		respond_to do |format|
			format.html
			format.csv { send_data @exams.to_csv }
		end
  end

	def import
		Exam.import(params[:file])
		redirect_to exams_path, notice: "試験結果データをアップロードしました。"
	end


  # GET /exams/1
  # GET /exams/1.json
  def show
  end

  # GET /exams/new
  def new
    @exam = Exam.new
  end

  # GET /exams/1/edit
  def edit
  end

  # POST /exams
  # POST /exams.json
  def create
    @exam = Exam.new(exam_params)

    respond_to do |format|
      if @exam.save
        format.html { redirect_to @exam, notice: 'Exam was successfully created.' }
        format.json { render :show, status: :created, location: @exam }
      else
        format.html { render :new }
        format.json { render json: @exam.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /exams/1
  # PATCH/PUT /exams/1.json
  def update
    respond_to do |format|
      if @exam.update(exam_params)
        format.html { redirect_to @exam, notice: 'Exam was successfully updated.' }
        format.json { render :show, status: :ok, location: @exam }
      else
        format.html { render :edit }
        format.json { render json: @exam.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /exams/1
  # DELETE /exams/1.json
  def destroy
    @exam.destroy
    respond_to do |format|
      format.html { redirect_to exams_url, notice: 'Exam was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_exam
      @exam = Exam.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def exam_params
      params.require(:exam).permit(:student_name, :english_score_16_1, :english_dev_16_1, :english_score_16_2, :english_dev_16_2, :english_score_16_3, :english_dev_16_3, :english_score_16_4, :english_dev_16_4, :math1_score_16_1, :math1_dev_16_1, :math1_score_16_2, :math1_dev_16_2, :math1_score_16_3, :math1_dev_16_3, :math1_score_16_4, :math1_dev_16_4, :math2_score_16_1, :math2_dev_16_1, :math2_score_16_2, :math2_dev_16_2, :math2_score_16_3, :math2_dev_16_3, :math2_score_16_4, :math2_dev_16_4, :genbun_score_16_1, :genbun_dev_16_1, :genbun_score_16_2, :genbun_dev_16_2, :genbun_score_16_3, :genbun_dev_16_3, :kobun_score_16_4, :kobun_dev_16_4, :kobun_score_16_1, :kobun_dev_16_1, :kobun_score_16_2, :kobun_dev_16_2, :kobun_score_16_3, :kobun_dev_16_3, :kobun_score_16_4, :kobun_dev_16_4, :kanbun_score_16_1, :kanbun_dev_16_1, :kanbun_score_16_2, :kanbun_dev_16_2, :kanbun_score_16_3, :kanbun_dev_16_3, :kanbun_score_16_4, :kanbun_dev_16_4)
    end
end
