class TasksController < ApplicationController
  before_action :authenticate_user!
  skip_before_action :verify_authenticity_token, only: %i[ create ]
  layout "dashboard"

  def index
    id = current_user.id
    @tasks = Todo.where(user_id: id)
  end

  def show 
    @task = Todo.find(params[:taskId])
  end

  def new  
    @task = Todo.new
  end 

  def create 
    @task = Todo.new(task_params)

    @task.user_id = current_user.id


    if @task.save
      redirect_to tasks_path, notice: "Tarea registrada con exito"
    else 
      render :new, status: :unprocessable_entity
    end
  end


  def edit 
    @task = Todo.find(params[:taskId])
  end

  def update 
    @task = Todo.find(params[:taskId])
  


    if  @task.update(task_params)
      redirect_to tasks_path, notice: "Tarea editada con exito"
    else 
      render :edit, status: :unprocessable_entity
    end

  end


  def destroy 
    @task = Todo.find(params[:taskId])


    @task.destroy

    redirect_to tasks_path, notice: "Tarea eliminada con exito"

  end

  def task_params
    params.require(:todo).permit(:title, :description, :status, :photo)
  end
end
