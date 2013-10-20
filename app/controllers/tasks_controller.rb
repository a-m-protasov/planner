class TasksController < ApplicationController
  def index
    @all_tasks = Task.all
  end
  def new
    @task = Task.new
  end
  def create
    Task.create(params[:task].permit!)
    redirect_to('/')
  end
  def edit
    @task = Task.find params[:id]
  end  
  def update
    @task = Task.find params[:id]
    @task.update_attributes(params[:task].permit!)
    redirect_to ('/')
  end
  def delete
    Task.delete(params[:id])
    redirect_to('/')  
  end
end