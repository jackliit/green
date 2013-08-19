class SiteSurveysController < ApplicationController
  before_action :set_site_survey, only: [:show, :edit, :update, :destroy]

  # GET /site_surveys
  # GET /site_surveys.json
  def index
    @site_surveys = SiteSurvey.all
  end

  # GET /site_surveys/1
  # GET /site_surveys/1.json
  def show
  end

  # GET /site_surveys/new
  def new
    @site_survey = SiteSurvey.new
  end

  # GET /site_surveys/1/edit
  def edit
  end

  # POST /site_surveys
  # POST /site_surveys.json
  def create
    @site_survey = SiteSurvey.new(site_survey_params)

    respond_to do |format|
      if @site_survey.save
        format.html { redirect_to @site_survey, notice: 'Site survey was successfully created.' }
        format.json { render action: 'show', status: :created, location: @site_survey }
      else
        format.html { render action: 'new' }
        format.json { render json: @site_survey.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /site_surveys/1
  # PATCH/PUT /site_surveys/1.json
  def update
    respond_to do |format|
      if @site_survey.update(site_survey_params)
        format.html { redirect_to @site_survey, notice: 'Site survey was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @site_survey.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /site_surveys/1
  # DELETE /site_surveys/1.json
  def destroy
    @site_survey.destroy
    respond_to do |format|
      format.html { redirect_to site_surveys_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_site_survey
      @site_survey = SiteSurvey.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def site_survey_params
      params.require(:site_survey).permit(:date, :total, :freeNumber, :halfNumber, :person_id, :party_id)
    end
end
