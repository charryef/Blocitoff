class ItemsController < ApplicationController

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
    @item = current_user.items.find(params[:id])
    if @item.destroy
      flash[:notice] = "\"#{@item.name.capitalize}\" is finally completed."
      redirect_to root_path
    else
      flash.now[:alert] = "There was an error deleting the to-do item."
    end

    respond_to do |format|
      format.js
      format.html 
    end
  end

  private
  def item_params
    params.require(:item).permit(:name, :user_id)
  end
end
