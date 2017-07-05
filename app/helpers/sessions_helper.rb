module SessionsHelper

  # 渡されたユーザーでログインする
 def log_in(admin)
   session[:admin_id] = admin.id
 end

 # 現在ログイン中のユーザーを返す (いる場合)
 def current_admin
   @current_admin ||= Admin.find_by(id: session[:admin_id])
 end

 # ログインしていればtrue、その他ならfalseを返す
  def logged_in?
    !current_admin.nil?
  end

  # ログアウトする
  def log_out
    session.delete(:admin_id)
    @current_admin = nil
  end
end
