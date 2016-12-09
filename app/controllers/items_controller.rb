class ItemsController < ApplicationController
  def create
    @item = Item.new( item_params )
    if request.xhr?
      if @item.save
        link = @item.link

        if link[ 0..6 ] != 'http://'
          if link[ 0..7 ] != 'https://'
            @item.update_attributes( link: 'http://' + @item.link )
          end
        end

        render partial: "items_success", layout: false, locals: { item: @item }
      end
    end
  end

  def update
    @item = Item.find_by( id: item_params[ 'id' ] )

    if item_params[ 'complete' ] == 'Ordered'
      @item.update_attributes( complete: true )
    else
      @item.update_attributes( complete: false )
    end

    redirect_to user_path( current_user )
  end

  private

    def item_params
      params.require( :item ).permit( :id, :user_id, :pharmacy_id, :name, :link, :complete )
    end
end
