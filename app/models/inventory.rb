class Inventory < ActiveRecord::Base
  belongs_to :category
  has_one :work
end
