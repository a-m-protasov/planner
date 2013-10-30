class TasksController < ApplicationController
  
  before_filter :find_task, only: [:show, :edit, :update, :destroy]
  
  def index
    @all_tasks = Task.all
  end
  
  def show
    unless @task
      render text: "Page not found", status: 404
    end
  end
  
  def new
    @task = Task.new
  end
  
  def create
    @task = Task.create(params[:task].permit!)
    if @task.errors.empty?
      redirect_to(tasks_path)
    else
      render "new"
    end  
  end
  
  def edit
  end  
  
  def update
    @task.update_attributes(params[:task].permit!)
    if @task.errors.empty?
      redirect_to (tasks_path)
    else
      render "edit"
    end  
  end
  
  def destroy
    redirect_to(tasks_path)  
  end
  
  private
  
  def find_task
    @task = Task.find(params[:id])
  end

end