class NodeconfigsController < ApplicationController
  def index
  end

  def new
    @nodeconfig = Nodeconfig.new
    @nodeid = params[:nodeid]
  end

  def create
    @nodeconfig = Nodeconfig.new(nodeconfig_params)

    if @nodeconfig.save
        @node = Node.find(@nodeconfig.node_id)
        redirect_to(@node)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @nodeconfig = Nodeconfig.find(params[:id])
    @nodeconfig.destroy

    redirect_to root_path, status: :see_other
  end

  private
     def nodeconfig_params
        params.require(:nodeconfig).permit(:name, :node_id, :val)
     end
end
