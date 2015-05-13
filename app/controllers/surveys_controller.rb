class SurveysController < ApplicationController

  def survey


  end

  def complete
    survey = Survey.new
    # raise params.inspect
    survey.customer_feeling = params[:customer_feeling]
    survey.customer_product = params[:customer_product]
    survey.customer_issue = params[:customer_issue]
    survey.issue_resolved = params[:issue_resolved]
    survey.save

    redirect_to("http://localhost:3000/advisor/submissioncomplete/#{survey.id}")
  end

  def customer_issue
    @survey = Survey.find_by({:description => params[:description]})
  end

    def customer_feeling
    @survey = Survey.find_by({:customer_feeling => params[:customer_feeling]})
  end

    def customer_product
    @survey = Survey.find_by({:customer_product => params[:customer_product]})
  end

    def issue_resolved
    @survey = Survey.find_by({:issue_resolved => params[:issue_resolved]})
  end

  def submissioncomplete
    @survey = Survey.find_by({:id => params[:id]})
  end

  def index
    @list_of_surveys = Survey.all
  end


end
