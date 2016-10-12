class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_filter :check_rack_mini_profiler
  def check_rack_mini_profiler
    if params[:rmp]
      Rack::MiniProfiler.authorize_request
    end
  end
end
