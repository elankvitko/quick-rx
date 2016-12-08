class ItemsController < ApplicationController
  def create
    @item = Item.new( item_params )

    if request.xhr?
      if @item.save
        link = @item.link

        if link[ 0..6 ] != 'http://'
          @item.update_attributes( link: 'http://' + @item.link )
        end

        render partial: "items_success", layout: false, locals: { item: @item }
      end
    end
  end

  private

    def item_params
      params.require( :item ).permit( :user_id, :pharmacy_id, :name, :link )
    end
end
