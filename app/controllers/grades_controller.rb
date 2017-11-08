# frozen_string_literal: true

class GradesController < ApplicationController
  before_action :set_grade, only: %i[show edit update destroy]

  # GET /grades
  # GET /grades.json
  def index
    @grades = Grade.all
  end

  # GET /grades/1
  # GET /grades/1.json
  def show; end

  # GET /grades/new
  def new
    @grade = Grade.new
  end

  # GET /grades/1/edit
  def edit; end

  # POST /grades
  # POST /grades.json
  def create
    @grade = Grade.new(grade_params)
    return render_new_grade_page(@grade) unless @grade.save
    flash[:success] = I18n.t(:register_add_success)
    redirect_to :grades
  end

  # PATCH/PUT /grades/1
  # PATCH/PUT /grades/1.json
  def update
    respond_to do |format|
      if @grade.update(grade_params)
        format.html { redirect_to @grade, notice: 'Grade was successfully updated.' }
        format.json { render :show, status: :ok, location: @grade }
      else
        format.html { render :edit }
        format.json { render json: @grade.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /grades/1
  # DELETE /grades/1.json
  def destroy
    @grade.destroy
    respond_to do |format|
      format.html { redirect_to grades_url, notice: 'Grade was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

<<<<<<< HEAD
  # Use callbacks to share common setup or constraints between actions.
  def set_grade
    @grade = Grade.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def grade_params
    params.require(:grade).permit(:category, :name, :vacancy, :course_load)
  end
=======
    # Never trust parameters from the scary internet, only allow the white list through.
    def grade_params
      params.require(:grade).permit(:category, :name, :vacancy, :course_load, :product_id)
    end
>>>>>>> 21a709b20d3ef66b7209f3bb5975b077a5b94dfa
end
