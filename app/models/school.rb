class School < ActiveRecord::Base
  validates :name, :city, :state, presence: true
  validates :name, uniqueness: true

  has_many :tasks, inverse_of: :school, dependent: :destroy
end
