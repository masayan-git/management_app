class Lesidences::ApplicationController < ActionController::Base
  layout 'residences/application'
  before_action :authenticate_residence!
end