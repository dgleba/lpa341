class LpaSurveysController < ApplicationController
before_filter :authenticate_user!
  # before_action :set_lpa_survey, only: [:show, :edit, :update, :destroy]

  #cancancan
  load_and_authorize_resource


  # cancancan..
  #load_and_authorize_resource :lpa_survey

  # GET /lpa_surveys
  def index
    @q = @lpa_surveys.search params[:q]
    @lpa_surveys = @q.result.page(params[:page])
  end

  # GET /lpa_surveys/1
  def show
  end

  # GET /lpa_surveys/new
  def new
  end

  # GET /lpa_surveys/1/edit
  def edit
  end

  # POST /lpa_surveys
  def create
    respond_to do |format|
      if @lpa_survey.save
        format.html { redirect_to @lpa_survey, notice: t('success_create') }
        format.json { render :show, status: :created, location: @lpa_survey }
      else
        format.html { render :new }
        format.json { render json: @lpa_survey.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /lpa_surveys/1
  def update
    respond_to do |format|
      if @lpa_survey.update(lpa_survey_params)
        format.html { redirect_to @lpa_survey, notice: t('success_update') }
        format.json { render :show, status: :ok, location: @lpa_survey }
      else
        format.html { render :edit }
        format.json { render json: @lpa_survey.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lpa_surveys/1
  def destroy
    @lpa_survey.destroy
    respond_to do |format|
      format.html { redirect_to lpa_surveys_url, notice: t('success_destroy') }
      format.json { head :no_content }
    end
  end

  private

  # Only allow a trusted parameter "white list" through.
  def lpa_survey_params
    params.require(:lpa_survey).permit(:title, :user_id, :sort, :active_status)
  end
end
