module ApplicationHelper

  #ページごとにタイトルを返す
  def full_title(page_title='')
    base_title = "予約システム"
    if page_title.empty?
      base_title
    else
      page_title
    end
  end

  def sub_title(page_title='')
    case page_title
    when "Log in"
      "ログイン"
    when "Reservation Management"
      "予約管理"
    when "Staff service"
      "スタッフ業務"
    when "Reservation input"
      "予約登録"
    when "Customer Management"
      "顧客管理"
    when "Edit Customer Information"
      "顧客情報編集"
    end
  end
end
