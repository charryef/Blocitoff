class ItemsController < ApplicationController
  def index
    @items = Item.all
  end

  def new
    @item = Item.new
    @user = current_user
  end

  def create
    @item = Item.new(item_params)
    @item.user = current_user

    if @item.save
      flash[:success] = "Item was saved."
      redirect_to user_session_path
    else
      flash.now[:alert] = "There was an error saving the item. Please try again."
      render :new
    end
  end

  def destroy
    @item = Item.find(params[:id])

    if @item.destroy
      flash[:notice] = "\"#{@item.name}\" is finally completed."
    else
      flash.now[:alert] = "There was an error deleting the to-do item."
    end

    respond_to do |format|
      format.js
      format.html
      format.json { head :no_content }
    end
  end

  private
  def item_params
    params.require(:item).permit(:name, :user_id)
  end
end
