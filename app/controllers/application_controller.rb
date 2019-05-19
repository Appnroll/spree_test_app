class ApplicationController < ActionController::Base
  helper_method :root_path
  def root_path
   "/u"
  end
end
