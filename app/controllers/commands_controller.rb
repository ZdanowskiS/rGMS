class CommandsController < ApplicationController
  def index
    @commands = Command.all
  end

  def show
    @command = Command.find(params[:id])
    @tasks = Task.where(:command_id=>@command.id)
  end

  def new
    @command = Command.new
    @models = Model.all 
    @modelid = params[:modelid]
  end

  def create
    @command = Command.new(command_params)

    if @command.save
        @model = Model.find(@command.modelid)
        redirect_to(@model)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @command = Command.find(params[:id])
    @modelid=@command.modelid
    @models = Model.all 
  end

  def update
    @command = Command.find(params[:id])

    if @command.update(command_params)
        @model = Model.find(@command.modelid)
        redirect_to(@model)
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @command = Command.find(params[:id])
    @command.destroy

    redirect_to root_path, status: :see_other
  end

  private
     def command_params
        params.require(:command).permit(:name, :description, :modelid)
     end
end
