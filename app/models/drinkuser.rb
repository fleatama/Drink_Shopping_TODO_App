class Drinkuser < ApplicationRecord
  belongs_to :user, optional: true
  belongs_to :drink, optional: true
end
