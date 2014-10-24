class School < ActiveRecord::Base
  validates :name, presence: true
  validates :name, uniqueness: true

  has_many :tasks, inverse_of: :school, dependent: :destroy
end
