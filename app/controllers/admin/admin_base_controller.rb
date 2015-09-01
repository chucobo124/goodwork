module Admin
  class AdminBaseController < ApplicationController
    before_action :authenticate_user!
    layout "admin"
  end
end
