class Comment < ApplicationRecord
  belongs_to :user  # tweetsテーブルとのアソシエーション
  belongs_to :prototype

  validates :content, presence: true
end
