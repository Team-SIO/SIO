class ItemsController < ApplicationController
  def index
  	@items = Item.all
    @cart = current_user.cart
  end
  def show
  	@item = Item.find(params[:id])
  	@disc = @item.discs.take
  end
  def search
    @items = Item.search(params[:search])
  end

  private

   def item_params
    params.require(:item).permit(:item_name,:item_info,:price,:stock, :artist_id, :image)
   end

end