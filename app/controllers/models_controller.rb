class ModelsController < ApplicationController
  def index
    @models = Model.all
  end
  def show
    @model = Model.find(params[:id])
    @commands = Command.where("modelid":@model.id)
    @myid = params[:myid]
  end
  def new
    @model = Model.new
  end

  def create
    @model = Model.new(model_param)

    if @model.save
      redirect_to @model
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @model = Model.find(params[:id])
  end

  def update
    @model = Model.find(params[:id])

    if @model.update(model_param)
      redirect_to @model
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @model = Model.find(params[:id])
    @model.destroy

    redirect_to root_path, status: :see_other
  end

  private
    def model_param
      params.require(:model).permit(:name, :description)
    end
end
