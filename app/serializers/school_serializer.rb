class SchoolSerializer < ActiveModel::Serializer
  attributes :id, :name, :task_ids, :board_pass_rate, :due_date,
  :image_url, :city, :state

  def task_ids
    object.tasks.pluck(:id)
  end
end
