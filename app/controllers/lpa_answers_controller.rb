class LpaAnswersController < ApplicationController
before_filter :authenticate_user!
  # before_action :set_lpa_answer, only: [:show, :edit, :update, :destroy]

  #cancancan
  load_and_authorize_resource


  # cancancan..
  #load_and_authorize_resource :lpa_answer

  # GET /lpa_answers
  def index
    @q = @lpa_answers.search params[:q]
    @lpa_answers = @q.result.page(params[:page])
  end

  # GET /lpa_answers/1
  def show
  end

  # GET /lpa_answers/new
  def new
  end

  # GET /lpa_answers/1/edit
  def edit
  end

  # POST /lpa_answers
  def create
    respond_to do |format|
      if @lpa_answer.save
        format.html { redirect_to @lpa_answer, notice: t('success_create') }
        format.json { render :show, status: :created, location: @lpa_answer }
      else
        format.html { render :new }
        format.json { render json: @lpa_answer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /lpa_answers/1
  def update
    respond_to do |format|
      if @lpa_answer.update(lpa_answer_params)
        format.html { redirect_to @lpa_answer, notice: t('success_update') }
        format.json { render :show, status: :ok, location: @lpa_answer }
      else
        format.html { render :edit }
        format.json { render json: @lpa_answer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lpa_answers/1
  def destroy
    @lpa_answer.destroy
    respond_to do |format|
      format.html { redirect_to lpa_answers_url, notice: t('success_destroy') }
      format.json { head :no_content }
    end
  end

  private

  # Only allow a trusted parameter "white list" through.
  def lpa_answer_params
    params.require(:lpa_answer).permit(:body, :user_id, :lpa_question_id, :issue_description, :action_taken)
  end
end
