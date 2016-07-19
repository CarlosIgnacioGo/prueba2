class Inventory < ActiveRecord::Base
  belongs_to :category
  has_one :work, dependent: :destroy

  validates :serie, uniqueness: true

  scope :size_n, -> (n){ where(:size => n)}
  scope :inventory_nil, -> (n){ where(:inventory_id => nil)}
end
