class Masters::ApplicationController < ApplicationController
  layout 'masters/application'
  before_action :authenticate_master!
end