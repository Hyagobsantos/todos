class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  layout :set_layout

  private
  def set_layout
    current_user.present? ? "signed_in" : "application"
  end
end
