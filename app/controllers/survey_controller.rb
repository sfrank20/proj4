class SurveyController < ApplicationController
  def show
  	@survey = Survey.find(params[:id])
  	@title = @survey.name
  end
  
  def new
  	@survey = Survey.new
  	@title = "Create Survey"
  end
  
  def create
  	@survey = Survey.new(params[:user])
  	if @survey.save
  		flash[:success] = "Survey successfully created."
  		redirect_to @survey
  	else
  		@title = "Create"
  		render 'new'
  	end
  end
  
  def addq
  	@survey = Survey.find(params[:id])
  	@title = "Add Questions"
  end
  
  def update
  	@survey = Survey.find(params[:id])
  	if @survey.update_attributes(params[:user])
  		flash[:success] = "Survey updated."
  		redirect_to @user
  	else
  		@title = "Add Questions"
  		render 'addq'
  	end
  end

  def index
  	@title = "All Surveys"
  	@surveys = Survey.all
  end
  
  def show
  	@survey = Survey.find(params[:id])
  	@title = @survey.name
  end

end
