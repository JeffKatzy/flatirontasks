class TasksController < ApplicationController
  def new
    @task = Task.new
  end

  def show
    @task = Task.find(params[:id])
  end

  def create
    @task = Task.create(task_params)
    redirect_to task_path(@task)
  end

  def index
    @tasks = Task.all
  end

  private 
  
  def task_params
    params.require(:task).permit(:name, :description, :time)
  end
end
