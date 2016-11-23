class GrammerLv1sController < ApplicationController
  before_action :set_grammer_lv1, only: [:show, :edit, :update, :destroy]

  # GET /grammer_lv1s
  # GET /grammer_lv1s.json
  def index
    @grammer_lv1s = GrammerLv1.all
  end

  # GET /grammer_lv1s/1
  # GET /grammer_lv1s/1.json
  def show
  end

  # GET /grammer_lv1s/new
  def new
    @grammer_lv1 = GrammerLv1.new
  end

  # GET /grammer_lv1s/1/edit
  def edit
  end

  # POST /grammer_lv1s
  # POST /grammer_lv1s.json
  def create
    @grammer_lv1 = GrammerLv1.new(grammer_lv1_params)

    respond_to do |format|
      if @grammer_lv1.save
        format.html { redirect_to @grammer_lv1, notice: 'Grammer lv1 was successfully created.' }
        format.json { render :show, status: :created, location: @grammer_lv1 }
      else
        format.html { render :new }
        format.json { render json: @grammer_lv1.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /grammer_lv1s/1
  # PATCH/PUT /grammer_lv1s/1.json
  def update
    respond_to do |format|
      if @grammer_lv1.update(grammer_lv1_params)
        format.html { redirect_to @grammer_lv1, notice: 'Grammer lv1 was successfully updated.' }
        format.json { render :show, status: :ok, location: @grammer_lv1 }
      else
        format.html { render :edit }
        format.json { render json: @grammer_lv1.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /grammer_lv1s/1
  # DELETE /grammer_lv1s/1.json
  def destroy
    @grammer_lv1.destroy
    respond_to do |format|
      format.html { redirect_to grammer_lv1s_url, notice: 'Grammer lv1 was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_grammer_lv1
      @grammer_lv1 = GrammerLv1.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def grammer_lv1_params
      params.require(:grammer_lv1).permit(:q1, :q2, :q3, :q4, :q5)
    end
end
