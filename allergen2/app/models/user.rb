class User < ApplicationRecord
    has_many :recipes
    has_many :user_ingredients
    has_many :ingredients, through: :user_ingredients
end
