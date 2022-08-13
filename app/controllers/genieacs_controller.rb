class GenieacsController < ApplicationController
  def index
    @genieacs = Genieac.all
  end

  def show
    @genieac = Genieac.find(params[:id])
  end

  def new
    @genieac = Genieac.new
  end

  def create
    @genieac = Genieac.new(genieac_param)

    if @genieac.save
      redirect_to @genieac
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @genieac = Genieac.find(params[:id])
  end

  def update
    @genieac = Genieac.find(params[:id])

    if @genieac.update(genieac_param)
      redirect_to @genieac
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @genieac = Genieac.find(params[:id])
    @genieac.destroy

    redirect_to root_path, status: :see_other
  end

  private
    def genieac_param
      params.require(:genieac).permit(:name, :url, :passwd)
    end

end
