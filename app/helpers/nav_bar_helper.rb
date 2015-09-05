module NavBarHelper
  def confirm_user_login
    if user_signed_in?
      #return "<li><%= link_to "LogOut", destroy_user_session_path ,method: :delete%></li>"
      link_to "LogOut", destroy_user_session_path ,method: :delete
    else
      #return "<li><%= link_to "Login",  user_session_path%></li>"
      link_to "Login",  user_session_path  # <= This is going to generate list
    end
  end
end
