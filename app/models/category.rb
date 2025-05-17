class Category < ApplicationRecord
    has_ancestry
    validates :name, presence: true #name必須の設定
end
