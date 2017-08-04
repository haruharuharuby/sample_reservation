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
    when "Reservation details"
      "予約詳細"
    when "Staff service"
      "スタッフ業務"
    when "Reservation input"
      "予約登録"
    when "Customer information"
      "顧客情報"
    when "Edit Customer Information"
      "顧客情報編集"
    when "Reservation history"
      "予約履歴"
    when "Material purchase history"
      "物販購入履歴"
    end
  end
end
