class Task < ActiveRecord::Base
  validates :title, :school, presence: true
  validates :title, uniqueness: true

  belongs_to :school, inverse_of: :tasks
end
