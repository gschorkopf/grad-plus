class Api::TasksController < ApplicationController
  respond_to :json

  def index
    respond_with Task.all
  end

  def show
    respond_with task
  end

  def create
    respond_with :api, Task.create(task_params)
  end

  def update
    respond_with task.update(task_params)
  end

  def destroy
    respond_with task.destroy
  end

  private

  def task
    Task.find(params[:id])
  end

  def task_params
    params.require(:task).permit(:name)
  end

end
