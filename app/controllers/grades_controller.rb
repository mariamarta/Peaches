class GradesController < ApplicationController
  before_action :set_grade, only: [:show, :edit, :update, :destroy]

  # GET /grades
  # GET /grades.json
  def index
    @grades = Grade.all
  end

  # GET /grades/1
  # GET /grades/1.json
  def show
  end

  # GET /grades/new
  def new
    @course_id = course_params[:course_id]
    @grade = Grade.new
  end

  # GET /grades/1/edit
  def edit
  end

  # POST /grades
  # POST /grades.json
  def create
     @course = Course.find(params[:course_id])
     @grade = @course.grades.create(grade_params)
     if @course.save
        redirect_to @course,
          notice: ' Grade was added successfully.'
      else
        redirect_to @course,
          alert: 'Error creating grade.'
      end
  end

  # PATCH/PUT /grades/1
  # PATCH/PUT /grades/1.json
  def update
    @course = Course.find(@grade.course_id)
    respond_to do |format|
      if @grade.update(grade_params)
        format.html { redirect_to @course, notice: 'Grade was successfully updated.' }
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
        @course = Course.find(@grade.course_id)  
    @grade.destroy
    respond_to do |format|
      format.html { redirect_to @course, notice: 'Grade was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_grade
      @grade = Grade.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def grade_params
      params.require(:grade).permit(:name, :score, :total, :weight)
    end
  end
