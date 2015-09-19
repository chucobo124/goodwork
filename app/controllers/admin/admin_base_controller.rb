class Admin::AdminBaseController < ApplicationController
    # example of admin page http://wbpreview.com/previews/WB0077481/
    before_action :authenticate_admin_manager!
    layout "admin"
end
