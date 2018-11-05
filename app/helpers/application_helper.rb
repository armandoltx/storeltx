module ApplicationHelper
  def login_helper(style = '')
    if current_user
      link_to 'Logout', destroy_user_session_path, method: :delete, class: style
    else
      (link_to "Register", '#', { id: 'registerBtn', class: style }) + " ".html_safe + 
      (link_to "Login" , '#', { id: 'loginBtn',class: style })
    end
  end
end
