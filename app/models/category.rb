class Category < ApplicationRecord
  # 子や孫も一緒に削除される設定
  has_ancestry orphan_strategy: :destroy

  # バリデーション：名前必須
  validates :name, presence: true
end
