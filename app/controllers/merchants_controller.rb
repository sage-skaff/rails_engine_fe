class MerchantsController < ApplicationController
    def index
        @merchants = MerchantFacade.find_merchants
    end

    def show
        @merchant = MerchantFacade.find_merchant_by_id(params[:id])
        @items = MerchantFacade.find_merchant_items(params[:id])
    end

    private

    def merchant_params
        params.permit(:name)
    end
end
