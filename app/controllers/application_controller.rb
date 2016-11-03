class ApplicationController < ActionController::Base
  protect_from_forgery prepend: true
  before_action :set_paper_trail_whodunnit
  before_action :authenticate_user!
end
