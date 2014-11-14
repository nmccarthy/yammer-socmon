class IncomingMailsController < ApplicationController
  require 'logger'
  skip_before_filter :verify_authenticity_token

  def create
    Rails.logger.debug "-------------------------Envelope-------------------------"
    Rails.logger.debug params[:envelope][:to] # print the to field to the logs
    Rails.logger.debug "-------------------------Subject-------------------------"
    Rails.logger.debug params[:subject] # print the subject to the logs
    Rails.logger.debug "-------------------------Plain-------------------------"
    Rails.logger.debug params[:plain] # print the decoded body plain to the logs if present
    Rails.logger.debug "-------------------------HTML-------------------------"
    Rails.logger.debug params[:html] # print the html decoded body to the logs if present

    # Do some other stuff with the mail message

    render :text => 'success', :status => 200 # a status of 404 would reject the mail
  end

  def test
    logger.debug "something"
  end

end
