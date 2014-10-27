class Api::SchoolsController < ApplicationController
  respond_to :json

  def index
    respond_with School.all
  end

  def show
    respond_with school
  end

  def create
    respond_with :api, School.create(school_params)
  end

  def update
    respond_with school.update(school_params)
  end

  def destroy
    respond_with school.destroy
  end

  private

  def school
    School.find(params[:id])
  end

  def school_params
    params.require(:school).permit(:name, :city, :state,
      :image_url, :board_pass_rate, :due_date)
  end

end
