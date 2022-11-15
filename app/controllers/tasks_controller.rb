class TasksController < ApplicationController
  #select all tasks to display
  def index
     @tasks = Task.all
  end
  # select one task to display
  def show
    @task = Task.find(params[:id])
  end
   #--------------------------------------
   # form to create a new task
  def new
    @task = Task.new
  end
   # select one task to be created in DB
  def create
    @task = Task.new(task_params)
    @task.save
    redirect_to task_path(@task)
  end
  #------------------------------------

  #------------------------------------
  def edit
    @task = Task.find(params[:id])
  end

  def update
    @task = Task.update(task_params)
    redirect_to task_path(@task)
  end
  #------------------------------------

  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    # No need for app/views/restaurants/destroy.html.erb
    redirect_to tasks_path, status: :see_other
  end

end

private

def task_params
  params.require(:task).permit(:title, :details, :completed)
end
