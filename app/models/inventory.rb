class Inventory < ActiveRecord::Base
  belongs_to :category
  has_one :work, dependent: :destroy

  validates :serie, uniqueness: true
  validates :serie, inclusion: { in: 0..100 }

  after_destroy :addRegistry

  scope :size_n, -> (n){ where(:size => n)}
  scope :inventory_nil, -> (n){ where(:inventory_id => nil)}

  def addRegistry
  	Registry.create(description: "La pieza con serial (especificar Nº #{self.serie} de serie) ha sido borrada")
  end
end
