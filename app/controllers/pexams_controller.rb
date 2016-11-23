class PexamsController < ApplicationController
	before_action :set_pexam, only: [:show, :edit, :update, :destroy, :post]

	# GET /pexams
	# GET /pexams.json
	def index
		@pexams = Pexam.all
		respond_to do |format|
			format.html
			format.csv { send_data @pexams.to_csv}
			#format.xls # { send_data @pexams.to_csv(col_sep: "\t")}
		end
	end

	def import
		Pexam.import(params[:file])
		redirect_to pexams_url, notice: "模試結果データをアップロードしました。"
	end

	# GET /pexams/1
	# GET /pexams/1.json
	def show
	end

	# GET /pexams/new
	def new
		@pexam = Pexam.new
	end

	# GET /pexams/1/edit
	def edit
	end

	# POST /pexams
	# POST /pexams.json
	def create
		@pexam = Pexam.new(pexam_params)

		respond_to do |format|
			if @pexam.save
				format.html { redirect_to @pexam, notice: 'Pexam was successfully created.' }
				format.json { render :show, status: :created, location: @pexam }
			else
				format.html { render :new }
				format.json { render json: @pexam.errors, status: :unprocessable_entity }
			end
		end
	end

	# PATCH/PUT /pexams/1
	# PATCH/PUT /pexams/1.json
	def update
		respond_to do |format|
			if @pexam.update(pexam_params)
				format.html { redirect_to @pexam, notice: 'Pexam was successfully updated.' }
				format.json { render :show, status: :ok, location: @pexam }
			else
				format.html { render :edit }
				format.json { render json: @pexam.errors, status: :unprocessable_entity }
			end
		end
	end

	# DELETE /pexams/1
	# DELETE /pexams/1.json
	def destroy
		@pexam.destroy
		respond_to do |format|
			format.html { redirect_to pexams_url, notice: 'Pexam was successfully destroyed.' }
			format.json { head :no_content }
		end
	end

	private
	# Use callbacks to share common setup or constraints between actions.
	def set_pexam
		@pexam = Pexam.find(params[:id])
	end

	# Never trust parameters from the scary internet, only allow the white list through.
	def pexam_params
		params.require(:pexam).permit(:student_name, :english_score_16_1, :english_dev_16_1, :english_score_16_2, :english_dev_16_2, :english_score_16_3, :english_dev_16_3, :english_score_16_4, :english_dev_16_4, :math1_score_16_1, :math1_dev_16_1, :math1_score_16_2, :math1_dev_16_2, :math1_score_16_3, :math1_dev_16_3, :math1_score_16_4, :math1_dev_16_4, :math2_score_16_1, :math2_dev_16_1, :math2_score_16_2, :math2_dev_16_2, :math2_score_16_3, :math2_dev_16_3, :math2_score_16_4, :math2_dev_16_4, :genbun_score_16_1, :genbun_dev_16_1, :genbun_score_16_2, :genbun_dev_16_2, :genbun_score_16_3, :genbun_dev_16_3, :kobun_score_16_4, :kobun_dev_16_4, :kobun_score_16_1, :kobun_dev_16_1, :kobun_score_16_2, :kobun_dev_16_2, :kobun_score_16_3, :kobun_dev_16_3, :kobun_score_16_4, :kobun_dev_16_4, :kanbun_score_16_1, :kanbun_dev_16_1, :kanbun_score_16_2, :kanbun_dev_16_2, :kanbun_score_16_3, :kanbun_dev_16_3, :kanbun_score_16_4, :kanbun_dev_16_4, :post)
	end

end

