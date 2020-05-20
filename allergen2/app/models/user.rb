class User < ApplicationRecord
    has_many :recipes
    has_many :user_ingredients, dependent: :destroy
    has_many :ingredients, through: :user_ingredients

    validates :name, presence: true, uniqueness: true

end
