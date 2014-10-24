class SchoolSerializer < ActiveModel::Serializer
  attributes :id, :name, :task_ids

  def task_ids
    object.tasks.pluck(:id)
  end
end
