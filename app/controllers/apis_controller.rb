class ApisController < ApplicationController
  def index
    render json: Command.all
  end

  def commands
    render json: Command.all
  end

  def tasks
    render json: Task.all
  end

  def nodes
    render json: Node.all
  end

  def models

    if(params[:id])
        render json: Model.find(params[:id])
    else
        render json: Model.all
    end
  end
end
