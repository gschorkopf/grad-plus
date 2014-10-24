class Task < ActiveRecord::Base
  validates :title, :school, presence: true
  validates_uniqueness_of :title, scope: :school_id

  belongs_to :school, inverse_of: :tasks
end
