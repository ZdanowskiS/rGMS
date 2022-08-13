class TasksController < ApplicationController
  def index
  end

  def new
    @task = Task.new
   # @models = Model.all 
    @commandid = params[:commandid]

  end

  def create
    @task = Task.new(task_params)

    if @task.save
      #redirect_to @command
        @command = Command.find(@task.command_id)
        redirect_to(@command)
    else
      render :new, status: :unprocessable_entity
    end
  end

  private
     def task_params
        params.require(:task).permit(:name, :defval, :description, :dataName, :dataType, :objectName, :command_id)
     end
end
