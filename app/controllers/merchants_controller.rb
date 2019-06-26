class MerchantsController < ApplicationController
  def index
    @merchants = Merchant.all
  end

  def show
    @merchant = Merchant.find(params[:id])
  end

  def new
  end

  def create
    Merchant.create!(merchant_params)
    redirect_to '/merchants'
  end

  private
  def merchant_params
    params.permit(:name, :address, :city, :state, :zipcode)
  end

  # def create
  #   merchant = Merchant.new({
  #     name: params[:merchant][:name],
  #     address: params[:merchant][:address],
  #     city: params[:merchant][:city],
  #     state: params[:merchant][:state],
  #     zipcode: params[:merchant][:zipcode],
  #     })
  #
  #   merchant.save
  #
  #   redirect_to '/merchants'
  # end
  #
  # def edit
  #   @merchant = Merchant.find(params[:id])
  # end
  #
  # def update
  #   merchant = Merchant.find(params[:id])
  #   merchant.update({
  #     title: params[:merchant][:title],
  #     description: params[:merchant][:description]
  #     })
  #   merchant.save
  #   redirect_to "/merchants/#{merchant.id}"
  # end
  #
  # def destroy
  #   Merchant.destroy(params[:id])
  #   redirect_to '/merchants'
  # end
end
