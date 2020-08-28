class Apartments::ApplicationController < ActionController::Base
  layout 'apartments/application'
  before_action :authenticate_apartment!
end