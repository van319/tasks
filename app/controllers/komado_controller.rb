class KomadoController < ApplicationController
  def index
    @task = Task.new
  end

  def new
    @task = Task.new
    @task.tasks << current_task
    @task.tasktexts << current_tasktext
  end

  def create
    @task = Task.new(task_params)
    @task.save
    render :close
  end

  def update
  end


private
def task_params
  params.require(:task).permit(:task, :tasktext )
end
end