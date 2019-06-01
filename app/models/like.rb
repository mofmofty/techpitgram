class Like < ApplicationRecord
  belongs_to :user
  belongs_to :post
  
  #いいね回数を1回に制限するためのバリデーション。user_idとpost_idの組み合わせが重複していないことをチェック。
  validates :user_id, uniqueness: { scope: :post_id }
end
