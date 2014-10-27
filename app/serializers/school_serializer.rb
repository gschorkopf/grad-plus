class SchoolSerializer < ActiveModel::Serializer
  attributes :id, :name, :task_ids, :location,
    :board_pass_rate, :due_date, :image_url

  def location
    "#{object.city}, #{object.state}"
  end

  def task_ids
    object.tasks.pluck(:id)
  end
end
