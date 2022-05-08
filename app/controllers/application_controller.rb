class ApplicationController < ActionController::Base
  def home
  end

  def job
    MainJob.perform_later

    redirect_to sidekiq_web_path
  end
end
