class Item < ActiveRecord::Base
  validates :category,    presence: true,                                       length: {maximum: 20 }
  validates :description, presence: true, uniqueness: true,                     length: {maximum: 50 } 
  validates :location,    presence: true,                                       length: {maximum: 20 }
  validates :value,       presence: true,                                       length: {maximum: 10 }
end
