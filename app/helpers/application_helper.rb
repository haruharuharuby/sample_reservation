module ApplicationHelper

  #ページごとにタイトルを返す
  def full_title(page_title='')
    base_title = "予約システム"
    if page_title.empty?
      base_title
    else
      page_title + "|" + base_title
    end
  end

  def sub_title(page_title='')
    case page_title
    when "Home"
      "予約状況一覧（検索)"
    when "About"
      "インストラクター別集計"
    when "Resevation"
      "予約登録"
    end
  end
end
