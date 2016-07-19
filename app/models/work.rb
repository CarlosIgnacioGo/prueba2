class Work < ActiveRecord::Base
  belongs_to :user
  belongs_to :inventory
  
  scope :last_5, -> { order(:created_at => :desc).limit(5)}
  scope :last_n, -> (n){ order(:created_at => :desc).limit(n)}
end
