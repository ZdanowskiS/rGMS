class NodesController < ApplicationController
  def index
    @nodes = Node.all
  end

  def show
    @node = Node.find(params[:id])
    @customer= Customer.find(@node.customer_id)
    @genieac= Genieac.take(@node.genieac_id)
    @nodeconfigs= Nodeconfig.where("node_id":@node.id)
 #   @model= Model.take(@node.modelid)
    @model= Model.find(@node.model_id)
    @myid = params[:myid]
  end

  def new
    @node = Node.new
    @models = Model.all
    @customers = Customer.all
    @genieacs = Genieac.all
  end

  def create
    @node = Node.new(node_param)

    if @node.save
     # redirect_to @node
        @customer = Customer.find(@node.customer_id)
        redirect_to(@customer)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @node = Node.find(params[:id])

    @models = Model.all
    @customers = Customer.all
    @genieacs = Genieac.all
  end

  def update
    @node = Node.find(params[:id])
    @models = Model.all
    @customers = Customer.all
    @genieacs = Genieac.all

    if @node.update(node_param)
      redirect_to @node
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @node = Node.find(params[:id])
    @node.destroy

    redirect_to root_path, status: :see_other
  end

  private
    def node_param
      params.require(:node).permit(:extid, :name, :serial, :deviceid, :address, :customer_id, :model_id, :genieac_id)
    end

end
