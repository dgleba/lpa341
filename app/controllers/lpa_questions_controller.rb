class LpaQuestionsController < ApplicationController
before_filter :authenticate_user!
  # before_action :set_lpa_question, only: [:show, :edit, :update, :destroy]

  #cancancan
  load_and_authorize_resource


  # cancancan..
  #load_and_authorize_resource :lpa_question

  # GET /lpa_questions
  def index
    @q = @lpa_questions.search params[:q]
    @lpa_questions = @q.result.page(params[:page])
  end

  # GET /lpa_questions/1
  def show
  end

  # GET /lpa_questions/new
  def new
  end

  # GET /lpa_questions/1/edit
  def edit
  end

  # POST /lpa_questions
  def create
    respond_to do |format|
      if @lpa_question.save
        format.html { redirect_to @lpa_question, notice: t('success_create') }
        format.json { render :show, status: :created, location: @lpa_question }
      else
        format.html { render :new }
        format.json { render json: @lpa_question.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /lpa_questions/1
  def update
    respond_to do |format|
      if @lpa_question.update(lpa_question_params)
        format.html { redirect_to @lpa_question, notice: t('success_update') }
        format.json { render :show, status: :ok, location: @lpa_question }
      else
        format.html { render :edit }
        format.json { render json: @lpa_question.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lpa_questions/1
  def destroy
    @lpa_question.destroy
    respond_to do |format|
      format.html { redirect_to lpa_questions_url, notice: t('success_destroy') }
      format.json { head :no_content }
    end
  end

  private

  # Only allow a trusted parameter "white list" through.
  def lpa_question_params
    params.require(:lpa_question).permit(:title, :survey_id, :question_type, :sort, :active_status)
  end
end
