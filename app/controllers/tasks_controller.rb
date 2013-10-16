class TasksController < ApplicationController
  def index
    @all_tasks = Task.all
  end
  def new
    @task = Task.new
  end
  def create
    #binding.pry
    Task.create(task_params)
    redirect_to('/')
  end
  def edit
    @task = Task.find params[:id]
  end  
  def update
    @task = Task.find params[:id]
    @task.update_attributes(task_params)
    redirect_to ('/')
  end
protected
  def task_params
    params[:task].permit!
  end
end