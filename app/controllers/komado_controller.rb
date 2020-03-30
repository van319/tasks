class KomadoController < ApplicationController
  def index
    @task = Task.new
  end

  def new
    @task = Task.new
    @task.names << current_name
    @task.tasktexts << current_tasktext
  end

  def create
    @task = Task.new(task_params)
    @task.save
    render :close
  end

 

private
def task_params
  params.require(:task).permit(:name, :tasktext)
end
end