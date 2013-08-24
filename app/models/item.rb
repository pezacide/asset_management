class Item < ActiveRecord::Base
  validates :category,    presence: true,                                       length: {maximum: 20 }
  validates :description, presence: true, uniqueness: true,                     length: {maximum: 50 } 
  validates :location,    presence: true,                                       length: {maximum: 20 }
  VALID_VALUE_REGEX = \$?([0-9]{0,3},)*([0-9]{0,4})\.[0-9]{2}$
  validates :value,       presence: true, format: { with: VALID_VALUE_REGEX },  length: {maximum: 10 }
end
