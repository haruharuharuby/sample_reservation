class User < ApplicationRecord
  has_many :reservation

  def self.search(search) #ここでのself.はUser.を意味する
    if search
      where(['id LIKE ?', "%#{search}%"]) #検索とnameの部分一致を表示。#User.は省略
    else
      all #全て表示。#User.は省略
    end
  end
end
