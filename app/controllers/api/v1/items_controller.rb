class Api::V1::ItemsController < ApplicationController
    before_action :doorkeeper_authorize!

    def index
        @items = Item.all()
        render json: @items
    end
end
