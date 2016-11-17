class StudentMemosController < ApplicationController
  before_action :set_student_memo, only: [:show, :edit, :update, :destroy]

  # GET /student_memos
  # GET /student_memos.json
  def index
    @student_memos = StudentMemo.all
  end

  # GET /student_memos/1
  # GET /student_memos/1.json
  def show
  end

  # GET /student_memos/new
  def new
    @student_memo = StudentMemo.new
  end

  # GET /student_memos/1/edit
  def edit
  end

  # POST /student_memos
  # POST /student_memos.json
  def create
    @student_memo = StudentMemo.new(student_memo_params)

    respond_to do |format|
      if @student_memo.save
        format.html { redirect_to @student_memo, notice: 'Student memo was successfully created.' }
        format.json { render :show, status: :created, location: @student_memo }
      else
        format.html { render :new }
        format.json { render json: @student_memo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /student_memos/1
  # PATCH/PUT /student_memos/1.json
  def update
    respond_to do |format|
      if @student_memo.update(student_memo_params)
        format.html { redirect_to @student_memo, notice: 'Student memo was successfully updated.' }
        format.json { render :show, status: :ok, location: @student_memo }
      else
        format.html { render :edit }
        format.json { render json: @student_memo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /student_memos/1
  # DELETE /student_memos/1.json
  def destroy
    @student_memo.destroy
    respond_to do |format|
      format.html { redirect_to student_memos_url, notice: 'Student memo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_student_memo
      @student_memo = StudentMemo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def student_memo_params
      params.require(:student_memo).permit(:student_name, :ennea, :ct_times, :going_school, :grade, :preferred_school, :subject, :textbook, :textbook_number, :record, :created_at, :updated_at, :task)
    end
end
